package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.i1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i1.class */
public final class C6573i1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private static volatile Long f24114i;

    /* renamed from: j */
    private static final Object f24115j = new Object();

    public C6573i1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "A1tPgHG2ugzZJCs1M+dp+hmS1POsS+eh/W2v7YCpLDG/34A+E/oOE4ZeCFsAYJwW", "qStL+/rRmChGKiFwdmBpG5d//S+c8NqJKVwR4OiL/ms=", j14Var, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        if (f24114i == null) {
            synchronized (f24115j) {
                if (f24114i == null) {
                    f24114i = (Long) this.f32758f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f32757e) {
            this.f32757e.m14210i0(f24114i.longValue());
        }
    }
}
