package com.facebook.share.widget;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.Utility;
import com.facebook.share.Sharer;
import com.facebook.share.internal.CameraEffectFeature;
import com.facebook.share.internal.LegacyNativeDialogParameters;
import com.facebook.share.internal.NativeDialogParameters;
import com.facebook.share.internal.OpenGraphActionDialogFeature;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareDialogFeature;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.internal.ShareStoryFeature;
import com.facebook.share.internal.WebDialogParameters;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareDialog.class */
public final class ShareDialog extends FacebookDialogBase<ShareContent, Sharer.Result> implements Sharer {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
    private static final String FEED_DIALOG = "feed";
    private static final String TAG = "ShareDialog";
    private static final String WEB_OG_SHARE_DIALOG = "share_open_graph";
    public static final String WEB_SHARE_DIALOG = "share";
    private boolean isAutomaticMode;
    private boolean shouldFailOnDataError;

    /* renamed from: com.facebook.share.widget.ShareDialog$1 */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareDialog$1.class */
    public static /* synthetic */ class C11831 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$share$widget$ShareDialog$Mode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$facebook$share$widget$ShareDialog$Mode = iArr;
            try {
                iArr[Mode.AUTOMATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$facebook$share$widget$ShareDialog$Mode[Mode.WEB.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$facebook$share$widget$ShareDialog$Mode[Mode.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareDialog$CameraEffectHandler.class */
    public class CameraEffectHandler extends FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private CameraEffectHandler() {
            super();
            ShareDialog.this = r4;
        }

        /* synthetic */ CameraEffectHandler(ShareDialog shareDialog, C11831 c11831) {
            this();
        }

        public boolean canShow(ShareContent shareContent, boolean z) {
            return (shareContent instanceof ShareCameraEffectContent) && ShareDialog.canShowNative(shareContent.getClass());
        }

        public AppCall createAppCall(final ShareContent shareContent) {
            ShareContentValidation.validateForNativeShare(shareContent);
            final AppCall createBaseAppCall = ShareDialog.this.createBaseAppCall();
            final boolean shouldFailOnDataError = ShareDialog.this.getShouldFailOnDataError();
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.widget.ShareDialog.CameraEffectHandler.1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getLegacyParameters() {
                    return LegacyNativeDialogParameters.create(createBaseAppCall.getCallId(), shareContent, shouldFailOnDataError);
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getParameters() {
                    return NativeDialogParameters.create(createBaseAppCall.getCallId(), shareContent, shouldFailOnDataError);
                }
            }, ShareDialog.getFeature(shareContent.getClass()));
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public Object getMode() {
            return Mode.NATIVE;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareDialog$FeedHandler.class */
    private class FeedHandler extends FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private FeedHandler() {
            super();
            ShareDialog.this = r4;
        }

        /* synthetic */ FeedHandler(ShareDialog shareDialog, C11831 c11831) {
            this();
        }

        public boolean canShow(ShareContent shareContent, boolean z) {
            return (shareContent instanceof ShareLinkContent) || (shareContent instanceof ShareFeedContent);
        }

        public AppCall createAppCall(ShareContent shareContent) {
            Bundle bundle;
            ShareDialog shareDialog = ShareDialog.this;
            shareDialog.logDialogShare(shareDialog.getActivityContext(), shareContent, Mode.FEED);
            AppCall createBaseAppCall = ShareDialog.this.createBaseAppCall();
            if (shareContent instanceof ShareLinkContent) {
                ShareLinkContent shareLinkContent = (ShareLinkContent) shareContent;
                ShareContentValidation.validateForWebShare(shareLinkContent);
                bundle = WebDialogParameters.createForFeed(shareLinkContent);
            } else {
                bundle = WebDialogParameters.createForFeed((ShareFeedContent) shareContent);
            }
            DialogPresenter.setupAppCallForWebDialog(createBaseAppCall, ShareDialog.FEED_DIALOG, bundle);
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public Object getMode() {
            return Mode.FEED;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareDialog$Mode.class */
    public enum Mode {
        AUTOMATIC,
        NATIVE,
        WEB,
        FEED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareDialog$NativeHandler.class */
    public class NativeHandler extends FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private NativeHandler() {
            super();
            ShareDialog.this = r4;
        }

        /* synthetic */ NativeHandler(ShareDialog shareDialog, C11831 c11831) {
            this();
        }

        public boolean canShow(ShareContent shareContent, boolean z) {
            boolean z2;
            boolean z3 = false;
            if (shareContent != null) {
                z3 = false;
                if (!(shareContent instanceof ShareCameraEffectContent)) {
                    if (shareContent instanceof ShareStoryContent) {
                        z3 = false;
                    } else {
                        if (!z) {
                            boolean canPresentNativeDialogWithFeature = shareContent.getShareHashtag() != null ? DialogPresenter.canPresentNativeDialogWithFeature(ShareDialogFeature.HASHTAG) : true;
                            z2 = canPresentNativeDialogWithFeature;
                            if (shareContent instanceof ShareLinkContent) {
                                z2 = canPresentNativeDialogWithFeature;
                                if (!Utility.isNullOrEmpty(((ShareLinkContent) shareContent).getQuote())) {
                                    z2 = canPresentNativeDialogWithFeature & DialogPresenter.canPresentNativeDialogWithFeature(ShareDialogFeature.LINK_SHARE_QUOTES);
                                }
                            }
                        } else {
                            z2 = true;
                        }
                        z3 = false;
                        if (z2) {
                            z3 = false;
                            if (ShareDialog.canShowNative(shareContent.getClass())) {
                                z3 = true;
                            }
                        }
                    }
                }
            }
            return z3;
        }

        public AppCall createAppCall(final ShareContent shareContent) {
            ShareDialog shareDialog = ShareDialog.this;
            shareDialog.logDialogShare(shareDialog.getActivityContext(), shareContent, Mode.NATIVE);
            ShareContentValidation.validateForNativeShare(shareContent);
            final AppCall createBaseAppCall = ShareDialog.this.createBaseAppCall();
            final boolean shouldFailOnDataError = ShareDialog.this.getShouldFailOnDataError();
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.widget.ShareDialog.NativeHandler.1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getLegacyParameters() {
                    return LegacyNativeDialogParameters.create(createBaseAppCall.getCallId(), shareContent, shouldFailOnDataError);
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getParameters() {
                    return NativeDialogParameters.create(createBaseAppCall.getCallId(), shareContent, shouldFailOnDataError);
                }
            }, ShareDialog.getFeature(shareContent.getClass()));
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public Object getMode() {
            return Mode.NATIVE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareDialog$ShareStoryHandler.class */
    public class ShareStoryHandler extends FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ShareStoryHandler() {
            super();
            ShareDialog.this = r4;
        }

        /* synthetic */ ShareStoryHandler(ShareDialog shareDialog, C11831 c11831) {
            this();
        }

        public boolean canShow(ShareContent shareContent, boolean z) {
            return (shareContent instanceof ShareStoryContent) && ShareDialog.canShowNative(shareContent.getClass());
        }

        public AppCall createAppCall(final ShareContent shareContent) {
            ShareContentValidation.validateForStoryShare(shareContent);
            final AppCall createBaseAppCall = ShareDialog.this.createBaseAppCall();
            final boolean shouldFailOnDataError = ShareDialog.this.getShouldFailOnDataError();
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.widget.ShareDialog.ShareStoryHandler.1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getLegacyParameters() {
                    return LegacyNativeDialogParameters.create(createBaseAppCall.getCallId(), shareContent, shouldFailOnDataError);
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getParameters() {
                    return NativeDialogParameters.create(createBaseAppCall.getCallId(), shareContent, shouldFailOnDataError);
                }
            }, ShareDialog.getFeature(shareContent.getClass()));
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public Object getMode() {
            return Mode.NATIVE;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareDialog$WebShareHandler.class */
    private class WebShareHandler extends FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private WebShareHandler() {
            super();
            ShareDialog.this = r4;
        }

        /* synthetic */ WebShareHandler(ShareDialog shareDialog, C11831 c11831) {
            this();
        }

        private SharePhotoContent createAndMapAttachments(SharePhotoContent sharePhotoContent, UUID uuid) {
            SharePhotoContent.Builder readFrom = new SharePhotoContent.Builder().readFrom(sharePhotoContent);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < sharePhotoContent.getPhotos().size(); i++) {
                SharePhoto sharePhoto = sharePhotoContent.getPhotos().get(i);
                Bitmap bitmap = sharePhoto.getBitmap();
                SharePhoto sharePhoto2 = sharePhoto;
                if (bitmap != null) {
                    NativeAppCallAttachmentStore.Attachment createAttachment = NativeAppCallAttachmentStore.createAttachment(uuid, bitmap);
                    sharePhoto2 = new SharePhoto.Builder().readFrom(sharePhoto).setImageUrl(Uri.parse(createAttachment.getAttachmentUrl())).setBitmap(null).build();
                    arrayList2.add(createAttachment);
                }
                arrayList.add(sharePhoto2);
            }
            readFrom.setPhotos(arrayList);
            NativeAppCallAttachmentStore.addAttachments(arrayList2);
            return readFrom.build();
        }

        private String getActionName(ShareContent shareContent) {
            if ((shareContent instanceof ShareLinkContent) || (shareContent instanceof SharePhotoContent)) {
                return "share";
            }
            if (!(shareContent instanceof ShareOpenGraphContent)) {
                return null;
            }
            return ShareDialog.WEB_OG_SHARE_DIALOG;
        }

        public boolean canShow(ShareContent shareContent, boolean z) {
            return shareContent != null && ShareDialog.canShowWebCheck(shareContent);
        }

        public AppCall createAppCall(ShareContent shareContent) {
            ShareDialog shareDialog = ShareDialog.this;
            shareDialog.logDialogShare(shareDialog.getActivityContext(), shareContent, Mode.WEB);
            AppCall createBaseAppCall = ShareDialog.this.createBaseAppCall();
            ShareContentValidation.validateForWebShare(shareContent);
            DialogPresenter.setupAppCallForWebDialog(createBaseAppCall, getActionName(shareContent), shareContent instanceof ShareLinkContent ? WebDialogParameters.create((ShareLinkContent) shareContent) : shareContent instanceof SharePhotoContent ? WebDialogParameters.create(createAndMapAttachments((SharePhotoContent) shareContent, createBaseAppCall.getCallId())) : WebDialogParameters.create((ShareOpenGraphContent) shareContent));
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public Object getMode() {
            return Mode.WEB;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareDialog(android.app.Activity r5) {
        /*
            r4 = this;
            int r0 = com.facebook.share.widget.ShareDialog.DEFAULT_REQUEST_CODE
            r6 = r0
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            r0 = r4
            r1 = 0
            r0.shouldFailOnDataError = r1
            r0 = r4
            r1 = 1
            r0.isAutomaticMode = r1
            r0 = r6
            com.facebook.share.internal.ShareInternalUtility.registerStaticShareCallback(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.widget.ShareDialog.<init>(android.app.Activity):void");
    }

    public ShareDialog(Activity activity, int i) {
        super(activity, i);
        this.shouldFailOnDataError = false;
        this.isAutomaticMode = true;
        ShareInternalUtility.registerStaticShareCallback(i);
    }

    public ShareDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    public ShareDialog(Fragment fragment, int i) {
        this(new FragmentWrapper(fragment), i);
    }

    public ShareDialog(androidx.fragment.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    public ShareDialog(androidx.fragment.app.Fragment fragment, int i) {
        this(new FragmentWrapper(fragment), i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private ShareDialog(com.facebook.internal.FragmentWrapper r5) {
        /*
            r4 = this;
            int r0 = com.facebook.share.widget.ShareDialog.DEFAULT_REQUEST_CODE
            r6 = r0
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            r0 = r4
            r1 = 0
            r0.shouldFailOnDataError = r1
            r0 = r4
            r1 = 1
            r0.isAutomaticMode = r1
            r0 = r6
            com.facebook.share.internal.ShareInternalUtility.registerStaticShareCallback(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.widget.ShareDialog.<init>(com.facebook.internal.FragmentWrapper):void");
    }

    private ShareDialog(FragmentWrapper fragmentWrapper, int i) {
        super(fragmentWrapper, i);
        this.shouldFailOnDataError = false;
        this.isAutomaticMode = true;
        ShareInternalUtility.registerStaticShareCallback(i);
    }

    public static boolean canShow(Class<? extends ShareContent> cls) {
        return canShowWebTypeCheck(cls) || canShowNative(cls);
    }

    public static boolean canShowNative(Class<? extends ShareContent> cls) {
        DialogFeature feature = getFeature(cls);
        return feature != null && DialogPresenter.canPresentNativeDialogWithFeature(feature);
    }

    public static boolean canShowWebCheck(ShareContent shareContent) {
        if (!canShowWebTypeCheck(shareContent.getClass())) {
            return false;
        }
        if (!(shareContent instanceof ShareOpenGraphContent)) {
            return true;
        }
        try {
            ShareInternalUtility.toJSONObjectForWeb((ShareOpenGraphContent) shareContent);
            return true;
        } catch (Exception e) {
            Utility.logd(TAG, "canShow returned false because the content of the Opem Graph object can't be shared via the web dialog", e);
            return false;
        }
    }

    private static boolean canShowWebTypeCheck(Class<? extends ShareContent> cls) {
        return ShareLinkContent.class.isAssignableFrom(cls) || ShareOpenGraphContent.class.isAssignableFrom(cls) || (SharePhotoContent.class.isAssignableFrom(cls) && AccessToken.isCurrentAccessTokenActive());
    }

    public static DialogFeature getFeature(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return ShareDialogFeature.SHARE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(cls)) {
            return ShareDialogFeature.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(cls)) {
            return ShareDialogFeature.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(cls)) {
            return OpenGraphActionDialogFeature.OG_ACTION_DIALOG;
        }
        if (ShareMediaContent.class.isAssignableFrom(cls)) {
            return ShareDialogFeature.MULTIMEDIA;
        }
        if (ShareCameraEffectContent.class.isAssignableFrom(cls)) {
            return CameraEffectFeature.SHARE_CAMERA_EFFECT;
        }
        if (!ShareStoryContent.class.isAssignableFrom(cls)) {
            return null;
        }
        return ShareStoryFeature.SHARE_STORY_ASSET;
    }

    public void logDialogShare(Context context, ShareContent shareContent, Mode mode) {
        String str;
        if (this.isAutomaticMode) {
            mode = Mode.AUTOMATIC;
        }
        int i = C11831.$SwitchMap$com$facebook$share$widget$ShareDialog$Mode[mode.ordinal()];
        String str2 = i != 1 ? i != 2 ? i != 3 ? "unknown" : AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE : AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_WEB : AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC;
        DialogFeature feature = getFeature(shareContent.getClass());
        if (feature == ShareDialogFeature.SHARE_DIALOG) {
            str = "status";
        } else if (feature == ShareDialogFeature.PHOTOS) {
            str = AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO;
        } else if (feature == ShareDialogFeature.VIDEO) {
            str = "video";
        } else {
            str = "unknown";
            if (feature == OpenGraphActionDialogFeature.OG_ACTION_DIALOG) {
                str = "open_graph";
            }
        }
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(context);
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_show", str2);
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_TYPE, str);
        internalAppEventsLogger.logEventImplicitly("fb_share_dialog_show", bundle);
    }

    public static void show(Activity activity, ShareContent shareContent) {
        new ShareDialog(activity).show(shareContent);
    }

    public static void show(Fragment fragment, ShareContent shareContent) {
        show(new FragmentWrapper(fragment), shareContent);
    }

    public static void show(androidx.fragment.app.Fragment fragment, ShareContent shareContent) {
        show(new FragmentWrapper(fragment), shareContent);
    }

    private static void show(FragmentWrapper fragmentWrapper, ShareContent shareContent) {
        new ShareDialog(fragmentWrapper).show(shareContent);
    }

    public boolean canShow(ShareContent shareContent, Mode mode) {
        Mode mode2 = mode;
        if (mode == Mode.AUTOMATIC) {
            mode2 = BASE_AUTOMATIC_MODE;
        }
        return canShowImpl(shareContent, mode2);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode());
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler> getOrderedModeHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NativeHandler(this, null));
        arrayList.add(new FeedHandler(this, null));
        arrayList.add(new WebShareHandler(this, null));
        arrayList.add(new CameraEffectHandler(this, null));
        arrayList.add(new ShareStoryHandler(this, null));
        return arrayList;
    }

    @Override // com.facebook.share.Sharer
    public boolean getShouldFailOnDataError() {
        return this.shouldFailOnDataError;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<Sharer.Result> facebookCallback) {
        ShareInternalUtility.registerSharerCallback(getRequestCode(), callbackManagerImpl, facebookCallback);
    }

    @Override // com.facebook.share.Sharer
    public void setShouldFailOnDataError(boolean z) {
        this.shouldFailOnDataError = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void show(ShareContent shareContent, Mode mode) {
        boolean z = mode == Mode.AUTOMATIC;
        this.isAutomaticMode = z;
        if (z) {
            mode = BASE_AUTOMATIC_MODE;
        }
        showImpl(shareContent, mode);
    }
}
