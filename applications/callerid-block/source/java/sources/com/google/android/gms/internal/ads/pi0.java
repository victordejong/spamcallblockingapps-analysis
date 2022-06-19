package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pi0.class */
public final class pi0 {

    /* renamed from: a */
    private AbstractC1698d6 f8127a;

    public pi0(ei0 ei0Var) {
        this.f8127a = ei0Var;
    }

    /* renamed from: a */
    public final AbstractC1698d6 m6195a() {
        AbstractC1698d6 abstractC1698d6;
        synchronized (this) {
            abstractC1698d6 = this.f8127a;
        }
        return abstractC1698d6;
    }

    /* renamed from: b */
    public final void m6194b(AbstractC1698d6 abstractC1698d6) {
        synchronized (this) {
            this.f8127a = abstractC1698d6;
        }
    }
}
