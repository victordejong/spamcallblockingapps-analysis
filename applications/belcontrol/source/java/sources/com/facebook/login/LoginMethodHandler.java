package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.login.LoginClient;
import com.google.android.exoplayer2.C0515C;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/login/LoginMethodHandler.class */
public abstract class LoginMethodHandler implements Parcelable {

    /* renamed from: a */
    public Map<String, String> f2560a;

    /* renamed from: b */
    public LoginClient f2561b;

    public LoginMethodHandler(Parcel parcel) {
        this.f2560a = fn0.h0(parcel);
    }

    public LoginMethodHandler(LoginClient loginClient) {
        this.f2561b = loginClient;
    }

    /* renamed from: c */
    public static AccessToken m5043c(Bundle bundle, li0 li0Var, String str) {
        Date u = fn0.u(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        Date u2 = fn0.u(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
        if (fn0.Q(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, null, li0Var, u, new Date(), u2, bundle.getString("graph_domain"));
    }

    /* renamed from: d */
    public static AccessToken m5042d(Collection<String> collection, Bundle bundle, li0 li0Var, String str) {
        Date u = fn0.u(bundle, "expires_in", new Date());
        String string = bundle.getString("access_token");
        Date u2 = fn0.u(bundle, "data_access_expiration_time", new Date(0L));
        String string2 = bundle.getString("granted_scopes");
        if (!fn0.Q(string2)) {
            collection = new ArrayList(Arrays.asList(string2.split(",")));
        }
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList = !fn0.Q(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        String string4 = bundle.getString("expired_scopes");
        ArrayList arrayList2 = !fn0.Q(string4) ? new ArrayList(Arrays.asList(string4.split(","))) : null;
        if (fn0.Q(string)) {
            return null;
        }
        return new AccessToken(string, str, m5039g(bundle.getString("signed_request")), collection, arrayList, arrayList2, li0Var, u, new Date(), u2, bundle.getString("graph_domain"));
    }

    /* renamed from: g */
    public static String m5039g(String str) {
        if (str == null || str.isEmpty()) {
            throw new ri0("Authorization response does not contain the signed_request");
        }
        try {
            String[] split = str.split("\\.");
            if (split.length == 2) {
                return new JSONObject(new String(Base64.decode(split[1], 0), C0515C.UTF8_NAME)).getString("user_id");
            }
        } catch (UnsupportedEncodingException | JSONException e) {
        }
        throw new ri0("Failed to retrieve user_id from signed_request");
    }

    /* renamed from: a */
    public void m5045a(String str, Object obj) {
        if (this.f2560a == null) {
            this.f2560a = new HashMap();
        }
        this.f2560a.put(str, obj == null ? null : obj.toString());
    }

    /* renamed from: b */
    public void m5044b() {
    }

    /* renamed from: e */
    public String m5041e(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", m5040f());
            m5035k(jSONObject);
        } catch (JSONException e) {
            Log.w("LoginMethodHandler", "Error creating client state json: " + e.getMessage());
        }
        return jSONObject.toString();
    }

    /* renamed from: f */
    public abstract String m5040f();

    /* renamed from: h */
    public void m5038h(String str) {
        String m5073a = this.f2561b.m5083q().m5073a();
        xj0 xj0Var = new xj0(this.f2561b.m5091i(), m5073a);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", m5073a);
        xj0Var.j("fb_dialogs_web_login_dialog_complete", (Double) null, bundle);
    }

    /* renamed from: i */
    public boolean m5037i() {
        return false;
    }

    /* renamed from: j */
    public boolean m5036j(int i, int i2, Intent intent) {
        return false;
    }

    /* renamed from: k */
    public void m5035k(JSONObject jSONObject) {
    }

    /* renamed from: l */
    public void m5034l(LoginClient loginClient) {
        if (this.f2561b == null) {
            this.f2561b = loginClient;
            return;
        }
        throw new ri0("Can't set LoginClient if it is already set.");
    }

    /* renamed from: m */
    public abstract boolean m5033m(LoginClient.Request request);

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        fn0.x0(parcel, this.f2560a);
    }
}
