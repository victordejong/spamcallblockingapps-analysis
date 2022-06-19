package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.C10097m;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.login.LoginClient;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.facebook.login.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/f.class */
public class C10386f {

    /* renamed from: d */
    private static final ScheduledExecutorService f34014d = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: a */
    final C10097m f34015a;

    /* renamed from: b */
    private String f34016b;

    /* renamed from: c */
    private String f34017c;

    public C10386f(Context context, String str) {
        PackageInfo packageInfo;
        this.f34016b = str;
        this.f34015a = new C10097m(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (packageInfo = packageManager.getPackageInfo("com.facebook.katana", 0)) == null) {
                return;
            }
            this.f34017c = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: a */
    public static Bundle m22888a(String str) {
        if (C10249a.m23108a(C10386f.class)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
            bundle.putString("0_auth_logger_id", str);
            bundle.putString("3_method", "");
            bundle.putString("2_result", "");
            bundle.putString("5_error_message", "");
            bundle.putString("4_error_code", "");
            bundle.putString("6_extras", "");
            return bundle;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10386f.class);
            return null;
        }
    }

    /* renamed from: a */
    static /* synthetic */ C10097m m22889a(C10386f c10386f) {
        if (C10249a.m23108a(C10386f.class)) {
            return null;
        }
        try {
            return c10386f.f34015a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10386f.class);
            return null;
        }
    }

    /* renamed from: a */
    public final String m22891a() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return this.f34016b;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: a */
    public final void m22890a(LoginClient.Request request) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            Bundle m22888a = m22888a(request.getAuthId());
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("login_behavior", request.getLoginBehavior().toString());
                jSONObject.put("request_code", LoginClient.getLoginRequestCode());
                jSONObject.put("permissions", TextUtils.join(",", request.getPermissions()));
                jSONObject.put("default_audience", request.getDefaultAudience().toString());
                jSONObject.put("isReauthorize", request.isRerequest());
                String str = this.f34017c;
                if (str != null) {
                    jSONObject.put("facebookVersion", str);
                }
                m22888a.putString("6_extras", jSONObject.toString());
            } catch (JSONException e) {
            }
            this.f34015a.m23413b("fb_mobile_login_start", m22888a);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    public final void m22887a(String str, String str2) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            m22886a(str, str2, "");
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    public final void m22886a(String str, String str2, String str3) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            Bundle m22888a = m22888a("");
            m22888a.putString("2_result", LoginClient.Result.EnumC10373a.ERROR.getLoggingValue());
            m22888a.putString("5_error_message", str2);
            m22888a.putString("3_method", str3);
            this.f34015a.m23412c(str, m22888a);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    public final void m22885a(String str, Map<String, String> map, LoginClient.Result.EnumC10373a enumC10373a, Map<String, String> map2, Exception exc) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            Bundle m22888a = m22888a(str);
            if (enumC10373a != null) {
                m22888a.putString("2_result", enumC10373a.getLoggingValue());
            }
            if (exc != null && exc.getMessage() != null) {
                m22888a.putString("5_error_message", exc.getMessage());
            }
            JSONObject jSONObject = null;
            if (!map.isEmpty()) {
                jSONObject = new JSONObject(map);
            }
            JSONObject jSONObject2 = jSONObject;
            if (map2 != null) {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject == null) {
                    jSONObject3 = new JSONObject();
                }
                try {
                    Iterator<Map.Entry<String, String>> it2 = map2.entrySet().iterator();
                    while (true) {
                        jSONObject2 = jSONObject3;
                        if (!it2.hasNext()) {
                            break;
                        }
                        Map.Entry<String, String> next = it2.next();
                        jSONObject3.put(next.getKey(), next.getValue());
                    }
                } catch (JSONException e) {
                    jSONObject2 = jSONObject3;
                }
            }
            if (jSONObject2 != null) {
                m22888a.putString("6_extras", jSONObject2.toString());
            }
            this.f34015a.m23412c("fb_mobile_login_complete", m22888a);
            if (enumC10373a != LoginClient.Result.EnumC10373a.SUCCESS || C10249a.m23108a(this)) {
                return;
            }
            final Bundle m22888a2 = m22888a(str);
            f34014d.schedule(new Runnable() { // from class: com.facebook.login.f.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        C10386f.m22889a(C10386f.this).m23412c("fb_mobile_login_heartbeat", m22888a2);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            }, 5L, TimeUnit.SECONDS);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
