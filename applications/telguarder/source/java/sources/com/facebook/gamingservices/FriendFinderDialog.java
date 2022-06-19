package com.facebook.gamingservices;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.net.Uri;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphResponse;
import com.facebook.gamingservices.cloudgaming.CloudGameLoginHandler;
import com.facebook.gamingservices.cloudgaming.DaemonRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKMessageEnum;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/FriendFinderDialog.class */
public class FriendFinderDialog extends FacebookDialogBase<Void, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.GamingFriendFinder.toRequestCode();
    private FacebookCallback mCallback;

    /* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/FriendFinderDialog$Result.class */
    public static class Result {
    }

    public FriendFinderDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    public FriendFinderDialog(Fragment fragment) {
        super(new FragmentWrapper(fragment), DEFAULT_REQUEST_CODE);
    }

    public FriendFinderDialog(androidx.fragment.app.Fragment fragment) {
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
        this.mCallback = facebookCallback;
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.gamingservices.FriendFinderDialog.2
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
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        if (currentAccessToken == null || currentAccessToken.isExpired()) {
            throw new FacebookException("Attempted to open GamingServices FriendFinder with an invalid access token");
        }
        String applicationId = currentAccessToken.getApplicationId();
        if (!CloudGameLoginHandler.isRunningInCloud()) {
            startActivityForResult(new Intent("android.intent.action.VIEW", Uri.parse("https://fb.gg/me/friendfinder/" + applicationId)), getRequestCode());
            return;
        }
        Activity activityContext = getActivityContext();
        DaemonRequest.Callback callback = new DaemonRequest.Callback() { // from class: com.facebook.gamingservices.FriendFinderDialog.1
            @Override // com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                if (FriendFinderDialog.this.mCallback != null) {
                    if (graphResponse.getError() != null) {
                        FriendFinderDialog.this.mCallback.onError(new FacebookException(graphResponse.getError().getErrorMessage()));
                    } else {
                        FriendFinderDialog.this.mCallback.onSuccess(new Result());
                    }
                }
            }
        };
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", applicationId);
            jSONObject.put(SDKConstants.PARAM_DEEP_LINK, "FRIEND_FINDER");
            DaemonRequest.executeAsync(activityContext, jSONObject, callback, SDKMessageEnum.OPEN_GAMING_SERVICES_DEEP_LINK);
        } catch (JSONException e) {
            FacebookCallback facebookCallback = this.mCallback;
            if (facebookCallback == null) {
                return;
            }
            facebookCallback.onError(new FacebookException("Couldn't prepare Friend Finder Dialog"));
        }
    }
}
