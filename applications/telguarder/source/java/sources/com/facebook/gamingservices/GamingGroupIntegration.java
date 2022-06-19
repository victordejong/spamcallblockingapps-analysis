package com.facebook.gamingservices;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.net.Uri;
import com.facebook.FacebookCallback;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/GamingGroupIntegration.class */
public class GamingGroupIntegration extends FacebookDialogBase<Void, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.GamingGroupIntegration.toRequestCode();
    private static final String ERROR_KEY = "error";

    /* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/GamingGroupIntegration$Result.class */
    public static class Result {
    }

    public GamingGroupIntegration(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    public GamingGroupIntegration(Fragment fragment) {
        super(new FragmentWrapper(fragment), DEFAULT_REQUEST_CODE);
    }

    public GamingGroupIntegration(androidx.fragment.app.Fragment fragment) {
        super(new FragmentWrapper(fragment), DEFAULT_REQUEST_CODE);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return null;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<Void, Result>.ModeHandler> getOrderedModeHandlers() {
        return null;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.gamingservices.GamingGroupIntegration.1
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public boolean onActivityResult(int i, Intent intent) {
                if (intent == null || !intent.hasExtra("error")) {
                    facebookCallback.onSuccess(new Result());
                    return true;
                }
                facebookCallback.onError(((FacebookRequestError) intent.getParcelableExtra("error")).getException());
                return true;
            }
        });
    }

    public void show() {
        showImpl();
    }

    public void show(Void r3) {
        showImpl();
    }

    protected void showImpl() {
        startActivityForResult(new Intent("android.intent.action.VIEW", Uri.parse("https://fb.gg/me/community/" + FacebookSdk.getApplicationId())), getRequestCode());
    }
}
