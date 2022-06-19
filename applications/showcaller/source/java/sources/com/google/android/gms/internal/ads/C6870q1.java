package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.q1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q1.class */
public final class C6870q1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private final boolean f28276i;

    public C6870q1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "QXlICfiT7SVSRUb0DD1a74y++UqnSLMKlPOXAn9FNLrl7qN9uprYrk5dswjj/dLi", "yqGfvaGOT1fOScq8M0g9vywM6jvcTWdjxf27npfqtn0=", j14Var, i, 61);
        this.f28276i = c6869q0.m12072l();
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        long longValue = ((Long) this.f32758f.invoke(null, this.f32754b.m12081c(), Boolean.valueOf(this.f28276i))).longValue();
        synchronized (this.f32757e) {
            this.f32757e.m14235G(longValue);
        }
    }
}
