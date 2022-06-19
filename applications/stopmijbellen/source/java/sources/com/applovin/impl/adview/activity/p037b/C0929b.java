package com.applovin.impl.adview.activity.p037b;

import android.app.Activity;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.view.ViewGroup;
import com.applovin.impl.adview.activity.p036a.C0907b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.C1281a;
import com.applovin.impl.sdk.utils.C1489e;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.adview.activity.b.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/b.class */
public class C0929b extends AbstractC0914a {

    /* renamed from: u */
    private C1489e f3470u;

    /* renamed from: v */
    private long f3471v;

    /* renamed from: t */
    private final C0907b f3469t = new C0907b(this.f3425a, this.f3429e, this.f3426b);

    /* renamed from: w */
    private AtomicBoolean f3472w = new AtomicBoolean();

    public C0929b(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
    }

    /* renamed from: c */
    private long m7035c() {
        AbstractC1286e abstractC1286e = this.f3425a;
        if (abstractC1286e instanceof C1281a) {
            float m6019k = ((C1281a) abstractC1286e).m6019k();
            if (m6019k <= 0.0f) {
                m6019k = (float) this.f3425a.m5901q();
            }
            return (long) ((this.f3425a.m5980M() / 100.0d) * Utils.secondsToMillisLong(m6019k));
        }
        return 0L;
    }

    @Override // com.applovin.impl.sdk.p054b.C1303b.AbstractC1310a
    /* renamed from: a */
    public void mo5845a() {
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6969a(long j) {
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6968a(ViewGroup viewGroup) {
        this.f3469t.m7070a(this.f3431g, this.f3430f, viewGroup);
        m7052a(false);
        this.f3430f.renderAd(this.f3425a);
        m7053a("javascript:al_onPoststitialShow();", this.f3425a.m5979N());
        if (m7037s()) {
            long m7035c = m7035c();
            this.f3471v = m7035c;
            if (m7035c > 0) {
                C1479t c1479t = this.f3427c;
                StringBuilder m8752j = C0082b.m8752j("Scheduling timer for ad fully watched in ");
                m8752j.append(this.f3471v);
                m8752j.append("ms...");
                c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
                this.f3470u = C1489e.m5079a(this.f3471v, this.f3426b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C0929b.this.f3427c.m5116b("AppLovinFullscreenActivity", "Marking ad as fully watched");
                        C0929b.this.f3472w.set(true);
                    }
                });
            }
        }
        if (this.f3431g != null) {
            if (this.f3425a.m5901q() >= 0) {
                m7057a(this.f3431g, this.f3425a.m5901q(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C0929b.this.f3433i = SystemClock.elapsedRealtime();
                    }
                });
            } else {
                this.f3431g.setVisibility(0);
            }
        }
        mo6954t();
        super.m7047b(Utils.isVideoMutedInitially(this.f3426b));
    }

    @Override // com.applovin.impl.sdk.p054b.C1303b.AbstractC1310a
    /* renamed from: b */
    public void mo5844b() {
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: d */
    public void mo6961d() {
        mo6968a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: e */
    public void mo6959e() {
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: h */
    public void mo6958h() {
        mo6957l();
        C1489e c1489e = this.f3470u;
        if (c1489e != null) {
            c1489e.m5080a();
            this.f3470u = null;
        }
        super.mo6958h();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: l */
    public void mo6957l() {
        C1489e c1489e;
        boolean mo6956q = mo6956q();
        int i = 100;
        if (m7037s()) {
            i = 100;
            if (!mo6956q) {
                i = 100;
                if (this.f3470u != null) {
                    i = (int) Math.min(100.0d, ((this.f3471v - c1489e.m5078b()) / this.f3471v) * 100.0d);
                }
            }
            this.f3427c.m5116b("AppLovinFullscreenActivity", "Ad engaged at " + i + "%");
        }
        super.m7060a(i, false, mo6956q, -2L);
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: q */
    public boolean mo6956q() {
        if (m7037s()) {
            return this.f3472w.get();
        }
        return true;
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: r */
    public boolean mo6955r() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: t */
    public void mo6954t() {
        char c;
        char millis;
        if (this.f3425a.m5968Y() >= 0 || this.f3425a.m5967Z() >= 0) {
            long m5968Y = this.f3425a.m5968Y();
            AbstractC1286e abstractC1286e = this.f3425a;
            if (m5968Y >= 0) {
                c = abstractC1286e.m5968Y();
            } else {
                char c2 = 0;
                if (abstractC1286e.m5950aa()) {
                    int m6019k = (int) ((C1281a) this.f3425a).m6019k();
                    if (m6019k > 0) {
                        millis = TimeUnit.SECONDS.toMillis(m6019k);
                    } else {
                        int m5901q = (int) this.f3425a.m5901q();
                        c2 = 0;
                        if (m5901q > 0) {
                            millis = TimeUnit.SECONDS.toMillis(m5901q);
                        }
                    }
                    c2 = 0 + millis;
                }
                c = (long) ((this.f3425a.m5967Z() / 100.0d) * c2);
            }
            m7050b(c);
        }
    }
}
