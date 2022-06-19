package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTSecAbs;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.C4638p;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5432a;
import com.bytedance.sdk.openadsdk.utils.C5433aa;
import com.bytedance.sdk.openadsdk.utils.C5436ad;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5461h;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5487y;
import com.p094a.p095a.p096a.p097a.p099b.C3236a;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.u */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/u.class */
public class C4652u implements TTAdManager {

    /* renamed from: f */
    private static final Map<Integer, String> f17013f = new HashMap<Integer, String>(12) { // from class: com.bytedance.sdk.openadsdk.core.u.1
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

    /* renamed from: a */
    String f17014a;

    /* renamed from: b */
    boolean f17015b = false;

    /* renamed from: c */
    boolean f17016c = false;

    /* renamed from: d */
    String f17017d = "com.union_test.internationad";

    /* renamed from: e */
    String f17018e = "5001121";

    /* renamed from: e */
    private void m34603e(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f17014a)) {
            this.f17014a = str;
            try {
                JSONObject mo34667a = C4600n.m34807f().mo34667a(new JSONObject(str));
                if (mo34667a == null) {
                    return;
                }
                C4638p.C4645a m34641a = C4638p.C4645a.m34641a(mo34667a, null, null);
                if (m34641a.f16985d != 20000 || m34641a.f16989h == null || m34641a.f16989h.m35343b().size() <= 0) {
                    return;
                }
                boolean z = false;
                C4557i c4557i = m34641a.f16989h.m35343b().get(0);
                this.f17015b = C5438af.m32274e(c4557i);
                if (c4557i.m35134z() != null) {
                    z = true;
                }
                this.f17016c = z;
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public C4652u setAppId(String str) {
        C4570g.m35020b().m35025a(str);
        return this;
    }

    /* renamed from: a */
    public C4652u setPaid(boolean z) {
        C4570g.m35020b().m35017b(z);
        return this;
    }

    /* renamed from: b */
    public C4652u setName(String str) {
        C4570g.m35020b().m35018b(str);
        return this;
    }

    /* renamed from: c */
    public C4652u setKeywords(String str) {
        C4570g.m35020b().m35014c(str);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdNative createAdNative(Context context) {
        C4570g.m35020b().m34995m();
        return new C4654v(context);
    }

    /* renamed from: d */
    public C4652u setData(String str) {
        C4570g.m35020b().m35010d(str);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getBiddingToken() {
        JSONObject jSONObject;
        int i;
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            String m34895e = C4600n.m34805h().m34895e();
            String m34891f = C4600n.m34805h().m34891f();
            if (m34895e != null && m34891f != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("version", m34895e);
                jSONObject4.put("param", m34891f);
                jSONObject3.put("abtest", jSONObject4);
            }
            jSONObject3.put("ad_sdk_version", "3.5.0.5");
            jSONObject3.put("package_name", C5438af.m32283d());
            jSONObject3.put("user_data", C4638p.m34661b());
            jSONObject3.put("ts", System.currentTimeMillis() / 1000);
            if (jSONObject3.toString().getBytes().length <= 670) {
                if (C4600n.m34805h().m34862s("gaid")) {
                    jSONObject3.put("gaid", C3236a.m39088a().m39084b());
                }
                Context m34815a = C4600n.m34815a();
                jSONObject3.put("apk-sign", C4650s.m34623b(C4590i.m34846a(m34815a)));
                jSONObject3.put("vendor", Build.MANUFACTURER);
                jSONObject3.put("model", Build.MODEL);
                jSONObject3.put("user_agent_device", C5438af.m32312a());
                jSONObject3.put("user_agent_webview", C5438af.m32295b());
                jSONObject3.put("sys_compiling_time", C4590i.m34843b(m34815a));
                jSONObject3.put("ip", C5461h.m32164a(true));
                jSONObject3.put("screen_height", C5443ag.m32215d(m34815a));
                jSONObject3.put("screen_width", C5443ag.m32218c(m34815a));
                i = 12;
                if (jSONObject3.toString().getBytes().length < 670) {
                    jSONObject3.put("rom_version", C5487y.m32058a());
                    jSONObject3.put("carrier_name", C5433aa.m32329a());
                    jSONObject3.put("os_version", Build.VERSION.RELEASE);
                    jSONObject3.put("conn_type", C5482t.m32089b(m34815a));
                    StringBuilder sb = new StringBuilder();
                    sb.append(SystemClock.elapsedRealtime());
                    jSONObject3.put("boot", sb.toString());
                    i = f17013f.size();
                }
            } else {
                i = 2;
            }
            while (i > 0 && jSONObject3.toString().getBytes().length > 670) {
                jSONObject3.remove(f17013f.get(Integer.valueOf(i)));
                i--;
            }
            JSONObject m32332a = C5432a.m32332a(jSONObject3);
            while (true) {
                jSONObject = m32332a;
                if (i <= 0) {
                    break;
                }
                jSONObject = m32332a;
                jSONObject2 = m32332a;
                if (m32332a.toString().getBytes().length <= 1024) {
                    break;
                }
                JSONObject jSONObject5 = m32332a;
                jSONObject3.remove(f17013f.get(Integer.valueOf(i)));
                JSONObject jSONObject6 = m32332a;
                m32332a = C5432a.m32332a(jSONObject3);
                i--;
            }
        } catch (Throwable th) {
            jSONObject = jSONObject2;
        }
        C5478q.m32112b("TTAdManagerImpl", "bidding token: " + jSONObject.toString());
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public int getCoppa() {
        return C4570g.m35020b().m35006f();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public int getGdpr() {
        return C4570g.m35020b().m35004g();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getSDKVersion() {
        return "3.5.0.5";
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean isExpressAd(String str, String str2) {
        if (C4600n.m34805h().m34882i(str)) {
            return true;
        }
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        m34603e(str2);
        return this.f17016c;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean isFullScreenVideoAd(String str, String str2) {
        if (C4600n.m34805h().m34880j(str)) {
            return true;
        }
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        m34603e(str2);
        return this.f17015b;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager isUseTextureView(boolean z) {
        C4570g.m35020b().m35009d(z);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean onlyVerityPlayable(String str, int i, String str2, String str3, String str4) {
        if (!this.f17017d.equals(C4600n.m34815a().getPackageName()) || !this.f17018e.equals(C4570g.m35020b().m35012d()) || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC3Proxy", "verityPlayable", String.class, Integer.TYPE, String.class, String.class, String.class);
            if (m32318a == null) {
                return true;
            }
            m32318a.invoke(null, str, Integer.valueOf(i), str2, str3, str4);
            return true;
        } catch (Throwable th) {
            C5478q.m32111b("TTAdManagerImpl", "reward component maybe not exist, pls check", th);
            return true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager openDebugMode() {
        C5478q.m32114b();
        C4151a.m36301c();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void requestPermissionIfNecessary(Context context) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setAllowShowNotifiFromSDK(boolean z) {
        C4570g.m35020b().m35013c(z);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setCoppa(int i) {
        C4570g.m35020b().m35028a(i);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setGdpr(int i) {
        C4570g.m35020b().m35019b(i);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setNeedClearTaskReset(String[] strArr) {
        C4570g.m35020b().m35021a(strArr);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setTTSecAbs(TTSecAbs tTSecAbs) {
        C4570g.m35020b().m35026a(tTSecAbs);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdManager setTitleBarTheme(int i) {
        C4570g.m35020b().m35011d(i);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void showPrivacyProtection() {
        TTDelegateActivity.m35921a();
    }
}
