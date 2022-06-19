package com.facebook.share.widget;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.FacebookCallback;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.share.internal.AppInviteDialogFeature;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.AppInviteContent;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/AppInviteDialog.class */
public class AppInviteDialog extends FacebookDialogBase<AppInviteContent, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.AppInvite.toRequestCode();
    private static final String TAG = "AppInviteDialog";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/AppInviteDialog$NativeHandler.class */
    public class NativeHandler extends FacebookDialogBase<AppInviteContent, Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private NativeHandler() {
            super();
            AppInviteDialog.this = r4;
        }

        public boolean canShow(AppInviteContent appInviteContent, boolean z) {
            return false;
        }

        public AppCall createAppCall(final AppInviteContent appInviteContent) {
            AppCall createBaseAppCall = AppInviteDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.widget.AppInviteDialog.NativeHandler.1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getLegacyParameters() {
                    Log.e(AppInviteDialog.TAG, "Attempting to present the AppInviteDialog with an outdated Facebook app on the device");
                    return new Bundle();
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getParameters() {
                    return AppInviteDialog.createParameters(appInviteContent);
                }
            }, AppInviteDialog.getFeature());
            return createBaseAppCall;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/AppInviteDialog$Result.class */
    public static final class Result {
        private final Bundle bundle;

        public Result(Bundle bundle) {
            this.bundle = bundle;
        }

        public Bundle getData() {
            return this.bundle;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/AppInviteDialog$WebFallbackHandler.class */
    private class WebFallbackHandler extends FacebookDialogBase<AppInviteContent, Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private WebFallbackHandler() {
            super();
            AppInviteDialog.this = r4;
        }

        public boolean canShow(AppInviteContent appInviteContent, boolean z) {
            return false;
        }

        public AppCall createAppCall(AppInviteContent appInviteContent) {
            AppCall createBaseAppCall = AppInviteDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForWebFallbackDialog(createBaseAppCall, AppInviteDialog.createParameters(appInviteContent), AppInviteDialog.getFeature());
            return createBaseAppCall;
        }
    }

    @Deprecated
    public AppInviteDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    @Deprecated
    public AppInviteDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    @Deprecated
    public AppInviteDialog(androidx.fragment.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    private AppInviteDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
    }

    @Deprecated
    public static boolean canShow() {
        return false;
    }

    private static boolean canShowNativeDialog() {
        return false;
    }

    private static boolean canShowWebFallback() {
        return false;
    }

    public static Bundle createParameters(AppInviteContent appInviteContent) {
        Bundle bundle = new Bundle();
        bundle.putString(ShareConstants.APPLINK_URL, appInviteContent.getApplinkUrl());
        bundle.putString(ShareConstants.PREVIEW_IMAGE_URL, appInviteContent.getPreviewImageUrl());
        bundle.putString("destination", appInviteContent.getDestination().toString());
        String promotionCode = appInviteContent.getPromotionCode();
        if (promotionCode == null) {
            promotionCode = "";
        }
        String promotionText = appInviteContent.getPromotionText();
        if (!TextUtils.isEmpty(promotionText)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ShareConstants.PROMO_CODE, promotionCode);
                jSONObject.put(ShareConstants.PROMO_TEXT, promotionText);
                bundle.putString(ShareConstants.DEEPLINK_CONTEXT, jSONObject.toString());
                bundle.putString(ShareConstants.PROMO_CODE, promotionCode);
                bundle.putString(ShareConstants.PROMO_TEXT, promotionText);
            } catch (JSONException e) {
                Log.e(TAG, "Json Exception in creating deeplink context");
            }
        }
        return bundle;
    }

    public static DialogFeature getFeature() {
        return AppInviteDialogFeature.APP_INVITES_DIALOG;
    }

    @Deprecated
    public static void show(Activity activity, AppInviteContent appInviteContent) {
        new AppInviteDialog(activity).show(appInviteContent);
    }

    @Deprecated
    public static void show(Fragment fragment, AppInviteContent appInviteContent) {
        show(new FragmentWrapper(fragment), appInviteContent);
    }

    @Deprecated
    public static void show(androidx.fragment.app.Fragment fragment, AppInviteContent appInviteContent) {
        show(new FragmentWrapper(fragment), appInviteContent);
    }

    private static void show(FragmentWrapper fragmentWrapper, AppInviteContent appInviteContent) {
        new AppInviteDialog(fragmentWrapper).show(appInviteContent);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode());
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<AppInviteContent, Result>.ModeHandler> getOrderedModeHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NativeHandler());
        arrayList.add(new WebFallbackHandler());
        return arrayList;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        final ResultProcessor resultProcessor = facebookCallback == null ? null : new ResultProcessor(facebookCallback) { // from class: com.facebook.share.widget.AppInviteDialog.1
            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle) {
                if ("cancel".equalsIgnoreCase(ShareInternalUtility.getNativeDialogCompletionGesture(bundle))) {
                    facebookCallback.onCancel();
                } else {
                    facebookCallback.onSuccess(new Result(bundle));
                }
            }
        };
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.share.widget.AppInviteDialog.2
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public boolean onActivityResult(int i, Intent intent) {
                return ShareInternalUtility.handleActivityResult(AppInviteDialog.this.getRequestCode(), i, intent, resultProcessor);
            }
        });
    }

    @Deprecated
    public void show(AppInviteContent appInviteContent) {
    }
}
