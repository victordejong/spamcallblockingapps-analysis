package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.facebook.C1803a;
import com.facebook.EnumC1981d;
import com.facebook.FacebookException;
import com.facebook.internal.C2079x;
import com.facebook.login.C2141j;
import com.facebook.p094a.C1927m;
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
/* renamed from: com.facebook.login.n */
/* loaded from: classes-dex2jar.jar:com/facebook/login/n.class */
public abstract class AbstractC2161n implements Parcelable {

    /* renamed from: a */
    Map<String, String> f6339a;

    /* renamed from: b */
    protected C2141j f6340b;

    public AbstractC2161n(Parcel parcel) {
        this.f6339a = C2079x.m15482a(parcel);
    }

    public AbstractC2161n(C2141j c2141j) {
        this.f6340b = c2141j;
    }

    /* renamed from: a */
    public static C1803a m15093a(Bundle bundle, EnumC1981d enumC1981d, String str) {
        C1803a c1803a;
        Date m15483a = C2079x.m15483a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        Date m15483a2 = C2079x.m15483a(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
        if (C2079x.m15472a(string)) {
            c1803a = null;
        } else {
            c1803a = new C1803a(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, null, enumC1981d, m15483a, new Date(), m15483a2, bundle.getString("graph_domain"));
        }
        return c1803a;
    }

    /* renamed from: a */
    public static C1803a m15089a(Collection<String> collection, Bundle bundle, EnumC1981d enumC1981d, String str) {
        Date m15483a = C2079x.m15483a(bundle, "expires_in", new Date());
        String string = bundle.getString("access_token");
        Date m15483a2 = C2079x.m15483a(bundle, "data_access_expiration_time", new Date(0L));
        String string2 = bundle.getString("granted_scopes");
        if (!C2079x.m15472a(string2)) {
            collection = new ArrayList(Arrays.asList(string2.split(",")));
        }
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList = !C2079x.m15472a(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        String string4 = bundle.getString("expired_scopes");
        return C2079x.m15472a(string) ? null : new C1803a(string, str, m15086c(bundle.getString("signed_request")), collection, arrayList, !C2079x.m15472a(string4) ? new ArrayList(Arrays.asList(string4.split(","))) : null, enumC1981d, m15483a, new Date(), m15483a2, bundle.getString("graph_domain"));
    }

    /* renamed from: c */
    static String m15086c(String str) {
        if (str == null || str.isEmpty()) {
            throw new FacebookException("Authorization response does not contain the signed_request");
        }
        try {
            String[] split = str.split("\\.");
            if (split.length == 2) {
                return new JSONObject(new String(Base64.decode(split[1], 0), "UTF-8")).getString("user_id");
            }
        } catch (UnsupportedEncodingException e) {
        } catch (JSONException e2) {
        }
        throw new FacebookException("Failed to retrieve user_id from signed_request");
    }

    /* renamed from: a */
    public abstract String mo15068a();

    /* renamed from: a */
    public String m15091a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", mo15068a());
            mo15088a(jSONObject);
        } catch (JSONException e) {
            Log.w("LoginMethodHandler", "Error creating client state json: " + e.getMessage());
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    public void m15092a(C2141j c2141j) {
        if (this.f6340b != null) {
            throw new FacebookException("Can't set LoginClient if it is already set.");
        }
        this.f6340b = c2141j;
    }

    /* renamed from: a */
    public void m15090a(String str, Object obj) {
        if (this.f6339a == null) {
            this.f6339a = new HashMap();
        }
        this.f6339a.put(str, obj == null ? null : obj.toString());
    }

    /* renamed from: a */
    void mo15088a(JSONObject jSONObject) {
    }

    /* renamed from: a */
    public boolean mo15083a(int i, int i2, Intent intent) {
        return false;
    }

    /* renamed from: a */
    public abstract boolean mo15067a(C2141j.C2145c c2145c);

    /* renamed from: b */
    public void mo15066b() {
    }

    /* renamed from: b */
    public void m15087b(String str) {
        String m15155d = this.f6340b.m15178c().m15155d();
        C1927m c1927m = new C1927m(this.f6340b.m15181b(), m15155d);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", m15155d);
        c1927m.m15857a("fb_dialogs_web_login_dialog_complete", (Double) null, bundle);
    }

    /* renamed from: e */
    public boolean mo15063e() {
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C2079x.m15481a(parcel, this.f6339a);
    }
}
