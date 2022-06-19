package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.EnumC10164c;
import com.facebook.FacebookException;
import com.facebook.appevents.C10097m;
import com.facebook.internal.C10213ae;
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
/* loaded from: classes3-dex2jar.jar:com/facebook/login/LoginMethodHandler.class */
public abstract class LoginMethodHandler implements Parcelable {
    protected LoginClient loginClient;
    Map<String, String> methodLoggingExtras;

    public LoginMethodHandler(Parcel parcel) {
        this.methodLoggingExtras = C10213ae.m23241a(parcel);
    }

    public LoginMethodHandler(LoginClient loginClient) {
        this.loginClient = loginClient;
    }

    public static AccessToken createAccessTokenFromNativeLogin(Bundle bundle, EnumC10164c enumC10164c, String str) {
        Date m23242a = C10213ae.m23242a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        Date m23242a2 = C10213ae.m23242a(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
        if (C10213ae.m23230a(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, null, enumC10164c, m23242a, new Date(), m23242a2, bundle.getString("graph_domain"));
    }

    public static AccessToken createAccessTokenFromWebBundle(Collection<String> collection, Bundle bundle, EnumC10164c enumC10164c, String str) throws FacebookException {
        Date m23242a = C10213ae.m23242a(bundle, AccessToken.EXPIRES_IN_KEY, new Date());
        String string = bundle.getString(AccessToken.ACCESS_TOKEN_KEY);
        Date m23242a2 = C10213ae.m23242a(bundle, AccessToken.DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
        String string2 = bundle.getString("granted_scopes");
        if (!C10213ae.m23230a(string2)) {
            collection = new ArrayList(Arrays.asList(string2.split(",")));
        }
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList = !C10213ae.m23230a(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        String string4 = bundle.getString("expired_scopes");
        ArrayList arrayList2 = !C10213ae.m23230a(string4) ? new ArrayList(Arrays.asList(string4.split(","))) : null;
        if (C10213ae.m23230a(string)) {
            return null;
        }
        return new AccessToken(string, str, getUserIDFromSignedRequest(bundle.getString("signed_request")), collection, arrayList, arrayList2, enumC10164c, m23242a, new Date(), m23242a2, bundle.getString("graph_domain"));
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

    public void addLoggingExtra(String str, Object obj) {
        if (this.methodLoggingExtras == null) {
            this.methodLoggingExtras = new HashMap();
        }
        this.methodLoggingExtras.put(str, obj == null ? null : obj.toString());
    }

    public void cancel() {
    }

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

    public abstract String getNameForLogging();

    public void logWebLoginCompleted(String str) {
        String applicationId = this.loginClient.getPendingRequest().getApplicationId();
        C10097m c10097m = new C10097m(this.loginClient.getActivity(), applicationId);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, applicationId);
        c10097m.m23413b("fb_dialogs_web_login_dialog_complete", bundle);
    }

    public boolean needsInternetPermission() {
        return false;
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    void putChallengeParam(JSONObject jSONObject) throws JSONException {
    }

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

    public abstract int tryAuthorize(LoginClient.Request request);

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C10213ae.m23240a(parcel, this.methodLoggingExtras);
    }
}
