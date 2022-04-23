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
import com.facebook.common.a;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.internal.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
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
    a backgroundProcessingListener;
    boolean checkedInternetPermission;
    int currentHandler;
    Map<String, String> extraData;
    Fragment fragment;
    LoginMethodHandler[] handlersToTry;
    Map<String, String> loggingExtras;
    private f loginLogger;
    private int numActivitiesReturned;
    private int numTotalIntentsFired;
    b onCompletedListener;
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
        private final com.facebook.login.b defaultAudience;
        private String deviceAuthTargetUserId;
        private String deviceRedirectUriString;
        private boolean isRerequest;
        private final d loginBehavior;
        private Set<String> permissions;

        private Request(Parcel parcel) {
            boolean z = false;
            this.isRerequest = false;
            String readString = parcel.readString();
            com.facebook.login.b bVar = null;
            this.loginBehavior = readString != null ? d.valueOf(readString) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.permissions = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.defaultAudience = readString2 != null ? com.facebook.login.b.valueOf(readString2) : bVar;
            this.applicationId = parcel.readString();
            this.authId = parcel.readString();
            this.isRerequest = parcel.readByte() != 0 ? true : z;
            this.deviceRedirectUriString = parcel.readString();
            this.authType = parcel.readString();
            this.deviceAuthTargetUserId = parcel.readString();
        }

        public Request(d dVar, Set<String> set, com.facebook.login.b bVar, String str, String str2, String str3) {
            this.isRerequest = false;
            this.loginBehavior = dVar;
            this.permissions = set == null ? new HashSet<>() : set;
            this.defaultAudience = bVar;
            this.authType = str;
            this.applicationId = str2;
            this.authId = str3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getApplicationId() {
            return this.applicationId;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getAuthId() {
            return this.authId;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getAuthType() {
            return this.authType;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public com.facebook.login.b getDefaultAudience() {
            return this.defaultAudience;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getDeviceAuthTargetUserId() {
            return this.deviceAuthTargetUserId;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getDeviceRedirectUriString() {
            return this.deviceRedirectUriString;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public d getLoginBehavior() {
            return this.loginBehavior;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Set<String> getPermissions() {
            return this.permissions;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasPublishPermission() {
            for (String str : this.permissions) {
                if (g.a(str)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
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

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setPermissions(Set<String> set) {
            af.a((Object) set, "permissions");
            this.permissions = set;
        }

        public void setRerequest(boolean z) {
            this.isRerequest = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            d dVar = this.loginBehavior;
            String str = null;
            parcel.writeString(dVar != null ? dVar.name() : null);
            parcel.writeStringList(new ArrayList(this.permissions));
            com.facebook.login.b bVar = this.defaultAudience;
            if (bVar != null) {
                str = bVar.name();
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
        final a code;
        final String errorCode;
        final String errorMessage;
        public Map<String, String> extraData;
        public Map<String, String> loggingExtras;
        final Request request;
        final AccessToken token;

        /* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient$Result$a.class */
        public enum a {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");
            
            private final String loggingValue;

            a(String str) {
                this.loggingValue = str;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public final String getLoggingValue() {
                return this.loggingValue;
            }
        }

        private Result(Parcel parcel) {
            this.code = a.valueOf(parcel.readString());
            this.token = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.errorMessage = parcel.readString();
            this.errorCode = parcel.readString();
            this.request = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.loggingExtras = ae.a(parcel);
            this.extraData = ae.a(parcel);
        }

        Result(Request request, a aVar, AccessToken accessToken, String str, String str2) {
            af.a(aVar, "code");
            this.request = request;
            this.token = accessToken;
            this.errorMessage = str;
            this.code = aVar;
            this.errorCode = str2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Result createCancelResult(Request request, String str) {
            return new Result(request, a.CANCEL, null, str, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Result createErrorResult(Request request, String str, String str2) {
            return createErrorResult(request, str, str2, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Result createErrorResult(Request request, String str, String str2, String str3) {
            return new Result(request, a.ERROR, null, TextUtils.join(": ", ae.b(str, str2)), str3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Result createTokenResult(Request request, AccessToken accessToken) {
            return new Result(request, a.SUCCESS, accessToken, null, null);
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
            ae.a(parcel, this.loggingExtras);
            ae.a(parcel, this.extraData);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient$a.class */
    public interface a {
        void a();

        void b();
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginClient$b.class */
    public interface b {
        void a(Result result);
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
        this.loggingExtras = ae.a(parcel);
        this.extraData = ae.a(parcel);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getE2E() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    private f getLogger() {
        f fVar = this.loginLogger;
        if (fVar == null || !fVar.a().equals(this.pendingRequest.getApplicationId())) {
            this.loginLogger = new f(getActivity(), this.pendingRequest.getApplicationId());
        }
        return this.loginLogger;
    }

    public static int getLoginRequestCode() {
        return c.EnumC0402c.Login.toRequestCode();
    }

    private void logAuthorizationMethodComplete(String str, Result result, Map<String, String> map) {
        logAuthorizationMethodComplete(str, result.code.getLoggingValue(), result.errorMessage, result.errorCode, map);
    }

    private void logAuthorizationMethodComplete(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.pendingRequest == null) {
            getLogger().a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
            return;
        }
        f logger = getLogger();
        String authId = this.pendingRequest.getAuthId();
        if (!com.facebook.internal.b.b.a.a(logger)) {
            try {
                Bundle a2 = f.a(authId);
                if (str2 != null) {
                    a2.putString("2_result", str2);
                }
                if (str3 != null) {
                    a2.putString("5_error_message", str3);
                }
                if (str4 != null) {
                    a2.putString("4_error_code", str4);
                }
                if (map != null && !map.isEmpty()) {
                    a2.putString("6_extras", new JSONObject(map).toString());
                }
                a2.putString("3_method", str);
                logger.f20077a.c("fb_mobile_login_method_complete", a2);
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, logger);
            }
        }
    }

    private void notifyOnCompleteListener(Result result) {
        b bVar = this.onCompletedListener;
        if (bVar != null) {
            bVar.a(result);
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
        if (request != null) {
            if (this.pendingRequest != null) {
                throw new FacebookException("Attempted to authorize while a request is pending.");
            } else if (!AccessToken.isCurrentAccessTokenActive() || checkInternetPermission()) {
                this.pendingRequest = request;
                this.handlersToTry = getHandlersToTry(request);
                tryNextHandler();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancelCurrentHandler() {
        if (this.currentHandler >= 0) {
            getCurrentHandler().cancel();
        }
    }

    boolean checkInternetPermission() {
        if (this.checkedInternetPermission) {
            return true;
        }
        if (checkPermission("android.permission.INTERNET") != 0) {
            FragmentActivity activity = getActivity();
            complete(Result.createErrorResult(this.pendingRequest, activity.getString(a.f.com_facebook_internet_permission_error_title), activity.getString(a.f.com_facebook_internet_permission_error_message)));
            return false;
        }
        this.checkedInternetPermission = true;
        return true;
    }

    int checkPermission(String str) {
        return getActivity().checkCallingOrSelfPermission(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentActivity getActivity() {
        return this.fragment.getActivity();
    }

    a getBackgroundProcessingListener() {
        return this.backgroundProcessingListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        d loginBehavior = request.getLoginBehavior();
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

    b getOnCompletedListener() {
        return this.onCompletedListener;
    }

    public Request getPendingRequest() {
        return this.pendingRequest;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyBackgroundProcessingStart() {
        a aVar = this.backgroundProcessingListener;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyBackgroundProcessingStop() {
        a aVar = this.backgroundProcessingListener;
        if (aVar != null) {
            aVar.b();
        }
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        this.numActivitiesReturned++;
        if (this.pendingRequest == null) {
            return false;
        }
        if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.f, false)) {
            tryNextHandler();
            return false;
        } else if (!getCurrentHandler().shouldKeepTrackOfMultipleIntents() || intent != null || this.numActivitiesReturned >= this.numTotalIntentsFired) {
            return getCurrentHandler().onActivityResult(i, i2, intent);
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundProcessingListener(a aVar) {
        this.backgroundProcessingListener = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFragment(Fragment fragment) {
        if (this.fragment == null) {
            this.fragment = fragment;
            return;
        }
        throw new FacebookException("Can't set fragment once it is already set.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnCompletedListener(b bVar) {
        this.onCompletedListener = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startOrContinueAuth(Request request) {
        if (!getInProgress()) {
            authorize(request);
        }
    }

    boolean tryCurrentHandler() {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (!currentHandler.needsInternetPermission() || checkInternetPermission()) {
            int tryAuthorize = currentHandler.tryAuthorize(this.pendingRequest);
            this.numActivitiesReturned = 0;
            if (tryAuthorize > 0) {
                f logger = getLogger();
                String authId = this.pendingRequest.getAuthId();
                String nameForLogging = currentHandler.getNameForLogging();
                if (!com.facebook.internal.b.b.a.a(logger)) {
                    try {
                        Bundle a2 = f.a(authId);
                        a2.putString("3_method", nameForLogging);
                        logger.f20077a.c("fb_mobile_login_method_start", a2);
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, logger);
                    }
                }
                this.numTotalIntentsFired = tryAuthorize;
            } else {
                f logger2 = getLogger();
                String authId2 = this.pendingRequest.getAuthId();
                String nameForLogging2 = currentHandler.getNameForLogging();
                if (!com.facebook.internal.b.b.a.a(logger2)) {
                    try {
                        Bundle a3 = f.a(authId2);
                        a3.putString("3_method", nameForLogging2);
                        logger2.f20077a.c("fb_mobile_login_method_not_tried", a3);
                    } catch (Throwable th2) {
                        com.facebook.internal.b.b.a.a(th2, logger2);
                    }
                }
                addLoggingExtra("not_tried", currentHandler.getNameForLogging(), true);
            }
            return tryAuthorize > 0;
        }
        addLoggingExtra("no_internet_permission", "1", false);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tryNextHandler() {
        int i;
        if (this.currentHandler >= 0) {
            logAuthorizationMethodComplete(getCurrentHandler().getNameForLogging(), Reporting.EventType.VIDEO_AD_SKIPPED, null, null, getCurrentHandler().methodLoggingExtras);
        }
        do {
            LoginMethodHandler[] loginMethodHandlerArr = this.handlersToTry;
            if (loginMethodHandlerArr != null && (i = this.currentHandler) < loginMethodHandlerArr.length - 1) {
                this.currentHandler = i + 1;
            } else if (this.pendingRequest != null) {
                completeWithFailure();
                return;
            } else {
                return;
            }
        } while (!tryCurrentHandler());
    }

    void validateSameFbidAndFinish(Result result) {
        Result result2;
        if (result.token != null) {
            AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
            AccessToken accessToken = result.token;
            if (!(currentAccessToken == null || accessToken == null)) {
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
        ae.a(parcel, this.loggingExtras);
        ae.a(parcel, this.extraData);
    }
}
