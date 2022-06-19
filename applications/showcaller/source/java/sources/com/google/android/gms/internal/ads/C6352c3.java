package com.google.android.gms.internal.ads;

import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.c3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c3.class */
final class C6352c3 implements AbstractC7026u9 {

    /* renamed from: d */
    private final C6768na f21079d;

    /* renamed from: e */
    private final AbstractC6315b3 f21080e;

    /* renamed from: f */
    private AbstractC6986t6 f21081f;

    /* renamed from: g */
    private AbstractC7026u9 f21082g;

    /* renamed from: h */
    private boolean f21083h = true;

    /* renamed from: i */
    private boolean f21084i;

    public C6352c3(AbstractC6315b3 abstractC6315b3, AbstractC7210z8 abstractC7210z8) {
        this.f21080e = abstractC6315b3;
        this.f21079d = new C6768na(abstractC7210z8);
    }

    /* renamed from: a */
    public final void m16130a() {
        this.f21084i = true;
        this.f21079d.m12958a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: b */
    public final void mo9314b(C6392d6 c6392d6) {
        AbstractC7026u9 abstractC7026u9 = this.f21082g;
        C6392d6 c6392d62 = c6392d6;
        if (abstractC7026u9 != null) {
            abstractC7026u9.mo9314b(c6392d6);
            c6392d62 = this.f21082g.mo9313u();
        }
        this.f21079d.mo9314b(c6392d62);
    }

    /* renamed from: c */
    public final void m16129c() {
        this.f21084i = false;
        this.f21079d.m12957c();
    }

    /* renamed from: d */
    public final void m16128d(long j) {
        this.f21079d.m12956d(j);
    }

    /* renamed from: e */
    public final void m16127e(AbstractC6986t6 abstractC6986t6) {
        AbstractC7026u9 abstractC7026u9;
        AbstractC7026u9 zzi = abstractC6986t6.zzi();
        if (zzi == null || zzi == (abstractC7026u9 = this.f21082g)) {
            return;
        }
        if (abstractC7026u9 != null) {
            throw zzaeg.zzc(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.f21082g = zzi;
        this.f21081f = abstractC6986t6;
        zzi.mo9314b(this.f21079d.mo9313u());
    }

    /* renamed from: f */
    public final void m16126f(AbstractC6986t6 abstractC6986t6) {
        if (abstractC6986t6 == this.f21081f) {
            this.f21082g = null;
            this.f21081f = null;
            this.f21083h = true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: g */
    public final long m16125g(boolean z) {
        char c;
        AbstractC6986t6 abstractC6986t6 = this.f21081f;
        if (abstractC6986t6 == null || abstractC6986t6.mo9320G() || (!this.f21081f.mo8302J() && (z || this.f21081f.mo10120P()))) {
            this.f21083h = true;
            if (this.f21084i) {
                this.f21079d.m12958a();
            }
        } else {
            AbstractC7026u9 abstractC7026u9 = this.f21082g;
            Objects.requireNonNull(abstractC7026u9);
            long mo9312v = abstractC7026u9.mo9312v();
            if (this.f21083h) {
                if (mo9312v < this.f21079d.mo9312v()) {
                    this.f21079d.m12957c();
                } else {
                    this.f21083h = false;
                    if (this.f21084i) {
                        this.f21079d.m12958a();
                    }
                }
            }
            this.f21079d.m12956d(mo9312v);
            C6392d6 mo9313u = abstractC7026u9.mo9313u();
            if (!mo9313u.equals(this.f21079d.mo9313u())) {
                this.f21079d.mo9314b(mo9313u);
                this.f21080e.mo12412a(mo9313u);
            }
        }
        if (this.f21083h) {
            c = this.f21079d.mo9312v();
        } else {
            AbstractC7026u9 abstractC7026u92 = this.f21082g;
            Objects.requireNonNull(abstractC7026u92);
            c = abstractC7026u92.mo9312v();
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: u */
    public final C6392d6 mo9313u() {
        AbstractC7026u9 abstractC7026u9 = this.f21082g;
        return abstractC7026u9 != null ? abstractC7026u9.mo9313u() : this.f21079d.mo9313u();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: v */
    public final long mo9312v() {
        throw null;
    }
}
