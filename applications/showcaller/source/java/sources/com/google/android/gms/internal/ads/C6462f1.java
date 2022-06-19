package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.f1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f1.class */
public final class C6462f1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private final long f22700i;

    public C6462f1(C6869q0 c6869q0, String str, String str2, j14 j14Var, long j, int i, int i2) {
        super(c6869q0, "bwYfemyqKvs+5mX5RaQoUxmdyIG97sQWktW0fw649v7l/u+oM9fVxJ1I47AdFZo9", "ue4Q/YADEXoviiBHZurTF9IPPlfQKRVJdzRZ56oggWM=", j14Var, i, 25);
        this.f22700i = j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        long longValue = ((Long) this.f32758f.invoke(null, new Object[0])).longValue();
        synchronized (this.f32757e) {
            this.f32757e.m14229O(longValue);
            long j = this.f22700i;
            if (j != 0) {
                this.f32757e.m14212g0(longValue - j);
                this.f32757e.m14209j0(this.f22700i);
            }
        }
    }
}
