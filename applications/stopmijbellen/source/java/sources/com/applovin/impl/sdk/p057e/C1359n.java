package com.applovin.impl.sdk.p057e;

import android.app.Activity;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1393i;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.C1554z;
import com.applovin.impl.sdk.EventServiceImpl;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.C1530k;
import com.applovin.impl.sdk.utils.C1535o;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.sdk.e.n */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/n.class */
public class C1359n extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final C1408l f5156a;

    public C1359n(C1408l c1408l) {
        super("TaskInitializeSdk", c1408l);
        this.f5156a = c1408l;
    }

    /* renamed from: a */
    private void m5658a() {
        if (this.f5156a.m5540C().m6184a()) {
            return;
        }
        Activity m5483al = this.f5156a.m5483al();
        if (m5483al != null) {
            this.f5156a.m5540C().m6183a(m5483al);
        } else {
            this.f5156a.m5525R().m5652a(new C1387z(this.f5156a, true, new Runnable() { // from class: com.applovin.impl.sdk.e.n.2
                @Override // java.lang.Runnable
                public void run() {
                    C1359n.this.f5156a.m5540C().m6183a(C1359n.this.f5156a.m5491ad().m6068a());
                }
            }), C1362o.EnumC1364a.MAIN, TimeUnit.SECONDS.toMillis(1L));
        }
    }

    /* renamed from: b */
    private void m5656b() {
        if (!this.f5156a.m5467e()) {
            boolean m5817d = this.f5156a.m5533J().m5817d();
            String m8754h = m5817d ? C0082b.m8754h(new StringBuilder(), this.f5156a.m5522U().m5392k().f5376b, " (use this for test devices)") : "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
            Map<String, Object> m5400d = this.f5156a.m5522U().m5400d();
            Map<String, Object> m5402c = this.f5156a.m5522U().m5402c();
            C1530k c1530k = new C1530k();
            c1530k.m4990a().m4984a("=====AppLovin SDK=====");
            c1530k.m4984a("===SDK Versions===").m4983a("Version", AppLovinSdk.VERSION).m4983a("Plugin Version", this.f5156a.m5511a(C1314b.f4926dy)).m4983a("Ad Review Version", Utils.getSafedkVersion()).m4983a("OM SDK Version", this.f5156a.m5485aj().m6051c());
            c1530k.m4984a("===Device Info===").m4983a("OS", Utils.getAndroidOSInfo()).m4983a("GAID", m8754h).m4983a("Model", m5400d.get("model")).m4983a("Locale", m5400d.get("locale")).m4983a("Emulator", m5400d.get("sim")).m4983a("Tablet", m5400d.get("is_tablet"));
            c1530k.m4984a("===App Info===").m4983a("Application ID", m5402c.get("package_name")).m4983a("Target SDK", m5402c.get("target_sdk")).m4983a("ExoPlayer Version", Integer.valueOf(Utils.tryToGetExoPlayerVersionCode()));
            c1530k.m4984a("===SDK Settings===").m4983a("SDK Key", this.f5156a.m5444z()).m4983a("Mediation Provider", this.f5156a.m5450t()).m4983a("TG", C1535o.m4954a(this.f5156a)).m4983a("Test Mode On", Boolean.valueOf(this.f5156a.m5534I().m6192a())).m4983a("Verbose Logging On", Boolean.valueOf(m5817d));
            c1530k.m4984a("===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies.").m4984a(C1393i.m5579a(m5726f()));
            c1530k.m4990a();
            C1479t.m5110f("AppLovinSdk", c1530k.toString());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        StringBuilder sb;
        StringBuilder sb2;
        String str = "succeeded";
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder m8752j = C0082b.m8752j("Initializing AppLovin SDK v");
        String str2 = AppLovinSdk.VERSION;
        m8752j.append(str2);
        m8752j.append("...");
        m5733a(m8752j.toString());
        try {
            this.f5156a.m5524S().m5736c(C1328f.f5082b);
            this.f5156a.m5525R().m5653a(new C1335b(this.f5156a), C1362o.EnumC1364a.MAIN);
            this.f5156a.m5522U().m5398e();
            this.f5156a.m5489af().m4969a();
            if (Utils.isPubInDebugMode(m5726f())) {
                this.f5156a.m5462h();
            }
            m5656b();
            if (((Boolean) this.f5156a.m5511a(C1314b.f4894dS)).booleanValue()) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e.n.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1554z.m4892a(C1359n.this.f5156a);
                    }
                });
            }
            m5658a();
            this.f5156a.m5495a(true);
            this.f5156a.m5523T().m5249c();
            ((EventServiceImpl) this.f5156a.m5447w()).maybeTrackAppOpenEvent();
            if ((this.f5156a.m5537F().m6418b() && !this.f5156a.m5467e()) || (((Boolean) this.f5156a.m5511a(C1313a.f4695h)).booleanValue() && Utils.isPubInDebugMode(this.f5156a.m5532K()) && this.f5156a.m5465f())) {
                this.f5156a.m5537F().m6427a();
            }
            this.f5156a.m5485aj().m6057a();
            if (((Boolean) this.f5156a.m5511a(C1314b.f4770az)).booleanValue()) {
                this.f5156a.m5515a(((Long) this.f5156a.m5511a(C1314b.f4719aA)).longValue());
            }
            sb2 = new StringBuilder();
            sb2.append("AppLovin SDK ");
            sb2.append(str2);
            sb2.append(" initialization ");
            sb = sb2;
        } catch (Throwable th) {
            try {
                C1479t.m5113c("AppLovinSdk", "Failed to initialize SDK!", th);
                this.f5156a.m5495a(false);
                this.f5156a.m5485aj().m6057a();
                if (((Boolean) this.f5156a.m5511a(C1314b.f4770az)).booleanValue()) {
                    this.f5156a.m5515a(((Long) this.f5156a.m5511a(C1314b.f4719aA)).longValue());
                }
                StringBuilder m8752j2 = C0082b.m8752j("AppLovin SDK ");
                m8752j2.append(AppLovinSdk.VERSION);
                m8752j2.append(" initialization ");
                sb = m8752j2;
                if (this.f5156a.m5469d()) {
                    sb = m8752j2;
                }
            } catch (Throwable th2) {
                this.f5156a.m5485aj().m6057a();
                if (((Boolean) this.f5156a.m5511a(C1314b.f4770az)).booleanValue()) {
                    this.f5156a.m5515a(((Long) this.f5156a.m5511a(C1314b.f4719aA)).longValue());
                }
                StringBuilder m8752j3 = C0082b.m8752j("AppLovin SDK ");
                m8752j3.append(AppLovinSdk.VERSION);
                m8752j3.append(" initialization ");
                if (!this.f5156a.m5469d()) {
                    str = "failed";
                }
                m8752j3.append(str);
                m8752j3.append(" in ");
                m8752j3.append(System.currentTimeMillis() - currentTimeMillis);
                m8752j3.append("ms");
                m5733a(m8752j3.toString());
                throw th2;
            }
        }
        if (this.f5156a.m5469d()) {
            sb = sb2;
            sb.append(str);
            sb.append(" in ");
            sb.append(System.currentTimeMillis() - currentTimeMillis);
            sb.append("ms");
            m5733a(sb.toString());
        }
        str = "failed";
        sb.append(str);
        sb.append(" in ");
        sb.append(System.currentTimeMillis() - currentTimeMillis);
        sb.append("ms");
        m5733a(sb.toString());
    }
}
