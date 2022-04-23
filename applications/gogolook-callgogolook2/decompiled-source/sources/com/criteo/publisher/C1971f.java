package com.criteo.publisher;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C2043q;
import com.criteo.publisher.model.C2046r;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.model.C2054y;
import com.criteo.publisher.p020a0.EnumC1908a;
import com.criteo.publisher.p026s.ExecutorC2095a;
import com.criteo.publisher.p029v.C2157a;
import com.criteo.publisher.p034z.RunnableC2180c;
/* renamed from: com.criteo.publisher.f */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/f.class */
public class C1971f {
    @Nullable

    /* renamed from: a */
    public final CriteoInterstitialAdListener f2136a;
    @Nullable

    /* renamed from: b */
    public final CriteoInterstitialAdDisplayListener f2137b;
    @NonNull

    /* renamed from: c */
    public final C2054y f2138c;
    @NonNull

    /* renamed from: d */
    public final C2043q f2139d;
    @NonNull

    /* renamed from: e */
    public final Criteo f2140e;
    @NonNull

    /* renamed from: f */
    public final C2157a f2141f;
    @NonNull

    /* renamed from: g */
    public final ExecutorC2095a f2142g = C1974i.m35912U().m35920M();

    public C1971f(@Nullable CriteoInterstitialAdListener criteoInterstitialAdListener, @Nullable CriteoInterstitialAdDisplayListener criteoInterstitialAdDisplayListener, @NonNull C2054y yVar, @NonNull C2157a aVar, @NonNull Criteo criteo) {
        this.f2136a = criteoInterstitialAdListener;
        this.f2137b = criteoInterstitialAdDisplayListener;
        this.f2138c = yVar;
        this.f2141f = aVar;
        this.f2140e = criteo;
        this.f2139d = criteo.mo35879b();
    }

    /* renamed from: a */
    public void m35937a(@Nullable BidToken bidToken) {
        C2046r a = this.f2140e.mo35881a(bidToken, EnumC1908a.CRITEO_INTERSTITIAL);
        if (a == null) {
            m35936a(EnumC1972g.INVALID);
            return;
        }
        m35936a(EnumC1972g.VALID);
        m35934a(a.m35822b());
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m35936a(@NonNull EnumC1972g gVar) {
        this.f2142g.m35699a(new RunnableC2180c(this.f2136a, gVar));
    }

    /* renamed from: a */
    public void m35935a(@Nullable AdUnit adUnit) {
        if (!this.f2141f.mo35588a()) {
            m35936a(EnumC1972g.INVALID);
        } else if (!this.f2138c.m35771f()) {
            this.f2138c.m35775b();
            C2052w a = this.f2140e.mo35880a(adUnit);
            if (a == null) {
                m35936a(EnumC1972g.INVALID);
                this.f2138c.m35778a();
                return;
            }
            m35936a(EnumC1972g.VALID);
            m35934a(a.m35796c());
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m35934a(@NonNull String str) {
        this.f2138c.m35776a(str, this.f2139d, this.f2137b);
    }

    /* renamed from: a */
    public boolean m35938a() {
        return this.f2138c.m35772e();
    }

    /* renamed from: b */
    public void m35933b() {
        if (m35938a()) {
            this.f2141f.mo35586a(this.f2138c.m35773d(), this.f2136a);
            CriteoInterstitialAdListener criteoInterstitialAdListener = this.f2136a;
            if (criteoInterstitialAdListener != null) {
                criteoInterstitialAdListener.onAdOpened();
            }
            this.f2138c.m35770g();
        }
    }
}
