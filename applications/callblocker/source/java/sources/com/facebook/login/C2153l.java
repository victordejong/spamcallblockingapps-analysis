package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.login.C2141j;
import com.facebook.p094a.C1927m;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.login.l */
/* loaded from: classes-dex2jar.jar:com/facebook/login/l.class */
public class C2153l {

    /* renamed from: a */
    private final C1927m f6324a;

    /* renamed from: b */
    private String f6325b;

    /* renamed from: c */
    private String f6326c;

    public C2153l(Context context, String str) {
        PackageInfo packageInfo;
        this.f6325b = str;
        this.f6324a = new C1927m(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (packageInfo = packageManager.getPackageInfo("com.facebook.katana", 0)) == null) {
                return;
            }
            this.f6326c = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: a */
    static Bundle m15127a(String str) {
        Bundle bundle = new Bundle();
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("0_auth_logger_id", str);
        bundle.putString("3_method", "");
        bundle.putString("2_result", "");
        bundle.putString("5_error_message", "");
        bundle.putString("4_error_code", "");
        bundle.putString("6_extras", "");
        return bundle;
    }

    /* renamed from: a */
    public String m15129a() {
        return this.f6325b;
    }

    /* renamed from: a */
    public void m15128a(C2141j.C2145c c2145c) {
        Bundle m15127a = m15127a(c2145c.m15154e());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("login_behavior", c2145c.m15157b().toString());
            jSONObject.put("request_code", C2141j.m15175d());
            jSONObject.put("permissions", TextUtils.join(",", c2145c.m15160a()));
            jSONObject.put("default_audience", c2145c.m15156c().toString());
            jSONObject.put("isReauthorize", c2145c.m15153f());
            if (this.f6326c != null) {
                jSONObject.put("facebookVersion", this.f6326c);
            }
            m15127a.putString("6_extras", jSONObject.toString());
        } catch (JSONException e) {
        }
        this.f6324a.m15857a("fb_mobile_login_start", (Double) null, m15127a);
    }

    /* renamed from: a */
    public void m15126a(String str, String str2) {
        Bundle m15127a = m15127a(str);
        m15127a.putString("3_method", str2);
        this.f6324a.m15851b("fb_mobile_login_method_start", m15127a);
    }

    /* renamed from: a */
    public void m15125a(String str, String str2, String str3) {
        Bundle m15127a = m15127a("");
        m15127a.putString("2_result", C2141j.C2147d.EnumC2149a.ERROR.m15140a());
        m15127a.putString("5_error_message", str2);
        m15127a.putString("3_method", str3);
        this.f6324a.m15851b(str, m15127a);
    }

    /* renamed from: a */
    public void m15124a(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        Bundle m15127a = m15127a(str);
        if (str3 != null) {
            m15127a.putString("2_result", str3);
        }
        if (str4 != null) {
            m15127a.putString("5_error_message", str4);
        }
        if (str5 != null) {
            m15127a.putString("4_error_code", str5);
        }
        if (map != null && !map.isEmpty()) {
            m15127a.putString("6_extras", new JSONObject(map).toString());
        }
        m15127a.putString("3_method", str2);
        this.f6324a.m15851b("fb_mobile_login_method_complete", m15127a);
    }

    /* renamed from: a */
    public void m15123a(String str, Map<String, String> map, C2141j.C2147d.EnumC2149a enumC2149a, Map<String, String> map2, Exception exc) {
        Bundle m15127a = m15127a(str);
        if (enumC2149a != null) {
            m15127a.putString("2_result", enumC2149a.m15140a());
        }
        if (exc != null && exc.getMessage() != null) {
            m15127a.putString("5_error_message", exc.getMessage());
        }
        JSONObject jSONObject = null;
        if (!map.isEmpty()) {
            jSONObject = new JSONObject(map);
        }
        JSONObject jSONObject2 = jSONObject;
        if (map2 != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                for (Map.Entry<String, String> entry : map2.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                jSONObject2 = jSONObject;
            } catch (JSONException e) {
                jSONObject2 = jSONObject;
            }
        }
        if (jSONObject2 != null) {
            m15127a.putString("6_extras", jSONObject2.toString());
        }
        this.f6324a.m15851b("fb_mobile_login_complete", m15127a);
    }

    /* renamed from: b */
    public void m15122b(String str, String str2) {
        Bundle m15127a = m15127a(str);
        m15127a.putString("3_method", str2);
        this.f6324a.m15851b("fb_mobile_login_method_not_tried", m15127a);
    }

    /* renamed from: c */
    public void m15121c(String str, String str2) {
        m15125a(str, str2, "");
    }
}
