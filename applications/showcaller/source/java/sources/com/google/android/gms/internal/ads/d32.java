package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d32.class */
public final class d32 extends AbstractBinderC6712ls {

    /* renamed from: d */
    private final l42 f21470d;

    public d32(Context context, sp0 sp0Var, vj2 vj2Var, cf1 cf1Var, AbstractC6526gs abstractC6526gs) {
        n42 n42Var = new n42(cf1Var, sp0Var.mo10959g());
        n42Var.m13010a(abstractC6526gs);
        this.f21470d = new l42(new y42(sp0Var, context, n42Var, vj2Var), vj2Var.m9983M());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: R4 */
    public final void mo13093R4(zzbdg zzbdgVar) {
        this.f21470d.m13729c(zzbdgVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: d */
    public final String mo13092d() {
        String m13728d;
        synchronized (this) {
            m13728d = this.f21470d.m13728d();
        }
        return m13728d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: f */
    public final String mo13091f() {
        String m13727e;
        synchronized (this) {
            m13727e = this.f21470d.m13727e();
        }
        return m13727e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: n3 */
    public final void mo13090n3(zzbdg zzbdgVar, int i) {
        synchronized (this) {
            this.f21470d.m13729c(zzbdgVar, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    public final boolean zzg() {
        boolean m13730b;
        synchronized (this) {
            m13730b = this.f21470d.m13730b();
        }
        return m13730b;
    }
}
