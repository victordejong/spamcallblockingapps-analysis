package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.facebook.AccessToken;
import com.facebook.appevents.C2283m;
import com.facebook.internal.C2408g0;
import com.facebook.login.LoginClient;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
import p081h.p154f.EnumC6114c;
/* loaded from: classes-dex2jar.jar:com/facebook/login/LoginMethodHandler.class */
public abstract class LoginMethodHandler implements Parcelable {

    /* renamed from: a */
    public Map<String, String> f3309a;

    /* renamed from: b */
    public LoginClient f3310b;

    public LoginMethodHandler(Parcel parcel) {
        this.f3309a = C2408g0.m34866a(parcel);
    }

    public LoginMethodHandler(LoginClient loginClient) {
        this.f3310b = loginClient;
    }

    /* renamed from: a */
    public static AccessToken m34431a(Bundle bundle, EnumC6114c cVar, String str) {
        Date a = C2408g0.m34867a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        Date a2 = C2408g0.m34867a(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
        if (C2408g0.m34816d(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, null, cVar, a, new Date(), a2);
    }

    /* renamed from: a */
    public static AccessToken m34427a(Collection<String> collection, Bundle bundle, EnumC6114c cVar, String str) throws C6131k {
        Date a = C2408g0.m34867a(bundle, "expires_in", new Date());
        String string = bundle.getString("access_token");
        Date a2 = C2408g0.m34867a(bundle, "data_access_expiration_time", new Date(0L));
        String string2 = bundle.getString("granted_scopes");
        if (!C2408g0.m34816d(string2)) {
            collection = new ArrayList<>(Arrays.asList(string2.split(",")));
        }
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList = !C2408g0.m34816d(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        String string4 = bundle.getString("expired_scopes");
        ArrayList arrayList2 = !C2408g0.m34816d(string4) ? new ArrayList(Arrays.asList(string4.split(","))) : null;
        if (C2408g0.m34816d(string)) {
            return null;
        }
        return new AccessToken(string, str, m34424c(bundle.getString("signed_request")), collection, arrayList, arrayList2, cVar, a, new Date(), a2);
    }

    /* renamed from: c */
    public static String m34424c(String str) throws C6131k {
        if (str == null || str.isEmpty()) {
            throw new C6131k("Authorization response does not contain the signed_request");
        }
        try {
            String[] split = str.split("\\.");
            if (split.length == 2) {
                return new JSONObject(new String(Base64.decode(split[1], 0), "UTF-8")).getString("user_id");
            }
        } catch (UnsupportedEncodingException | JSONException e) {
        }
        throw new C6131k("Failed to retrieve user_id from signed_request");
    }

    /* renamed from: a */
    public String m34429a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", mo34408b());
            mo34426a(jSONObject);
        } catch (JSONException e) {
            String str2 = "Error creating client state json: " + e.getMessage();
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    public void mo34410a() {
    }

    /* renamed from: a */
    public void m34430a(LoginClient loginClient) {
        if (this.f3310b == null) {
            this.f3310b = loginClient;
            return;
        }
        throw new C6131k("Can't set LoginClient if it is already set.");
    }

    /* renamed from: a */
    public void m34428a(String str, Object obj) {
        if (this.f3309a == null) {
            this.f3309a = new HashMap();
        }
        this.f3309a.put(str, obj == null ? null : obj.toString());
    }

    /* renamed from: a */
    public void mo34426a(JSONObject jSONObject) throws JSONException {
    }

    /* renamed from: a */
    public boolean mo34423a(int i, int i2, Intent intent) {
        return false;
    }

    /* renamed from: a */
    public abstract boolean mo34409a(LoginClient.Request request);

    /* renamed from: b */
    public abstract String mo34408b();

    /* renamed from: b */
    public void m34425b(String str) {
        String a = this.f3310b.m34455v().m34450a();
        C2283m mVar = new C2283m(this.f3310b.m34460q(), a);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", a);
        mVar.m35299a("fb_dialogs_web_login_dialog_complete", (Double) null, bundle);
    }

    /* renamed from: c */
    public boolean mo34406c() {
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C2408g0.m34865a(parcel, this.f3309a);
    }
}
