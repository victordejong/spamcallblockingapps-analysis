package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.appevents.m;
import com.facebook.c;
import com.facebook.internal.ae;
import com.facebook.login.LoginClient;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginMethodHandler.class */
public abstract class LoginMethodHandler implements Parcelable {
    protected LoginClient loginClient;
    Map<String, String> methodLoggingExtras;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoginMethodHandler(Parcel parcel) {
        this.methodLoggingExtras = ae.a(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoginMethodHandler(LoginClient loginClient) {
        this.loginClient = loginClient;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessToken createAccessTokenFromNativeLogin(Bundle bundle, c cVar, String str) {
        Date a2 = ae.a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        Date a3 = ae.a(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
        if (ae.a(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, null, cVar, a2, new Date(), a3, bundle.getString("graph_domain"));
    }

    public static AccessToken createAccessTokenFromWebBundle(Collection<String> collection, Bundle bundle, c cVar, String str) throws FacebookException {
        Date a2 = ae.a(bundle, AccessToken.EXPIRES_IN_KEY, new Date());
        String string = bundle.getString(AccessToken.ACCESS_TOKEN_KEY);
        Date a3 = ae.a(bundle, AccessToken.DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
        String string2 = bundle.getString("granted_scopes");
        if (!ae.a(string2)) {
            collection = new ArrayList<>(Arrays.asList(string2.split(",")));
        }
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList = !ae.a(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        String string4 = bundle.getString("expired_scopes");
        ArrayList arrayList2 = !ae.a(string4) ? new ArrayList(Arrays.asList(string4.split(","))) : null;
        if (ae.a(string)) {
            return null;
        }
        return new AccessToken(string, str, getUserIDFromSignedRequest(bundle.getString("signed_request")), collection, arrayList, arrayList2, cVar, a2, new Date(), a3, bundle.getString("graph_domain"));
    }

    static String getUserIDFromSignedRequest(String str) throws FacebookException {
        if (str == null || str.isEmpty()) {
            throw new FacebookException("Authorization response does not contain the signed_request");
        }
        try {
            String[] split = str.split("\\.");
            if (split.length == 2) {
                return new JSONObject(new String(Base64.decode(split[1], 0), "UTF-8")).getString(AccessToken.USER_ID_KEY);
            }
        } catch (UnsupportedEncodingException | JSONException e) {
        }
        throw new FacebookException("Failed to retrieve user_id from signed_request");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addLoggingExtra(String str, Object obj) {
        if (this.methodLoggingExtras == null) {
            this.methodLoggingExtras = new HashMap();
        }
        this.methodLoggingExtras.put(str, obj == null ? null : obj.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancel() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getClientState(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", getNameForLogging());
            putChallengeParam(jSONObject);
        } catch (JSONException e) {
            Log.w("LoginMethodHandler", "Error creating client state json: " + e.getMessage());
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String getNameForLogging();

    /* JADX INFO: Access modifiers changed from: protected */
    public void logWebLoginCompleted(String str) {
        String applicationId = this.loginClient.getPendingRequest().getApplicationId();
        m mVar = new m(this.loginClient.getActivity(), applicationId);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, applicationId);
        mVar.b("fb_dialogs_web_login_dialog_complete", bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean needsInternetPermission() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    void putChallengeParam(JSONObject jSONObject) throws JSONException {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLoginClient(LoginClient loginClient) {
        if (this.loginClient == null) {
            this.loginClient = loginClient;
            return;
        }
        throw new FacebookException("Can't set LoginClient if it is already set.");
    }

    public boolean shouldKeepTrackOfMultipleIntents() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int tryAuthorize(LoginClient.Request request);

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ae.a(parcel, this.methodLoggingExtras);
    }
}
