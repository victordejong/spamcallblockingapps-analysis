package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.a.a.a.a.b.a;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTSecAbs;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.h;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.y;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/u.class */
public class u implements TTAdManager {
    private static final Map<Integer, String> f = new HashMap<Integer, String>(12) { // from class: com.bytedance.sdk.openadsdk.core.u.1
        {
            put(1, "abtest");
            put(2, "user_data");
            put(3, "gaid");
            put(4, "apk-sign");
            put(5, "vendor");
            put(6, "model");
            put(7, "user_agent_device");
            put(8, "user_agent_webview");
            put(9, "sys_compiling_time");
            put(10, "ip");
            put(11, "screen_height");
            put(12, "screen_width");
            put(13, "rom_version");
            put(14, "carrier_name");
            put(15, "os_version");
            put(16, "conn_type");
            put(17, "boot");
        }
    };

    /* renamed from: a  reason: collision with root package name */
    String f9102a;

    /* renamed from: b  reason: collision with root package name */
    boolean f9103b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f9104c = false;

    /* renamed from: d  reason: collision with root package name */
    String f9105d = "com.union_test.internationad";
    String e = "5001121";

    private void e(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f9102a)) {
            this.f9102a = str;
            try {
                JSONObject a2 = n.f().a(new JSONObject(str));
                if (a2 != null) {
                    p.a a3 = p.a.a(a2, null, null);
                    if (a3.f9085d == 20000 && a3.h != null && a3.h.b().size() > 0) {
                        boolean z = false;
                        i iVar = a3.h.b().get(0);
                        this.f9103b = af.e(iVar);
                        if (iVar.z() != null) {
                            z = true;
                        }
                        this.f9104c = z;
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public u setAppId(String str) {
        g.b().a(str);
        return this;
    }

    /* renamed from: a */
    public u setPaid(boolean z) {
        g.b().b(z);
        return this;
    }

    /* renamed from: b */
    public u setName(String str) {
        g.b().b(str);
        return this;
    }

    /* renamed from: c */
    public u setKeywords(String str) {
        g.b().c(str);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdNative createAdNative(Context context) {
        g.b().m();
        return new v(context);
    }

    /* renamed from: d */
    public u setData(String str) {
        g.b().d(str);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getBiddingToken() {
        int i;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            String e = n.h().e();
            String f2 = n.h().f();
            if (!(e == null || f2 == null)) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("version", e);
                jSONObject3.put("param", f2);
                jSONObject2.put("abtest", jSONObject3);
            }
            jSONObject2.put("ad_sdk_version", "3.5.0.5");
            jSONObject2.put("package_name", af.d());
            jSONObject2.put("user_data", p.b());
            jSONObject2.put("ts", System.currentTimeMillis() / 1000);
            if (jSONObject2.toString().getBytes().length <= 670) {
                if (n.h().s("gaid")) {
                    jSONObject2.put("gaid", a.a().b());
                }
                Context a2 = n.a();
                jSONObject2.put("apk-sign", s.b(i.a(a2)));
                jSONObject2.put("vendor", Build.MANUFACTURER);
                jSONObject2.put("model", Build.MODEL);
                jSONObject2.put("user_agent_device", af.a());
                jSONObject2.put("user_agent_webview", af.b());
                jSONObject2.put("sys_compiling_time", i.b(a2));
                jSONObject2.put("ip", h.a(true));
                jSONObject2.put("screen_height", ag.d(a2));
                jSONObject2.put("screen_width", ag.c(a2));
                i = 12;
                if (jSONObject2.toString().getBytes().length < 670) {
                    jSONObject2.put("rom_version", y.a());
                    jSONObject2.put("carrier_name", aa.a());
                    jSONObject2.put("os_version", Build.VERSION.RELEASE);
                    jSONObject2.put("conn_type", t.b(a2));
                    StringBuilder sb = new StringBuilder();
                    sb.append(SystemClock.elapsedRealtime());
                    jSONObject2.put("boot", sb.toString());
                    i = f.size();
                }
            } else {
                i = 2;
            }
            while (i > 0 && jSONObject2.toString().getBytes().length > 670) {
                jSONObject2.remove(f.get(Integer.valueOf(i)));
                i--;
            }
            JSONObject a3 = com.bytedance.sdk.openadsdk.utils.a.a(jSONObject2);
            while (true) {
                jSONObject = a3;
                if (i <= 0) {
                    break;
                }
                jSONObject = a3;
                jSONObject = a3;
                if (a3.toString().getBytes().length <= 1024) {
                    break;
                }
                jSONObject2.remove(f.get(Integer.valueOf(i)));
                a3 = com.bytedance.sdk.openadsdk.utils.a.a(jSONObject2);
                i--;
            }
        } catch (Throwable th) {
        }
        q.b("TTAdManagerImpl", "bidding token: " + jSONObject.toString());
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public int getCoppa() {
        return g.b().f();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public int getGdpr() {
        return g.b().g();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getSDKVersion() {
        return "3.5.0.5";
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean isExpressAd(String str, String str2) {
        if (n.h().i(str)) {
            return true;
        }
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        e(str2);
        return this.f9104c;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean isFullScreenVideoAd(String str, String str2) {
        if (n.h().j(str)) {
            return true;
        }
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        e(str2);
        return this.f9103b;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager isUseTextureView(boolean z) {
        g.b().d(z);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean onlyVerityPlayable(String str, int i, String str2, String str3, String str4) {
        if (!this.f9105d.equals(n.a().getPackageName()) || !this.e.equals(g.b().d()) || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC3Proxy", "verityPlayable", String.class, Integer.TYPE, String.class, String.class, String.class);
            if (a2 == null) {
                return true;
            }
            a2.invoke(null, str, Integer.valueOf(i), str2, str3, str4);
            return true;
        } catch (Throwable th) {
            q.b("TTAdManagerImpl", "reward component maybe not exist, pls check", th);
            return true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager openDebugMode() {
        q.b();
        com.bytedance.sdk.adnet.a.c();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void requestPermissionIfNecessary(Context context) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setAllowShowNotifiFromSDK(boolean z) {
        g.b().c(z);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setCoppa(int i) {
        g.b().a(i);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setGdpr(int i) {
        g.b().b(i);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setNeedClearTaskReset(String[] strArr) {
        g.b().a(strArr);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setTTSecAbs(TTSecAbs tTSecAbs) {
        g.b().a(tTSecAbs);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setTitleBarTheme(int i) {
        g.b().d(i);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void showPrivacyProtection() {
        TTDelegateActivity.a();
    }
}
