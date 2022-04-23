package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.m;
import com.facebook.internal.b.b.a;
import com.facebook.login.LoginClient;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/f.class */
class f {

    /* renamed from: d  reason: collision with root package name */
    private static final ScheduledExecutorService f20076d = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: a  reason: collision with root package name */
    final m f20077a;

    /* renamed from: b  reason: collision with root package name */
    private String f20078b;

    /* renamed from: c  reason: collision with root package name */
    private String f20079c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context, String str) {
        PackageInfo packageInfo;
        this.f20078b = str;
        this.f20077a = new m(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo("com.facebook.katana", 0)) != null) {
                this.f20079c = packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle a(String str) {
        if (a.a(f.class)) {
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
            a.a(th, f.class);
            return null;
        }
    }

    static /* synthetic */ m a(f fVar) {
        if (a.a(f.class)) {
            return null;
        }
        try {
            return fVar.f20077a;
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    public final String a() {
        if (a.a(this)) {
            return null;
        }
        try {
            return this.f20078b;
        } catch (Throwable th) {
            a.a(th, this);
            return null;
        }
    }

    public final void a(LoginClient.Request request) {
        if (!a.a(this)) {
            try {
                Bundle a2 = a(request.getAuthId());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("login_behavior", request.getLoginBehavior().toString());
                    jSONObject.put("request_code", LoginClient.getLoginRequestCode());
                    jSONObject.put("permissions", TextUtils.join(",", request.getPermissions()));
                    jSONObject.put("default_audience", request.getDefaultAudience().toString());
                    jSONObject.put("isReauthorize", request.isRerequest());
                    String str = this.f20079c;
                    if (str != null) {
                        jSONObject.put("facebookVersion", str);
                    }
                    a2.putString("6_extras", jSONObject.toString());
                } catch (JSONException e) {
                }
                this.f20077a.b("fb_mobile_login_start", a2);
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    public final void a(String str, String str2) {
        if (!a.a(this)) {
            try {
                a(str, str2, "");
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    public final void a(String str, String str2, String str3) {
        if (!a.a(this)) {
            try {
                Bundle a2 = a("");
                a2.putString("2_result", LoginClient.Result.a.ERROR.getLoggingValue());
                a2.putString("5_error_message", str2);
                a2.putString("3_method", str3);
                this.f20077a.c(str, a2);
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    public final void a(String str, Map<String, String> map, LoginClient.Result.a aVar, Map<String, String> map2, Exception exc) {
        if (!a.a(this)) {
            try {
                Bundle a2 = a(str);
                if (aVar != null) {
                    a2.putString("2_result", aVar.getLoggingValue());
                }
                if (!(exc == null || exc.getMessage() == null)) {
                    a2.putString("5_error_message", exc.getMessage());
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
                    a2.putString("6_extras", jSONObject2.toString());
                }
                this.f20077a.c("fb_mobile_login_complete", a2);
                if (aVar == LoginClient.Result.a.SUCCESS && !a.a(this)) {
                    final Bundle a3 = a(str);
                    f20076d.schedule(new Runnable() { // from class: com.facebook.login.f.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!a.a(this)) {
                                try {
                                    f.a(f.this).c("fb_mobile_login_heartbeat", a3);
                                } catch (Throwable th) {
                                    a.a(th, this);
                                }
                            }
                        }
                    }, 5L, TimeUnit.SECONDS);
                }
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }
}
