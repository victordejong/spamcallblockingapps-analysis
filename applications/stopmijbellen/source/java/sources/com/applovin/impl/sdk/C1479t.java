package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.AppKilledService;
import com.applovin.impl.sdk.utils.C1530k;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.t */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/t.class */
public class C1479t {

    /* renamed from: a */
    private final C1408l f5570a;

    public C1479t(final C1408l c1408l) {
        this.f5570a = c1408l;
        if (!c1408l.m5467e()) {
            m5120a("SDK Session Begin");
            c1408l.m5487ah().registerReceiver(new AppLovinBroadcastManager.Receiver() { // from class: com.applovin.impl.sdk.t.1
                @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
                public void onReceive(Context context, Intent intent, Map<String, Object> map) {
                    C1479t.this.m5120a("SDK Session End");
                    c1408l.m5487ah().unregisterReceiver(this);
                }
            }, new IntentFilter(AppKilledService.ACTION_APP_KILLED));
        }
    }

    /* renamed from: a */
    public void m5120a(String str) {
        C1530k c1530k = new C1530k();
        c1530k.m4990a().m4984a(str).m4990a();
        m5110f("AppLovinSdk", c1530k.toString());
    }

    /* renamed from: a */
    private void m5117a(String str, String str2, boolean z) {
        int intValue;
        if (StringUtils.isValidString(str2) && (intValue = ((Integer) this.f5570a.m5511a(C1314b.f4756al)).intValue()) > 0) {
            int length = str2.length();
            int i = ((length + intValue) - 1) / intValue;
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = i2 * intValue;
                int min = Math.min(length, i3 + intValue);
                if (z) {
                    str2.substring(i3, min);
                } else {
                    m5116b(str, str2.substring(i3, min));
                }
            }
        }
    }

    /* renamed from: c */
    public static void m5113c(String str, String str2, Throwable th) {
    }

    /* renamed from: f */
    public static void m5110f(String str, String str2) {
    }

    /* renamed from: g */
    public static void m5109g(String str, String str2) {
        Log.i("AppLovinSdk", "[" + str + "] " + str2);
    }

    /* renamed from: h */
    public static void m5108h(String str, String str2) {
        Log.w("AppLovinSdk", "[" + str + "] " + str2);
    }

    /* renamed from: i */
    public static void m5107i(String str, String str2) {
        m5113c(str, str2, null);
    }

    /* renamed from: j */
    private void m5106j(String str, String str2) {
    }

    /* renamed from: a */
    public void m5119a(String str, String str2) {
        if (m5122a()) {
            m5117a(str, str2, false);
        }
    }

    /* renamed from: a */
    public void m5118a(String str, String str2, Throwable th) {
        if (m5122a()) {
            String str3 = "[" + str + "] " + str2;
            Log.w("AppLovinSdk", str3, th);
            m5106j("WARN", str3);
        }
    }

    /* renamed from: a */
    public boolean m5122a() {
        return this.f5570a.m5533J().m5817d();
    }

    /* renamed from: b */
    public void m5116b(String str, String str2) {
        if (m5122a()) {
            m5106j("DEBUG", "[" + str + "] " + str2);
        }
    }

    /* renamed from: b */
    public void m5115b(String str, String str2, Throwable th) {
        if (m5122a()) {
            m5106j("ERROR", ("[" + str + "] " + str2) + " : " + th);
        }
    }

    /* renamed from: c */
    public void m5114c(String str, String str2) {
        if (m5122a()) {
            String str3 = "[" + str + "] " + str2;
            Log.i("AppLovinSdk", str3);
            m5106j("INFO", str3);
        }
    }

    /* renamed from: d */
    public void m5112d(String str, String str2) {
        m5118a(str, str2, (Throwable) null);
    }

    /* renamed from: e */
    public void m5111e(String str, String str2) {
        m5115b(str, str2, null);
    }
}
