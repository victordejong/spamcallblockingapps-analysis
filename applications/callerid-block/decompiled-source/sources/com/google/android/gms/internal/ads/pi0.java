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
        AbstractC1698d6 d6Var;
        synchronized (this) {
            d6Var = this.f8127a;
        }
        return d6Var;
    }

    /* renamed from: b */
    public final void m6194b(AbstractC1698d6 d6Var) {
        synchronized (this) {
            this.f8127a = d6Var;
        }
    }
}
