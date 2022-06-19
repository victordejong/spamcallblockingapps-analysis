package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.r1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r1.class */
public final class C6907r1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private final StackTraceElement[] f28729i;

    public C6907r1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(c6869q0, "FW/4CvJE7gSaOIcNy9aPqAkZHcIOptuimuYgHtkFyrZcR+XexyybvWr2/z62L/0t", "gw9HX1g5D/FveKxEJmgn0Xdlo8h06mYt4u8/nHkUo04=", j14Var, i, 45);
        this.f28729i = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        StackTraceElement[] stackTraceElementArr = this.f28729i;
        if (stackTraceElementArr != null) {
            int i = 1;
            C6610j0 c6610j0 = new C6610j0((String) this.f32758f.invoke(null, stackTraceElementArr));
            synchronized (this.f32757e) {
                this.f32757e.m14198s(c6610j0.f24737b.longValue());
                if (c6610j0.f24738c.booleanValue()) {
                    j14 j14Var = this.f32757e;
                    if (true != c6610j0.f24739d.booleanValue()) {
                        i = 2;
                    }
                    j14Var.m14226S(i);
                } else {
                    this.f32757e.m14226S(3);
                }
            }
        }
    }
}
