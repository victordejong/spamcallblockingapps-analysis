package com.applovin.impl.sdk.p052a;

import android.support.p012v4.media.C0082b;
import android.view.View;
import android.webkit.WebView;
import androidx.recyclerview.widget.C0608b;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.AdEvents;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.ErrorType;
import java.util.Collections;
import java.util.List;
/* renamed from: com.applovin.impl.sdk.a.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/a/b.class */
public abstract class AbstractC1250b {

    /* renamed from: a */
    public final AppLovinAdBase f4503a;

    /* renamed from: b */
    public final C1408l f4504b;

    /* renamed from: c */
    public final C1479t f4505c;

    /* renamed from: d */
    public final String f4506d;

    /* renamed from: e */
    public boolean f4507e;

    /* renamed from: f */
    public AdSession f4508f;

    /* renamed from: g */
    public AdEvents f4509g;

    public AbstractC1250b(AppLovinAdBase appLovinAdBase) {
        this.f4503a = appLovinAdBase;
        this.f4504b = appLovinAdBase.getSdk();
        this.f4505c = appLovinAdBase.getSdk().m5542A();
        StringBuilder m8752j = C0082b.m8752j("AdEventTracker:");
        m8752j.append(appLovinAdBase.getAdIdNumber());
        String sb = m8752j.toString();
        String str = sb;
        if (StringUtils.isValidString(appLovinAdBase.getDspName())) {
            StringBuilder m7624k = C0608b.m7624k(sb, ":");
            m7624k.append(appLovinAdBase.getDspName());
            str = m7624k.toString();
        }
        this.f4506d = str;
    }

    /* renamed from: a */
    public abstract AdSessionConfiguration mo6048a();

    /* renamed from: a */
    public abstract AdSessionContext mo6045a(WebView webView);

    /* renamed from: a */
    public void m6064a(View view) {
        mo6046a(view, Collections.emptyList());
    }

    /* renamed from: a */
    public void mo6046a(final View view, final List<C1259d> list) {
        m6063a("update main view: " + view, new Runnable() { // from class: com.applovin.impl.sdk.a.b.4
            @Override // java.lang.Runnable
            public void run() {
                AbstractC1250b.this.f4508f.registerAdView(view);
                AbstractC1250b.this.f4508f.removeAllFriendlyObstructions();
                for (C1259d c1259d : list) {
                    if (c1259d.m6060a() != null) {
                        try {
                            AbstractC1250b.this.f4508f.addFriendlyObstruction(c1259d.m6060a(), c1259d.m6059b(), c1259d.m6058c());
                        } catch (Throwable th) {
                            AbstractC1250b abstractC1250b = AbstractC1250b.this;
                            C1479t c1479t = abstractC1250b.f4505c;
                            String str = abstractC1250b.f4506d;
                            c1479t.m5115b(str, "Failed to add friendly obstruction (" + c1259d + ")", th);
                        }
                    }
                }
            }
        });
    }

    /* renamed from: a */
    public void mo6043a(AdSession adSession) {
    }

    /* renamed from: a */
    public void mo6042a(final String str) {
        m6063a("track error", new Runnable() { // from class: com.applovin.impl.sdk.a.b.5
            @Override // java.lang.Runnable
            public void run() {
                AbstractC1250b.this.f4508f.error(ErrorType.VIDEO, str);
            }
        });
    }

    /* renamed from: a */
    public void m6063a(final String str, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.b.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AbstractC1250b abstractC1250b = AbstractC1250b.this;
                    if (!abstractC1250b.f4507e) {
                        return;
                    }
                    C1479t c1479t = abstractC1250b.f4505c;
                    String str2 = abstractC1250b.f4506d;
                    c1479t.m5116b(str2, "Running operation: " + str);
                    runnable.run();
                } catch (Throwable th) {
                    AbstractC1250b abstractC1250b2 = AbstractC1250b.this;
                    C1479t c1479t2 = abstractC1250b2.f4505c;
                    String str3 = abstractC1250b2.f4506d;
                    StringBuilder m8752j = C0082b.m8752j("Failed to run operation: ");
                    m8752j.append(str);
                    c1479t2.m5115b(str3, m8752j.toString(), th);
                }
            }
        });
    }

    /* renamed from: b */
    public void m6062b() {
        m6061b(null);
    }

    /* renamed from: b */
    public void m6061b(final WebView webView) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                AdSessionContext mo6045a;
                if (!AbstractC1250b.this.f4503a.isOpenMeasurementEnabled()) {
                    AbstractC1250b abstractC1250b = AbstractC1250b.this;
                    abstractC1250b.f4505c.m5114c(abstractC1250b.f4506d, "Skip starting session - Open Measurement disabled");
                    return;
                }
                AbstractC1250b abstractC1250b2 = AbstractC1250b.this;
                if (abstractC1250b2.f4508f != null) {
                    C1479t c1479t = abstractC1250b2.f4505c;
                    String str = abstractC1250b2.f4506d;
                    StringBuilder m8752j = C0082b.m8752j("Attempting to start session again for ad: ");
                    m8752j.append(AbstractC1250b.this.f4503a);
                    c1479t.m5112d(str, m8752j.toString());
                    return;
                }
                abstractC1250b2.f4505c.m5116b(abstractC1250b2.f4506d, "Starting session");
                AdSessionConfiguration mo6048a = AbstractC1250b.this.mo6048a();
                if (mo6048a == null || (mo6045a = AbstractC1250b.this.mo6045a(webView)) == null) {
                    return;
                }
                try {
                    AbstractC1250b.this.f4508f = AdSession.createAdSession(mo6048a, mo6045a);
                    try {
                        AbstractC1250b abstractC1250b3 = AbstractC1250b.this;
                        abstractC1250b3.f4509g = AdEvents.createAdEvents(abstractC1250b3.f4508f);
                        AbstractC1250b abstractC1250b4 = AbstractC1250b.this;
                        abstractC1250b4.mo6043a(abstractC1250b4.f4508f);
                        AbstractC1250b.this.f4508f.start();
                        AbstractC1250b abstractC1250b5 = AbstractC1250b.this;
                        abstractC1250b5.f4507e = true;
                        abstractC1250b5.f4505c.m5116b(abstractC1250b5.f4506d, "Session started");
                    } catch (Throwable th) {
                        AbstractC1250b abstractC1250b6 = AbstractC1250b.this;
                        abstractC1250b6.f4505c.m5115b(abstractC1250b6.f4506d, "Failed to create ad events", th);
                    }
                } catch (Throwable th2) {
                    AbstractC1250b abstractC1250b7 = AbstractC1250b.this;
                    abstractC1250b7.f4505c.m5115b(abstractC1250b7.f4506d, "Failed to create session", th2);
                }
            }
        });
    }

    /* renamed from: c */
    public void mo6039c() {
        m6063a("track loaded", new Runnable() { // from class: com.applovin.impl.sdk.a.b.2
            @Override // java.lang.Runnable
            public void run() {
                AbstractC1250b.this.f4509g.loaded();
            }
        });
    }

    /* renamed from: d */
    public void mo6038d() {
        m6063a("track impression event", new Runnable() { // from class: com.applovin.impl.sdk.a.b.3
            @Override // java.lang.Runnable
            public void run() {
                AbstractC1250b.this.f4509g.impressionOccurred();
            }
        });
    }

    /* renamed from: e */
    public void mo6037e() {
        m6063a("stop session", new Runnable() { // from class: com.applovin.impl.sdk.a.b.6
            @Override // java.lang.Runnable
            public void run() {
                AbstractC1250b abstractC1250b = AbstractC1250b.this;
                abstractC1250b.f4507e = false;
                abstractC1250b.f4508f.finish();
                AbstractC1250b.this.f4508f = null;
            }
        });
    }
}
