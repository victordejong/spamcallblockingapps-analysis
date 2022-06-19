package com.applovin.impl.sdk.p052a;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.p035a.C0880b;
import com.applovin.impl.p035a.C0885g;
import com.applovin.impl.p035a.C0889j;
import com.applovin.impl.p035a.C0891l;
import com.applovin.impl.p035a.EnumC0884f;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.StringUtils;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ErrorType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.adsession.media.InteractionType;
import com.iab.omid.library.applovin.adsession.media.MediaEvents;
import com.iab.omid.library.applovin.adsession.media.Position;
import com.iab.omid.library.applovin.adsession.media.VastProperties;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.sdk.a.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/a/g.class */
public class C1263g extends AbstractC1250b {

    /* renamed from: h */
    public static final /* synthetic */ boolean f4530h = true;

    /* renamed from: i */
    private final C0875a f4531i;

    /* renamed from: k */
    private MediaEvents f4533k;

    /* renamed from: l */
    private final VastProperties f4534l;

    /* renamed from: j */
    private final AtomicBoolean f4532j = new AtomicBoolean();

    /* renamed from: m */
    private final AtomicBoolean f4535m = new AtomicBoolean();

    /* renamed from: n */
    private final AtomicBoolean f4536n = new AtomicBoolean();

    /* renamed from: o */
    private final AtomicBoolean f4537o = new AtomicBoolean();

    /* renamed from: p */
    private final AtomicBoolean f4538p = new AtomicBoolean();

    public C1263g(C0875a c0875a) {
        super(c0875a);
        this.f4531i = c0875a;
        this.f4534l = c0875a.m7193f() == -1 ? VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE) : VastProperties.createVastPropertiesForSkippableMedia((float) c0875a.m7193f(), true, Position.STANDALONE);
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: a */
    public AdSessionConfiguration mo6048a() {
        AdSessionConfiguration adSessionConfiguration;
        try {
            CreativeType creativeType = CreativeType.VIDEO;
            ImpressionType impressionType = ImpressionType.BEGIN_TO_RENDER;
            Owner owner = Owner.NATIVE;
            adSessionConfiguration = AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false);
        } catch (Throwable th) {
            this.f4505c.m5115b(this.f4506d, "Failed to create ad session configuration", th);
            adSessionConfiguration = null;
        }
        return adSessionConfiguration;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: a */
    public AdSessionContext mo6045a(WebView webView) {
        Set<C0889j> m7157d;
        EnumC0884f enumC0884f;
        if (f4530h || this.f4531i.m7200aQ() != null) {
            ArrayList arrayList = new ArrayList();
            for (C0880b c0880b : this.f4531i.m7200aQ().m7156a()) {
                List<C0885g> m7159b = c0880b.m7159b();
                if (!m7159b.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList();
                    for (C0885g c0885g : m7159b) {
                        if ("omid".equalsIgnoreCase(c0885g.m7140a())) {
                            arrayList2.add(c0885g);
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        m7157d = c0880b.m7157d();
                        enumC0884f = EnumC0884f.API_FRAMEWORK_OR_LANGUAGE_TYPE_NOT_SUPPORTED;
                        C0891l.m7112a(m7157d, enumC0884f, this.f4504b);
                    } else {
                        ArrayList arrayList3 = new ArrayList();
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            try {
                                arrayList3.add(new URL(((C0885g) it2.next()).m7138b()));
                            } catch (Throwable th) {
                                this.f4505c.m5115b(this.f4506d, "Failed to parse JavaScript resource url", th);
                            }
                        }
                        if (!arrayList3.isEmpty()) {
                            String m7158c = c0880b.m7158c();
                            String m7161a = c0880b.m7161a();
                            if (!StringUtils.isValidString(m7158c) || StringUtils.isValidString(m7161a)) {
                                Iterator it3 = arrayList3.iterator();
                                while (it3.hasNext()) {
                                    URL url = (URL) it3.next();
                                    arrayList.add(StringUtils.isValidString(m7158c) ? VerificationScriptResource.createVerificationScriptResourceWithParameters(m7161a, url, m7158c) : VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url));
                                }
                            }
                        }
                    }
                }
                m7157d = c0880b.m7157d();
                enumC0884f = EnumC0884f.FAILED_TO_LOAD_RESOURCE;
                C0891l.m7112a(m7157d, enumC0884f, this.f4504b);
            }
            String m6049e = this.f4504b.m5485aj().m6049e();
            AdSessionContext adSessionContext = null;
            if (TextUtils.isEmpty(m6049e)) {
                this.f4505c.m5111e(this.f4506d, "JavaScript SDK content not loaded successfully");
                return null;
            }
            try {
                adSessionContext = AdSessionContext.createNativeAdSessionContext(this.f4504b.m5485aj().m6050d(), m6049e, arrayList, this.f4531i.getOpenMeasurementContentUrl(), this.f4531i.getOpenMeasurementCustomReferenceData());
            } catch (Throwable th2) {
                this.f4505c.m5115b(this.f4506d, "Failed to create ad session context", th2);
            }
            return adSessionContext;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m6047a(final float f, final boolean z) {
        if (this.f4535m.compareAndSet(false, true)) {
            m6063a("track started", new Runnable() { // from class: com.applovin.impl.sdk.a.g.14
                @Override // java.lang.Runnable
                public void run() {
                    C1263g.this.f4533k.start(f, z ? 0.0f : 1.0f);
                }
            });
        }
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: a */
    public void mo6046a(final View view, final List<C1259d> list) {
        m6063a("update main view: " + view, new Runnable() { // from class: com.applovin.impl.sdk.a.g.11
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4508f.registerAdView(view);
                C1263g.this.f4508f.removeAllFriendlyObstructions();
                for (C1259d c1259d : list) {
                    if (c1259d.m6060a() != null) {
                        try {
                            C1263g.this.f4508f.addFriendlyObstruction(c1259d.m6060a(), c1259d.m6059b(), c1259d.m6058c());
                        } catch (Throwable th) {
                            C1263g c1263g = C1263g.this;
                            C1479t c1479t = c1263g.f4505c;
                            String str = c1263g.f4506d;
                            c1479t.m5115b(str, "Failed to add friendly obstruction (" + c1259d + ")", th);
                        }
                    }
                }
            }
        });
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: a */
    public void mo6043a(AdSession adSession) {
        try {
            this.f4533k = MediaEvents.createMediaEvents(adSession);
        } catch (Throwable th) {
            this.f4505c.m5115b(this.f4506d, "Failed to create media events", th);
        }
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: a */
    public void mo6042a(final String str) {
        m6063a("track error", new Runnable() { // from class: com.applovin.impl.sdk.a.g.12
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4508f.error(ErrorType.VIDEO, str);
            }
        });
    }

    /* renamed from: a */
    public void m6041a(final boolean z) {
        m6063a("track volume changed", new Runnable() { // from class: com.applovin.impl.sdk.a.g.7
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4533k.volumeChange(z ? 0.0f : 1.0f);
            }
        });
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: c */
    public void mo6039c() {
        m6063a("track loaded", new Runnable() { // from class: com.applovin.impl.sdk.a.g.1
            @Override // java.lang.Runnable
            public void run() {
                C1263g c1263g = C1263g.this;
                c1263g.f4509g.loaded(c1263g.f4534l);
            }
        });
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: d */
    public void mo6038d() {
        m6063a("track impression event", new Runnable() { // from class: com.applovin.impl.sdk.a.g.10
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4509g.impressionOccurred();
            }
        });
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: e */
    public void mo6037e() {
        m6063a("stop session", new Runnable() { // from class: com.applovin.impl.sdk.a.g.13
            @Override // java.lang.Runnable
            public void run() {
                C1263g c1263g = C1263g.this;
                c1263g.f4507e = false;
                c1263g.f4508f.finish();
                C1263g.this.f4508f = null;
            }
        });
    }

    /* renamed from: f */
    public void m6036f() {
        if (this.f4536n.compareAndSet(false, true)) {
            m6063a("track first quartile", new Runnable() { // from class: com.applovin.impl.sdk.a.g.15
                @Override // java.lang.Runnable
                public void run() {
                    C1263g.this.f4533k.firstQuartile();
                }
            });
        }
    }

    /* renamed from: g */
    public void m6035g() {
        if (this.f4537o.compareAndSet(false, true)) {
            m6063a("track midpoint", new Runnable() { // from class: com.applovin.impl.sdk.a.g.16
                @Override // java.lang.Runnable
                public void run() {
                    C1263g.this.f4533k.midpoint();
                }
            });
        }
    }

    /* renamed from: h */
    public void m6034h() {
        if (this.f4538p.compareAndSet(false, true)) {
            m6063a("track third quartile", new Runnable() { // from class: com.applovin.impl.sdk.a.g.17
                @Override // java.lang.Runnable
                public void run() {
                    C1263g.this.f4533k.thirdQuartile();
                }
            });
        }
    }

    /* renamed from: i */
    public void m6033i() {
        m6063a("track completed", new Runnable() { // from class: com.applovin.impl.sdk.a.g.2
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4533k.complete();
            }
        });
    }

    /* renamed from: j */
    public void m6032j() {
        m6063a("track paused", new Runnable() { // from class: com.applovin.impl.sdk.a.g.3
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4533k.pause();
            }
        });
    }

    /* renamed from: k */
    public void m6031k() {
        m6063a("track resumed", new Runnable() { // from class: com.applovin.impl.sdk.a.g.4
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4533k.resume();
            }
        });
    }

    /* renamed from: l */
    public void m6030l() {
        if (this.f4532j.compareAndSet(false, true)) {
            m6063a("buffer started", new Runnable() { // from class: com.applovin.impl.sdk.a.g.5
                @Override // java.lang.Runnable
                public void run() {
                    C1263g.this.f4533k.bufferStart();
                }
            });
        }
    }

    /* renamed from: m */
    public void m6029m() {
        if (this.f4532j.compareAndSet(true, false)) {
            m6063a("buffer finished", new Runnable() { // from class: com.applovin.impl.sdk.a.g.6
                @Override // java.lang.Runnable
                public void run() {
                    C1263g.this.f4533k.bufferFinish();
                }
            });
        }
    }

    /* renamed from: n */
    public void m6028n() {
        m6063a("track skipped", new Runnable() { // from class: com.applovin.impl.sdk.a.g.8
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4533k.skipped();
            }
        });
    }

    /* renamed from: o */
    public void m6027o() {
        m6063a("track clicked", new Runnable() { // from class: com.applovin.impl.sdk.a.g.9
            @Override // java.lang.Runnable
            public void run() {
                C1263g.this.f4533k.adUserInteraction(InteractionType.CLICK);
            }
        });
    }
}
