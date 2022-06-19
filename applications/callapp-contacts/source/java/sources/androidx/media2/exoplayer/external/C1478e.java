package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.util.AbstractC1999b;
import androidx.media2.exoplayer.external.util.AbstractC2011l;
import androidx.media2.exoplayer.external.util.C2026v;
/* renamed from: androidx.media2.exoplayer.external.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/e.class */
final class C1478e implements AbstractC2011l {

    /* renamed from: a */
    private final C2026v f5593a;

    /* renamed from: b */
    private final AbstractC1479a f5594b;

    /* renamed from: c */
    private AbstractC1375ag f5595c;

    /* renamed from: d */
    private AbstractC2011l f5596d;

    /* renamed from: e */
    private boolean f5597e = true;

    /* renamed from: f */
    private boolean f5598f;

    /* renamed from: androidx.media2.exoplayer.external.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/e$a.class */
    public interface AbstractC1479a {
        /* renamed from: a */
        void mo41811a(C1368ad c1368ad);
    }

    public C1478e(AbstractC1479a abstractC1479a, AbstractC1999b abstractC1999b) {
        this.f5594b = abstractC1479a;
        this.f5593a = new C2026v(abstractC1999b);
    }

    /* renamed from: a */
    public final long m42845a(boolean z) {
        AbstractC1375ag abstractC1375ag = this.f5595c;
        if (abstractC1375ag == null || abstractC1375ag.mo41173y() || (!this.f5595c.mo41174x() && (z || this.f5595c.mo42926g()))) {
            this.f5597e = true;
            if (this.f5598f) {
                this.f5593a.m41500a();
            }
        } else {
            long mo41495h_ = this.f5596d.mo41495h_();
            if (this.f5597e) {
                if (mo41495h_ < this.f5593a.mo41495h_()) {
                    this.f5593a.m41497b();
                } else {
                    this.f5597e = false;
                    if (this.f5598f) {
                        this.f5593a.m41500a();
                    }
                }
            }
            this.f5593a.m41499a(mo41495h_);
            C1368ad mo41496d = this.f5596d.mo41496d();
            if (!mo41496d.equals(this.f5593a.f8152a)) {
                this.f5593a.mo41498a(mo41496d);
                this.f5594b.mo41811a(mo41496d);
            }
        }
        return mo41495h_();
    }

    /* renamed from: a */
    public final void m42848a() {
        this.f5598f = true;
        this.f5593a.m41500a();
    }

    /* renamed from: a */
    public final void m42847a(long j) {
        this.f5593a.m41499a(j);
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: a */
    public final void mo41498a(C1368ad c1368ad) {
        AbstractC2011l abstractC2011l = this.f5596d;
        C1368ad c1368ad2 = c1368ad;
        if (abstractC2011l != null) {
            abstractC2011l.mo41498a(c1368ad);
            c1368ad2 = this.f5596d.mo41496d();
        }
        this.f5593a.mo41498a(c1368ad2);
    }

    /* renamed from: a */
    public final void m42846a(AbstractC1375ag abstractC1375ag) throws ExoPlaybackException {
        AbstractC2011l abstractC2011l;
        AbstractC2011l mo42929c = abstractC1375ag.mo42929c();
        if (mo42929c == null || mo42929c == (abstractC2011l = this.f5596d)) {
            return;
        }
        if (abstractC2011l != null) {
            throw ExoPlaybackException.m43167a(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.f5596d = mo42929c;
        this.f5595c = abstractC1375ag;
        mo42929c.mo41498a(this.f5593a.f8152a);
    }

    /* renamed from: b */
    public final void m42844b() {
        this.f5598f = false;
        this.f5593a.m41497b();
    }

    /* renamed from: b */
    public final void m42843b(AbstractC1375ag abstractC1375ag) {
        if (abstractC1375ag == this.f5595c) {
            this.f5596d = null;
            this.f5595c = null;
            this.f5597e = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: d */
    public final C1368ad mo41496d() {
        AbstractC2011l abstractC2011l = this.f5596d;
        return abstractC2011l != null ? abstractC2011l.mo41496d() : this.f5593a.f8152a;
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: h_ */
    public final long mo41495h_() {
        return this.f5597e ? this.f5593a.mo41495h_() : this.f5596d.mo41495h_();
    }
}
