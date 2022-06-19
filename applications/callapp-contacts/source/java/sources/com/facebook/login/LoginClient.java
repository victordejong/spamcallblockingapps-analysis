package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.common.C10165a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.C10263c;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient.class */
public class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator<LoginClient>() { // from class: com.facebook.login.LoginClient.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ LoginClient createFromParcel(Parcel parcel) {
            return new LoginClient(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    };
    AbstractC10374a backgroundProcessingListener;
    boolean checkedInternetPermission;
    int currentHandler;
    Map<String, String> extraData;
    Fragment fragment;
    LoginMethodHandler[] handlersToTry;
    Map<String, String> loggingExtras;
    private C10386f loginLogger;
    private int numActivitiesReturned;
    private int numTotalIntentsFired;
    AbstractC10375b onCompletedListener;
    Request pendingRequest;

    /* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient$Request.class */
    public static class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator<Request>() { // from class: com.facebook.login.LoginClient.Request.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Request createFromParcel(Parcel parcel) {
                return new Request(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Request[] newArray(int i) {
                return new Request[i];
            }
        };
        private final String applicationId;
        private final String authId;
        private String authType;
        private final EnumC10380b defaultAudience;
        private String deviceAuthTargetUserId;
        private String deviceRedirectUriString;
        private boolean isRerequest;
        private final EnumC10382d loginBehavior;
        private Set<String> permissions;

        private Request(Parcel parcel) {
            boolean z = false;
            this.isRerequest = false;
            String readString = parcel.readString();
            this.loginBehavior = readString != null ? EnumC10382d.valueOf(readString) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.permissions = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.defaultAudience = readString2 != null ? EnumC10380b.valueOf(readString2) : null;
            this.applicationId = parcel.readString();
            this.authId = parcel.readString();
            this.isRerequest = parcel.readByte() != 0 ? true : z;
            this.deviceRedirectUriString = parcel.readString();
            this.authType = parcel.readString();
            this.deviceAuthTargetUserId = parcel.readString();
        }

        public Request(EnumC10382d enumC10382d, Set<String> set, EnumC10380b enumC10380b, String str, String str2, String str3) {
            this.isRerequest = false;
            this.loginBehavior = enumC10382d;
            this.permissions = set == null ? new HashSet() : set;
            this.defaultAudience = enumC10380b;
            this.authType = str;
            this.applicationId = str2;
            this.authId = str3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getApplicationId() {
            return this.applicationId;
        }

        public String getAuthId() {
            return this.authId;
        }

        public String getAuthType() {
            return this.authType;
        }

        public EnumC10380b getDefaultAudience() {
            return this.defaultAudience;
        }

        public String getDeviceAuthTargetUserId() {
            return this.deviceAuthTargetUserId;
        }

        public String getDeviceRedirectUriString() {
            return this.deviceRedirectUriString;
        }

        public EnumC10382d getLoginBehavior() {
            return this.loginBehavior;
        }

        public Set<String> getPermissions() {
            return this.permissions;
        }

        public boolean hasPublishPermission() {
            for (String str : this.permissions) {
                if (C10388g.m22879a(str)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isRerequest() {
            return this.isRerequest;
        }

        void setAuthType(String str) {
            this.authType = str;
        }

        void setDeviceAuthTargetUserId(String str) {
            this.deviceAuthTargetUserId = str;
        }

        void setDeviceRedirectUriString(String str) {
            this.deviceRedirectUriString = str;
        }

        public void setPermissions(Set<String> set) {
            C10218af.m23179a((Object) set, "permissions");
            this.permissions = set;
        }

        public void setRerequest(boolean z) {
            this.isRerequest = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            EnumC10382d enumC10382d = this.loginBehavior;
            parcel.writeString(enumC10382d != null ? enumC10382d.name() : null);
            parcel.writeStringList(new ArrayList(this.permissions));
            EnumC10380b enumC10380b = this.defaultAudience;
            String str = null;
            if (enumC10380b != null) {
                str = enumC10380b.name();
            }
            parcel.writeString(str);
            parcel.writeString(this.applicationId);
            parcel.writeString(this.authId);
            parcel.writeByte(this.isRerequest ? (byte) 1 : (byte) 0);
            parcel.writeString(this.deviceRedirectUriString);
            parcel.writeString(this.authType);
            parcel.writeString(this.deviceAuthTargetUserId);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient$Result.class */
    public static class Result implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator<Result>() { // from class: com.facebook.login.LoginClient.Result.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Result createFromParcel(Parcel parcel) {
                return new Result(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Result[] newArray(int i) {
                return new Result[i];
            }
        };
        final EnumC10373a code;
        final String errorCode;
        final String errorMessage;
        public Map<String, String> extraData;
        public Map<String, String> loggingExtras;
        final Request request;
        final AccessToken token;

        /* renamed from: com.facebook.login.LoginClient$Result$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient$Result$a.class */
        public enum EnumC10373a {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");
            
            private final String loggingValue;

            EnumC10373a(String str) {
                this.loggingValue = str;
            }

            public final String getLoggingValue() {
                return this.loggingValue;
            }
        }

        private Result(Parcel parcel) {
            this.code = EnumC10373a.valueOf(parcel.readString());
            this.token = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.errorMessage = parcel.readString();
            this.errorCode = parcel.readString();
            this.request = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.loggingExtras = C10213ae.m23241a(parcel);
            this.extraData = C10213ae.m23241a(parcel);
        }

        Result(Request request, EnumC10373a enumC10373a, AccessToken accessToken, String str, String str2) {
            C10218af.m23179a(enumC10373a, "code");
            this.request = request;
            this.token = accessToken;
            this.errorMessage = str;
            this.code = enumC10373a;
            this.errorCode = str2;
        }

        public static Result createCancelResult(Request request, String str) {
            return new Result(request, EnumC10373a.CANCEL, null, str, null);
        }

        public static Result createErrorResult(Request request, String str, String str2) {
            return createErrorResult(request, str, str2, null);
        }

        public static Result createErrorResult(Request request, String str, String str2, String str3) {
            return new Result(request, EnumC10373a.ERROR, null, TextUtils.join(": ", C10213ae.m23204b(str, str2)), str3);
        }

        public static Result createTokenResult(Request request, AccessToken accessToken) {
            return new Result(request, EnumC10373a.SUCCESS, accessToken, null, null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.code.name());
            parcel.writeParcelable(this.token, i);
            parcel.writeString(this.errorMessage);
            parcel.writeString(this.errorCode);
            parcel.writeParcelable(this.request, i);
            C10213ae.m23240a(parcel, this.loggingExtras);
            C10213ae.m23240a(parcel, this.extraData);
        }
    }

    /* renamed from: com.facebook.login.LoginClient$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient$a.class */
    public interface AbstractC10374a {
        /* renamed from: a */
        void mo22893a();

        /* renamed from: b */
        void mo22892b();
    }

    /* renamed from: com.facebook.login.LoginClient$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient$b.class */
    public interface AbstractC10375b {
        /* renamed from: a */
        void mo22894a(Result result);
    }

    public LoginClient(Parcel parcel) {
        this.currentHandler = -1;
        this.numActivitiesReturned = 0;
        this.numTotalIntentsFired = 0;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        this.handlersToTry = new LoginMethodHandler[readParcelableArray.length];
        for (int i = 0; i < readParcelableArray.length; i++) {
            LoginMethodHandler[] loginMethodHandlerArr = this.handlersToTry;
            loginMethodHandlerArr[i] = (LoginMethodHandler) readParcelableArray[i];
            loginMethodHandlerArr[i].setLoginClient(this);
        }
        this.currentHandler = parcel.readInt();
        this.pendingRequest = (Request) parcel.readParcelable(Request.class.getClassLoader());
        this.loggingExtras = C10213ae.m23241a(parcel);
        this.extraData = C10213ae.m23241a(parcel);
    }

    public LoginClient(Fragment fragment) {
        this.currentHandler = -1;
        this.numActivitiesReturned = 0;
        this.numTotalIntentsFired = 0;
        this.fragment = fragment;
    }

    private void addLoggingExtra(String str, String str2, boolean z) {
        if (this.loggingExtras == null) {
            this.loggingExtras = new HashMap();
        }
        String str3 = str2;
        if (this.loggingExtras.containsKey(str)) {
            str3 = str2;
            if (z) {
                str3 = this.loggingExtras.get(str) + "," + str2;
            }
        }
        this.loggingExtras.put(str, str3);
    }

    private void completeWithFailure() {
        complete(Result.createErrorResult(this.pendingRequest, "Login attempt failed.", null));
    }

    public static String getE2E() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    private C10386f getLogger() {
        C10386f c10386f = this.loginLogger;
        if (c10386f == null || !c10386f.m22891a().equals(this.pendingRequest.getApplicationId())) {
            this.loginLogger = new C10386f(getActivity(), this.pendingRequest.getApplicationId());
        }
        return this.loginLogger;
    }

    public static int getLoginRequestCode() {
        return C10263c.EnumC10266c.Login.toRequestCode();
    }

    private void logAuthorizationMethodComplete(String str, Result result, Map<String, String> map) {
        logAuthorizationMethodComplete(str, result.code.getLoggingValue(), result.errorMessage, result.errorCode, map);
    }

    private void logAuthorizationMethodComplete(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.pendingRequest == null) {
            getLogger().m22886a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
            return;
        }
        C10386f logger = getLogger();
        String authId = this.pendingRequest.getAuthId();
        if (C10249a.m23108a(logger)) {
            return;
        }
        try {
            Bundle m22888a = C10386f.m22888a(authId);
            if (str2 != null) {
                m22888a.putString("2_result", str2);
            }
            if (str3 != null) {
                m22888a.putString("5_error_message", str3);
            }
            if (str4 != null) {
                m22888a.putString("4_error_code", str4);
            }
            if (map != null && !map.isEmpty()) {
                m22888a.putString("6_extras", new JSONObject(map).toString());
            }
            m22888a.putString("3_method", str);
            logger.f34015a.m23412c("fb_mobile_login_method_complete", m22888a);
        } catch (Throwable th) {
            C10249a.m23106a(th, logger);
        }
    }

    private void notifyOnCompleteListener(Result result) {
        AbstractC10375b abstractC10375b = this.onCompletedListener;
        if (abstractC10375b != null) {
            abstractC10375b.mo22894a(result);
        }
    }

    void addExtraData(String str, String str2, boolean z) {
        if (this.extraData == null) {
            this.extraData = new HashMap();
        }
        String str3 = str2;
        if (this.extraData.containsKey(str)) {
            str3 = str2;
            if (z) {
                str3 = this.extraData.get(str) + "," + str2;
            }
        }
        this.extraData.put(str, str3);
    }

    void authorize(Request request) {
        if (request == null) {
            return;
        }
        if (this.pendingRequest != null) {
            throw new FacebookException("Attempted to authorize while a request is pending.");
        }
        if (AccessToken.isCurrentAccessTokenActive() && !checkInternetPermission()) {
            return;
        }
        this.pendingRequest = request;
        this.handlersToTry = getHandlersToTry(request);
        tryNextHandler();
    }

    public void cancelCurrentHandler() {
        if (this.currentHandler >= 0) {
            getCurrentHandler().cancel();
        }
    }

    boolean checkInternetPermission() {
        if (this.checkedInternetPermission) {
            return true;
        }
        if (checkPermission("android.permission.INTERNET") == 0) {
            this.checkedInternetPermission = true;
            return true;
        }
        FragmentActivity activity = getActivity();
        complete(Result.createErrorResult(this.pendingRequest, activity.getString(C10165a.C10171f.com_facebook_internet_permission_error_title), activity.getString(C10165a.C10171f.com_facebook_internet_permission_error_message)));
        return false;
    }

    int checkPermission(String str) {
        return getActivity().checkCallingOrSelfPermission(str);
    }

    public void complete(Result result) {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler != null) {
            logAuthorizationMethodComplete(currentHandler.getNameForLogging(), result, currentHandler.methodLoggingExtras);
        }
        Map<String, String> map = this.loggingExtras;
        if (map != null) {
            result.loggingExtras = map;
        }
        Map<String, String> map2 = this.extraData;
        if (map2 != null) {
            result.extraData = map2;
        }
        this.handlersToTry = null;
        this.currentHandler = -1;
        this.pendingRequest = null;
        this.loggingExtras = null;
        this.numActivitiesReturned = 0;
        this.numTotalIntentsFired = 0;
        notifyOnCompleteListener(result);
    }

    public void completeAndValidate(Result result) {
        if (result.token == null || !AccessToken.isCurrentAccessTokenActive()) {
            complete(result);
        } else {
            validateSameFbidAndFinish(result);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FragmentActivity getActivity() {
        return this.fragment.getActivity();
    }

    AbstractC10374a getBackgroundProcessingListener() {
        return this.backgroundProcessingListener;
    }

    public LoginMethodHandler getCurrentHandler() {
        int i = this.currentHandler;
        if (i >= 0) {
            return this.handlersToTry[i];
        }
        return null;
    }

    public Fragment getFragment() {
        return this.fragment;
    }

    protected LoginMethodHandler[] getHandlersToTry(Request request) {
        ArrayList arrayList = new ArrayList();
        EnumC10382d loginBehavior = request.getLoginBehavior();
        if (loginBehavior.allowsGetTokenAuth()) {
            arrayList.add(new GetTokenLoginMethodHandler(this));
        }
        if (loginBehavior.allowsKatanaAuth()) {
            arrayList.add(new KatanaProxyLoginMethodHandler(this));
        }
        if (loginBehavior.allowsFacebookLiteAuth()) {
            arrayList.add(new FacebookLiteLoginMethodHandler(this));
        }
        if (loginBehavior.allowsCustomTabAuth()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (loginBehavior.allowsWebViewAuth()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (loginBehavior.allowsDeviceAuth()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        LoginMethodHandler[] loginMethodHandlerArr = new LoginMethodHandler[arrayList.size()];
        arrayList.toArray(loginMethodHandlerArr);
        return loginMethodHandlerArr;
    }

    boolean getInProgress() {
        return this.pendingRequest != null && this.currentHandler >= 0;
    }

    AbstractC10375b getOnCompletedListener() {
        return this.onCompletedListener;
    }

    public Request getPendingRequest() {
        return this.pendingRequest;
    }

    public void notifyBackgroundProcessingStart() {
        AbstractC10374a abstractC10374a = this.backgroundProcessingListener;
        if (abstractC10374a != null) {
            abstractC10374a.mo22893a();
        }
    }

    public void notifyBackgroundProcessingStop() {
        AbstractC10374a abstractC10374a = this.backgroundProcessingListener;
        if (abstractC10374a != null) {
            abstractC10374a.mo22892b();
        }
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        this.numActivitiesReturned++;
        if (this.pendingRequest != null) {
            if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.f33045f, false)) {
                tryNextHandler();
                return false;
            } else if (getCurrentHandler().shouldKeepTrackOfMultipleIntents() && intent == null && this.numActivitiesReturned < this.numTotalIntentsFired) {
                return false;
            } else {
                return getCurrentHandler().onActivityResult(i, i2, intent);
            }
        }
        return false;
    }

    public void setBackgroundProcessingListener(AbstractC10374a abstractC10374a) {
        this.backgroundProcessingListener = abstractC10374a;
    }

    public void setFragment(Fragment fragment) {
        if (this.fragment == null) {
            this.fragment = fragment;
            return;
        }
        throw new FacebookException("Can't set fragment once it is already set.");
    }

    public void setOnCompletedListener(AbstractC10375b abstractC10375b) {
        this.onCompletedListener = abstractC10375b;
    }

    public void startOrContinueAuth(Request request) {
        if (!getInProgress()) {
            authorize(request);
        }
    }

    boolean tryCurrentHandler() {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler.needsInternetPermission() && !checkInternetPermission()) {
            addLoggingExtra("no_internet_permission", "1", false);
            return false;
        }
        int tryAuthorize = currentHandler.tryAuthorize(this.pendingRequest);
        this.numActivitiesReturned = 0;
        if (tryAuthorize > 0) {
            C10386f logger = getLogger();
            String authId = this.pendingRequest.getAuthId();
            String nameForLogging = currentHandler.getNameForLogging();
            if (!C10249a.m23108a(logger)) {
                try {
                    Bundle m22888a = C10386f.m22888a(authId);
                    m22888a.putString("3_method", nameForLogging);
                    logger.f34015a.m23412c("fb_mobile_login_method_start", m22888a);
                } catch (Throwable th) {
                    C10249a.m23106a(th, logger);
                }
            }
            this.numTotalIntentsFired = tryAuthorize;
        } else {
            C10386f logger2 = getLogger();
            String authId2 = this.pendingRequest.getAuthId();
            String nameForLogging2 = currentHandler.getNameForLogging();
            if (!C10249a.m23108a(logger2)) {
                try {
                    Bundle m22888a2 = C10386f.m22888a(authId2);
                    m22888a2.putString("3_method", nameForLogging2);
                    logger2.f34015a.m23412c("fb_mobile_login_method_not_tried", m22888a2);
                } catch (Throwable th2) {
                    C10249a.m23106a(th2, logger2);
                }
            }
            addLoggingExtra("not_tried", currentHandler.getNameForLogging(), true);
        }
        return tryAuthorize > 0;
    }

    public void tryNextHandler() {
        int i;
        if (this.currentHandler >= 0) {
            logAuthorizationMethodComplete(getCurrentHandler().getNameForLogging(), Reporting.EventType.VIDEO_AD_SKIPPED, null, null, getCurrentHandler().methodLoggingExtras);
        }
        do {
            LoginMethodHandler[] loginMethodHandlerArr = this.handlersToTry;
            if (loginMethodHandlerArr == null || (i = this.currentHandler) >= loginMethodHandlerArr.length - 1) {
                if (this.pendingRequest == null) {
                    return;
                }
                completeWithFailure();
                return;
            }
            this.currentHandler = i + 1;
        } while (!tryCurrentHandler());
    }

    void validateSameFbidAndFinish(Result result) {
        Result result2;
        if (result.token != null) {
            AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
            AccessToken accessToken = result.token;
            if (currentAccessToken != null && accessToken != null) {
                try {
                    if (currentAccessToken.getUserId().equals(accessToken.getUserId())) {
                        result2 = Result.createTokenResult(this.pendingRequest, result.token);
                        complete(result2);
                        return;
                    }
                } catch (Exception e) {
                    complete(Result.createErrorResult(this.pendingRequest, "Caught exception", e.getMessage()));
                    return;
                }
            }
            result2 = Result.createErrorResult(this.pendingRequest, "User logged in as different Facebook user.", null);
            complete(result2);
            return;
        }
        throw new FacebookException("Can't validate without a token");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelableArray(this.handlersToTry, i);
        parcel.writeInt(this.currentHandler);
        parcel.writeParcelable(this.pendingRequest, i);
        C10213ae.m23240a(parcel, this.loggingExtras);
        C10213ae.m23240a(parcel, this.extraData);
    }
}
