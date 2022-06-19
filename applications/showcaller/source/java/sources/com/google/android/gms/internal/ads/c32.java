package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c32.class */
public final class c32 extends AbstractBinderC6823os {

    /* renamed from: d */
    private final Context f21087d;

    /* renamed from: e */
    private final sp0 f21088e;

    /* renamed from: f */
    final vj2 f21089f;

    /* renamed from: g */
    final af1 f21090g = new af1();

    /* renamed from: h */
    private AbstractC6526gs f21091h;

    public c32(sp0 sp0Var, Context context, String str) {
        vj2 vj2Var = new vj2();
        this.f21089f = vj2Var;
        this.f21088e = sp0Var;
        vj2Var.m9984L(str);
        this.f21087d = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: A5 */
    public final void mo12172A5(String str, m00 m00Var, j00 j00Var) {
        this.f21090g.m16610f(str, m00Var, j00Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: B1 */
    public final void mo12171B1(zzblv zzblvVar) {
        this.f21089f.m9976e(zzblvVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: B4 */
    public final void mo12170B4(g00 g00Var) {
        this.f21090g.m16615a(g00Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: G4 */
    public final void mo12169G4(zzbrx zzbrxVar) {
        this.f21089f.m9974g(zzbrxVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: H3 */
    public final void mo12168H3(t00 t00Var) {
        this.f21090g.m16613c(t00Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: M5 */
    public final void mo12167M5(q40 q40Var) {
        this.f21090g.m16611e(q40Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: P5 */
    public final void mo12166P5(q00 q00Var, zzbdl zzbdlVar) {
        this.f21090g.m16612d(q00Var);
        this.f21089f.m9987I(zzbdlVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: T5 */
    public final void mo12165T5(AbstractC6526gs abstractC6526gs) {
        this.f21091h = abstractC6526gs;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: a */
    public final AbstractC6749ms mo12164a() {
        cf1 m16609g = this.f21090g.m16609g();
        this.f21089f.m9978c(m16609g.m16062h());
        this.f21089f.m9977d(m16609g.m16061i());
        vj2 vj2Var = this.f21089f;
        if (vj2Var.m9985K() == null) {
            vj2Var.m9987I(zzbdl.m8082l0());
        }
        return new d32(this.f21087d, this.f21088e, this.f21089f, m16609g, this.f21091h);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: o3 */
    public final void mo12163o3(PublisherAdViewOptions publisherAdViewOptions) {
        this.f21089f.m9973h(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: v2 */
    public final void mo12162v2(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.f21089f.m9972i(adManagerAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: w1 */
    public final void mo12161w1(d00 d00Var) {
        this.f21090g.m16614b(d00Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: x6 */
    public final void mo12160x6(C6453et c6453et) {
        this.f21089f.m9966o(c6453et);
    }
}
