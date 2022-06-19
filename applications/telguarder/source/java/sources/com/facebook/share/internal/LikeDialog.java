package com.facebook.share.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.facebook.FacebookCallback;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeDialog.class */
public class LikeDialog extends FacebookDialogBase<LikeContent, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode();
    private static final String TAG = "LikeDialog";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeDialog$NativeHandler.class */
    public class NativeHandler extends FacebookDialogBase<LikeContent, Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private NativeHandler() {
            super();
            LikeDialog.this = r4;
        }

        public boolean canShow(LikeContent likeContent, boolean z) {
            return false;
        }

        public AppCall createAppCall(final LikeContent likeContent) {
            AppCall createBaseAppCall = LikeDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.internal.LikeDialog.NativeHandler.1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getLegacyParameters() {
                    Log.e(LikeDialog.TAG, "Attempting to present the Like Dialog with an outdated Facebook app on the device");
                    return new Bundle();
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getParameters() {
                    return LikeDialog.createParameters(likeContent);
                }
            }, LikeDialog.getFeature());
            return createBaseAppCall;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeDialog$Result.class */
    public static final class Result {
        private final Bundle bundle;

        public Result(Bundle bundle) {
            this.bundle = bundle;
        }

        public Bundle getData() {
            return this.bundle;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeDialog$WebFallbackHandler.class */
    private class WebFallbackHandler extends FacebookDialogBase<LikeContent, Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private WebFallbackHandler() {
            super();
            LikeDialog.this = r4;
        }

        public boolean canShow(LikeContent likeContent, boolean z) {
            return false;
        }

        public AppCall createAppCall(LikeContent likeContent) {
            AppCall createBaseAppCall = LikeDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForWebFallbackDialog(createBaseAppCall, LikeDialog.createParameters(likeContent), LikeDialog.getFeature());
            return createBaseAppCall;
        }
    }

    @Deprecated
    public LikeDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    @Deprecated
    public LikeDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    @Deprecated
    public LikeDialog(androidx.fragment.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    @Deprecated
    public LikeDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
    }

    @Deprecated
    public static boolean canShowNativeDialog() {
        return false;
    }

    @Deprecated
    public static boolean canShowWebFallback() {
        return false;
    }

    public static Bundle createParameters(LikeContent likeContent) {
        Bundle bundle = new Bundle();
        bundle.putString("object_id", likeContent.getObjectId());
        bundle.putString("object_type", likeContent.getObjectType());
        return bundle;
    }

    public static DialogFeature getFeature() {
        return LikeDialogFeature.LIKE_DIALOG;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode());
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<LikeContent, Result>.ModeHandler> getOrderedModeHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NativeHandler());
        arrayList.add(new WebFallbackHandler());
        return arrayList;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        final ResultProcessor resultProcessor = facebookCallback == null ? null : new ResultProcessor(facebookCallback) { // from class: com.facebook.share.internal.LikeDialog.1
            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle) {
                facebookCallback.onSuccess(new Result(bundle));
            }
        };
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.LikeDialog.2
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public boolean onActivityResult(int i, Intent intent) {
                return ShareInternalUtility.handleActivityResult(LikeDialog.this.getRequestCode(), i, intent, resultProcessor);
            }
        });
    }

    @Deprecated
    public void show(LikeContent likeContent) {
    }
}
