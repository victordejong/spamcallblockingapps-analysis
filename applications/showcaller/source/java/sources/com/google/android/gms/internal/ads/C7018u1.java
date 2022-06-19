package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.u1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u1.class */
public final class C7018u1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private static volatile Long f30463i;

    /* renamed from: j */
    private static final Object f30464j = new Object();

    public C7018u1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "kgLg33QaU762V6pmSw9NTYQDT3UN+SfZqKWL+LtHgczBAmljOlYdBxhmK655CLWm", "WLzuG2U+Kkbg0oKQlrLQGRQCiSGGQTHe1FZJKw3vRH0=", j14Var, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        if (f30463i == null) {
            synchronized (f30464j) {
                if (f30463i == null) {
                    f30463i = (Long) this.f32758f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f32757e) {
            this.f32757e.m14204o0(f30463i.longValue());
        }
    }
}
