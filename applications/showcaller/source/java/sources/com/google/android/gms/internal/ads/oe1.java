package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oe1.class */
public final class oe1 {

    /* renamed from: a */
    private AbstractC6421dz f27512a;

    public oe1(ce1 ce1Var) {
        this.f27512a = ce1Var;
    }

    /* renamed from: a */
    public final AbstractC6421dz m12690a() {
        AbstractC6421dz abstractC6421dz;
        synchronized (this) {
            abstractC6421dz = this.f27512a;
        }
        return abstractC6421dz;
    }

    /* renamed from: b */
    public final void m12689b(AbstractC6421dz abstractC6421dz) {
        synchronized (this) {
            this.f27512a = abstractC6421dz;
        }
    }
}
