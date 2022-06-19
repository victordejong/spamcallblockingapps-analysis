package com.facebook.login;

import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsClient;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphResponse;
import com.facebook.LoginStatusCallback;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient;
import com.facebook.share.internal.ShareConstants;
import com.telguarder.ApplicationConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/facebook/login/LoginManager.class */
public class LoginManager {
    private static final String EXPRESS_LOGIN_ALLOWED = "express_login_allowed";
    private static final String MANAGE_PERMISSION_PREFIX = "manage";
    private static final Set<String> OTHER_PUBLISH_PERMISSIONS = getOtherPublishPermissions();
    private static final String PREFERENCE_LOGIN_MANAGER = "com.facebook.loginManager";
    private static final String PUBLISH_PERMISSION_PREFIX = "publish";
    private static volatile LoginManager instance;
    private LoginBehavior loginBehavior = LoginBehavior.NATIVE_WITH_FALLBACK;
    private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
    private String authType = ServerProtocol.DIALOG_REREQUEST_AUTH_TYPE;
    private final SharedPreferences sharedPreferences = FacebookSdk.getApplicationContext().getSharedPreferences(PREFERENCE_LOGIN_MANAGER, 0);

    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginManager$ActivityStartActivityDelegate.class */
    public static class ActivityStartActivityDelegate implements StartActivityDelegate {
        private final Activity activity;

        ActivityStartActivityDelegate(Activity activity) {
            Validate.notNull(activity, "activity");
            this.activity = activity;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public Activity getActivityContext() {
            return this.activity;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public void startActivityForResult(Intent intent, int i) {
            this.activity.startActivityForResult(intent, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginManager$FragmentStartActivityDelegate.class */
    public static class FragmentStartActivityDelegate implements StartActivityDelegate {
        private final FragmentWrapper fragment;

        FragmentStartActivityDelegate(FragmentWrapper fragmentWrapper) {
            Validate.notNull(fragmentWrapper, "fragment");
            this.fragment = fragmentWrapper;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public Activity getActivityContext() {
            return this.fragment.getActivity();
        }

        @Override // com.facebook.login.StartActivityDelegate
        public void startActivityForResult(Intent intent, int i) {
            this.fragment.startActivityForResult(intent, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginManager$LoginLoggerHolder.class */
    public static class LoginLoggerHolder {
        private static LoginLogger logger;

        private LoginLoggerHolder() {
        }

        public static LoginLogger getLogger(Context context) {
            synchronized (LoginLoggerHolder.class) {
                if (context == null) {
                    try {
                        context = FacebookSdk.getApplicationContext();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (context == null) {
                    return null;
                }
                if (logger == null) {
                    logger = new LoginLogger(context, FacebookSdk.getApplicationId());
                }
                return logger;
            }
        }
    }

    public LoginManager() {
        Validate.sdkInitialized();
        if (!FacebookSdk.hasCustomTabsPrefetching || CustomTabUtils.getChromePackage() == null) {
            return;
        }
        CustomTabsClient.bindCustomTabsService(FacebookSdk.getApplicationContext(), "com.android.chrome", new CustomTabPrefetchHelper());
        CustomTabsClient.connectAndInitialize(FacebookSdk.getApplicationContext(), FacebookSdk.getApplicationContext().getPackageName());
    }

    static LoginResult computeLoginResult(LoginClient.Request request, AccessToken accessToken) {
        Set<String> permissions2 = request.getPermissions();
        HashSet hashSet = new HashSet(accessToken.getPermissions());
        if (request.isRerequest()) {
            hashSet.retainAll(permissions2);
        }
        HashSet hashSet2 = new HashSet(permissions2);
        hashSet2.removeAll(hashSet);
        return new LoginResult(accessToken, hashSet, hashSet2);
    }

    private LoginClient.Request createLoginRequestFromResponse(GraphResponse graphResponse) {
        Validate.notNull(graphResponse, "response");
        AccessToken accessToken = graphResponse.getRequest().getAccessToken();
        return createLoginRequest(accessToken != null ? accessToken.getPermissions() : null);
    }

    private void finishLogin(AccessToken accessToken, LoginClient.Request request, FacebookException facebookException, boolean z, FacebookCallback<LoginResult> facebookCallback) {
        if (accessToken != null) {
            AccessToken.setCurrentAccessToken(accessToken);
            Profile.fetchProfileForCurrentAccessToken();
        }
        if (facebookCallback != null) {
            LoginResult computeLoginResult = accessToken != null ? computeLoginResult(request, accessToken) : null;
            if (z || (computeLoginResult != null && computeLoginResult.getRecentlyGrantedPermissions().size() == 0)) {
                facebookCallback.onCancel();
            } else if (facebookException != null) {
                facebookCallback.onError(facebookException);
            } else if (accessToken == null) {
            } else {
                setExpressLoginStatus(true);
                facebookCallback.onSuccess(computeLoginResult);
            }
        }
    }

    static Map<String, String> getExtraDataFromIntent(Intent intent) {
        LoginClient.Result result;
        if (intent == null || (result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result")) == null) {
            return null;
        }
        return result.extraData;
    }

    public static LoginManager getInstance() {
        if (instance == null) {
            synchronized (LoginManager.class) {
                try {
                    if (instance == null) {
                        instance = new LoginManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private static Set<String> getOtherPublishPermissions() {
        return Collections.unmodifiableSet(new HashSet<String>() { // from class: com.facebook.login.LoginManager.2
            {
                add("ads_management");
                add("create_event");
                add("rsvp_event");
            }
        });
    }

    public static void handleLoginStatusError(String str, String str2, String str3, LoginLogger loginLogger, LoginStatusCallback loginStatusCallback) {
        FacebookException facebookException = new FacebookException(str + ": " + str2);
        loginLogger.logLoginStatusError(str3, facebookException);
        loginStatusCallback.onError(facebookException);
    }

    private boolean isExpressLoginAllowed() {
        return this.sharedPreferences.getBoolean(EXPRESS_LOGIN_ALLOWED, true);
    }

    public static boolean isPublishPermission(String str) {
        return str != null && (str.startsWith(PUBLISH_PERMISSION_PREFIX) || str.startsWith(MANAGE_PERMISSION_PREFIX) || OTHER_PUBLISH_PERMISSIONS.contains(str));
    }

    private void logCompleteLogin(Context context, LoginClient.Result.Code code, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        LoginLogger logger = LoginLoggerHolder.getLogger(context);
        if (logger == null) {
            return;
        }
        if (request == null) {
            logger.logUnexpectedError("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("try_login_activity", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        logger.logCompleteLogin(request.getAuthId(), hashMap, code, map, exc);
    }

    private void logInWithPublishPermissions(FragmentWrapper fragmentWrapper, Collection<String> collection) {
        validatePublishPermissions(collection);
        logIn(fragmentWrapper, collection);
    }

    private void logInWithReadPermissions(FragmentWrapper fragmentWrapper, Collection<String> collection) {
        validateReadPermissions(collection);
        logIn(fragmentWrapper, collection);
    }

    private void logStartLogin(Context context, LoginClient.Request request) {
        LoginLogger logger = LoginLoggerHolder.getLogger(context);
        if (logger == null || request == null) {
            return;
        }
        logger.logStartLogin(request);
    }

    private void reauthorizeDataAccess(FragmentWrapper fragmentWrapper) {
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createReauthorizeRequest());
    }

    private void resolveError(FragmentWrapper fragmentWrapper, GraphResponse graphResponse) {
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createLoginRequestFromResponse(graphResponse));
    }

    private boolean resolveIntent(Intent intent) {
        boolean z = false;
        if (FacebookSdk.getApplicationContext().getPackageManager().resolveActivity(intent, 0) != null) {
            z = true;
        }
        return z;
    }

    private void retrieveLoginStatusImpl(Context context, final LoginStatusCallback loginStatusCallback, long j) {
        final String applicationId = FacebookSdk.getApplicationId();
        final String uuid = UUID.randomUUID().toString();
        final LoginLogger loginLogger = new LoginLogger(context, applicationId);
        if (!isExpressLoginAllowed()) {
            loginLogger.logLoginStatusFailure(uuid);
            loginStatusCallback.onFailure();
            return;
        }
        LoginStatusClient loginStatusClient = new LoginStatusClient(context, applicationId, uuid, FacebookSdk.getGraphApiVersion(), j);
        loginStatusClient.setCompletedListener(new PlatformServiceClient.CompletedListener() { // from class: com.facebook.login.LoginManager.4
            @Override // com.facebook.internal.PlatformServiceClient.CompletedListener
            public void completed(Bundle bundle) {
                if (bundle == null) {
                    loginLogger.logLoginStatusFailure(uuid);
                    loginStatusCallback.onFailure();
                    return;
                }
                String string = bundle.getString(NativeProtocol.STATUS_ERROR_TYPE);
                String string2 = bundle.getString(NativeProtocol.STATUS_ERROR_DESCRIPTION);
                if (string != null) {
                    LoginManager.handleLoginStatusError(string, string2, uuid, loginLogger, loginStatusCallback);
                    return;
                }
                String string3 = bundle.getString(NativeProtocol.EXTRA_ACCESS_TOKEN);
                Date bundleLongAsDate = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_EXPIRES_SECONDS_SINCE_EPOCH, new Date(0L));
                ArrayList<String> stringArrayList = bundle.getStringArrayList(NativeProtocol.EXTRA_PERMISSIONS);
                String string4 = bundle.getString(NativeProtocol.RESULT_ARGS_SIGNED_REQUEST);
                String string5 = bundle.getString(NativeProtocol.RESULT_ARGS_GRAPH_DOMAIN);
                Date bundleLongAsDate2 = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
                String str = null;
                if (!Utility.isNullOrEmpty(string4)) {
                    str = LoginMethodHandler.getUserIDFromSignedRequest(string4);
                }
                if (Utility.isNullOrEmpty(string3) || stringArrayList == null || stringArrayList.isEmpty() || Utility.isNullOrEmpty(str)) {
                    loginLogger.logLoginStatusFailure(uuid);
                    loginStatusCallback.onFailure();
                    return;
                }
                AccessToken accessToken = new AccessToken(string3, applicationId, str, stringArrayList, null, null, null, bundleLongAsDate, null, bundleLongAsDate2, string5);
                AccessToken.setCurrentAccessToken(accessToken);
                Profile.fetchProfileForCurrentAccessToken();
                loginLogger.logLoginStatusSuccess(uuid);
                loginStatusCallback.onCompleted(accessToken);
            }
        });
        loginLogger.logLoginStatusStart(uuid);
        if (loginStatusClient.start()) {
            return;
        }
        loginLogger.logLoginStatusFailure(uuid);
        loginStatusCallback.onFailure();
    }

    private void setExpressLoginStatus(boolean z) {
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        edit.putBoolean(EXPRESS_LOGIN_ALLOWED, z);
        edit.apply();
    }

    private void startLogin(StartActivityDelegate startActivityDelegate, LoginClient.Request request) throws FacebookException {
        logStartLogin(startActivityDelegate.getActivityContext(), request);
        CallbackManagerImpl.registerStaticCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.login.LoginManager.3
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public boolean onActivityResult(int i, Intent intent) {
                return LoginManager.this.onActivityResult(i, intent);
            }
        });
        if (tryFacebookActivity(startActivityDelegate, request)) {
            return;
        }
        FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
        logCompleteLogin(startActivityDelegate.getActivityContext(), LoginClient.Result.Code.ERROR, null, facebookException, false, request);
        throw facebookException;
    }

    private boolean tryFacebookActivity(StartActivityDelegate startActivityDelegate, LoginClient.Request request) {
        Intent facebookActivityIntent = getFacebookActivityIntent(request);
        if (!resolveIntent(facebookActivityIntent)) {
            return false;
        }
        try {
            startActivityDelegate.startActivityForResult(facebookActivityIntent, LoginClient.getLoginRequestCode());
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    private void validatePublishPermissions(Collection<String> collection) {
        if (collection == null) {
            return;
        }
        for (String str : collection) {
            if (!isPublishPermission(str)) {
                throw new FacebookException(String.format("Cannot pass a read permission (%s) to a request for publish authorization", str));
            }
        }
    }

    private void validateReadPermissions(Collection<String> collection) {
        if (collection == null) {
            return;
        }
        for (String str : collection) {
            if (isPublishPermission(str)) {
                throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", str));
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.facebook.login.LoginBehavior, java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public LoginClient.Request createLoginRequest(Collection<String> collection) {
        LoginBehavior loginBehavior = this.loginBehavior;
        ?? hashSet = collection != null ? new HashSet(collection) : new HashSet();
        LoginClient.Request request = new LoginClient.Request(hashSet, Collections.unmodifiableSet(hashSet), this.defaultAudience, this.authType, FacebookSdk.getApplicationId(), UUID.randomUUID().toString());
        request.setRerequest(AccessToken.isCurrentAccessTokenActive());
        return request;
    }

    protected LoginClient.Request createReauthorizeRequest() {
        return new LoginClient.Request(LoginBehavior.DIALOG_ONLY, new HashSet(), this.defaultAudience, "reauthorize", FacebookSdk.getApplicationId(), UUID.randomUUID().toString());
    }

    public String getAuthType() {
        return this.authType;
    }

    public DefaultAudience getDefaultAudience() {
        return this.defaultAudience;
    }

    protected Intent getFacebookActivityIntent(LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(FacebookSdk.getApplicationContext(), FacebookActivity.class);
        intent.setAction(request.getLoginBehavior().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable(ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        return intent;
    }

    public LoginBehavior getLoginBehavior() {
        return this.loginBehavior;
    }

    public void logIn(Activity activity, Collection<String> collection) {
        startLogin(new ActivityStartActivityDelegate(activity), createLoginRequest(collection));
    }

    public void logIn(Fragment fragment, Collection<String> collection) {
        logIn(new FragmentWrapper(fragment), collection);
    }

    public void logIn(androidx.fragment.app.Fragment fragment, Collection<String> collection) {
        logIn(new FragmentWrapper(fragment), collection);
    }

    public void logIn(FragmentWrapper fragmentWrapper, Collection<String> collection) {
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createLoginRequest(collection));
    }

    public void logInWithPublishPermissions(Activity activity, Collection<String> collection) {
        validatePublishPermissions(collection);
        logIn(activity, collection);
    }

    public void logInWithPublishPermissions(Fragment fragment, Collection<String> collection) {
        logInWithPublishPermissions(new FragmentWrapper(fragment), collection);
    }

    public void logInWithPublishPermissions(androidx.fragment.app.Fragment fragment, Collection<String> collection) {
        logInWithPublishPermissions(new FragmentWrapper(fragment), collection);
    }

    public void logInWithReadPermissions(Activity activity, Collection<String> collection) {
        validateReadPermissions(collection);
        logIn(activity, collection);
    }

    public void logInWithReadPermissions(Fragment fragment, Collection<String> collection) {
        logInWithReadPermissions(new FragmentWrapper(fragment), collection);
    }

    public void logInWithReadPermissions(androidx.fragment.app.Fragment fragment, Collection<String> collection) {
        logInWithReadPermissions(new FragmentWrapper(fragment), collection);
    }

    public void logOut() {
        AccessToken.setCurrentAccessToken(null);
        Profile.setCurrentProfile(null);
        setExpressLoginStatus(false);
    }

    boolean onActivityResult(int i, Intent intent) {
        return onActivityResult(i, intent, null);
    }

    boolean onActivityResult(int i, Intent intent, FacebookCallback<LoginResult> facebookCallback) {
        Map<String, String> map;
        LoginClient.Request request;
        AccessToken accessToken;
        LoginClient.Result.Code code = LoginClient.Result.Code.ERROR;
        FacebookAuthorizationException facebookAuthorizationException = null;
        boolean z = false;
        if (intent != null) {
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result != null) {
                LoginClient.Request request2 = result.request;
                code = result.code;
                if (i == -1) {
                    if (result.code == LoginClient.Result.Code.SUCCESS) {
                        accessToken = result.token;
                        facebookAuthorizationException = null;
                    } else {
                        facebookAuthorizationException = new FacebookAuthorizationException(result.errorMessage);
                        accessToken = null;
                    }
                } else if (i == 0) {
                    accessToken = null;
                    z = true;
                    facebookAuthorizationException = null;
                } else {
                    accessToken = null;
                    facebookAuthorizationException = null;
                }
                request = request2;
                map = result.loggingExtras;
            } else {
                accessToken = null;
                map = null;
                request = null;
                z = false;
                facebookAuthorizationException = null;
            }
        } else if (i == 0) {
            code = LoginClient.Result.Code.CANCEL;
            accessToken = null;
            request = null;
            map = null;
            z = true;
        } else {
            accessToken = null;
            request = null;
            map = null;
            z = false;
        }
        FacebookAuthorizationException facebookAuthorizationException2 = facebookAuthorizationException;
        if (facebookAuthorizationException == null) {
            facebookAuthorizationException2 = facebookAuthorizationException;
            if (accessToken == null) {
                facebookAuthorizationException2 = facebookAuthorizationException;
                if (!z) {
                    facebookAuthorizationException2 = new FacebookException("Unexpected call to LoginManager.onActivityResult");
                }
            }
        }
        logCompleteLogin(null, code, map, facebookAuthorizationException2, true, request);
        finishLogin(accessToken, request, facebookAuthorizationException2, z, facebookCallback);
        return true;
    }

    public void reauthorizeDataAccess(Activity activity) {
        startLogin(new ActivityStartActivityDelegate(activity), createReauthorizeRequest());
    }

    public void reauthorizeDataAccess(androidx.fragment.app.Fragment fragment) {
        reauthorizeDataAccess(new FragmentWrapper(fragment));
    }

    public void registerCallback(CallbackManager callbackManager, final FacebookCallback<LoginResult> facebookCallback) {
        if (callbackManager instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) callbackManager).registerCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.login.LoginManager.1
                @Override // com.facebook.internal.CallbackManagerImpl.Callback
                public boolean onActivityResult(int i, Intent intent) {
                    return LoginManager.this.onActivityResult(i, intent, facebookCallback);
                }
            });
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    public void resolveError(Activity activity, GraphResponse graphResponse) {
        startLogin(new ActivityStartActivityDelegate(activity), createLoginRequestFromResponse(graphResponse));
    }

    public void resolveError(Fragment fragment, GraphResponse graphResponse) {
        resolveError(new FragmentWrapper(fragment), graphResponse);
    }

    public void resolveError(androidx.fragment.app.Fragment fragment, GraphResponse graphResponse) {
        resolveError(new FragmentWrapper(fragment), graphResponse);
    }

    public void retrieveLoginStatus(Context context, long j, LoginStatusCallback loginStatusCallback) {
        retrieveLoginStatusImpl(context, loginStatusCallback, j);
    }

    public void retrieveLoginStatus(Context context, LoginStatusCallback loginStatusCallback) {
        retrieveLoginStatus(context, ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY, loginStatusCallback);
    }

    public LoginManager setAuthType(String str) {
        this.authType = str;
        return this;
    }

    public LoginManager setDefaultAudience(DefaultAudience defaultAudience) {
        this.defaultAudience = defaultAudience;
        return this;
    }

    public LoginManager setLoginBehavior(LoginBehavior loginBehavior) {
        this.loginBehavior = loginBehavior;
        return this;
    }

    public void unregisterCallback(CallbackManager callbackManager) {
        if (callbackManager instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) callbackManager).unregisterCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode());
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }
}
