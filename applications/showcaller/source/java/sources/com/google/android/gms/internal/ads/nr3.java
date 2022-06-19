package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nr3.class */
public final class nr3 implements ur3 {

    /* renamed from: a */
    private final long[] f27276a;

    /* renamed from: b */
    private final long[] f27277b;

    /* renamed from: c */
    private final long f27278c;

    /* renamed from: d */
    private final boolean f27279d;

    public nr3(long[] jArr, long[] jArr2, long j) {
        int length = jArr.length;
        int length2 = jArr2.length;
        C7173y8.m8898a(length == length2);
        boolean z = length2 > 0;
        this.f27279d = z;
        if (!z || jArr2[0] <= 0) {
            this.f27276a = jArr;
            this.f27277b = jArr2;
        } else {
            int i = length2 + 1;
            long[] jArr3 = new long[i];
            this.f27276a = jArr3;
            long[] jArr4 = new long[i];
            this.f27277b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length2);
            System.arraycopy(jArr2, 0, jArr4, 1, length2);
        }
        this.f27278c = j;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return this.f27279d;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        if (!this.f27279d) {
            vr3 vr3Var = vr3.f31336a;
            return new sr3(vr3Var, vr3Var);
        }
        int m9695d = C7101wa.m9695d(this.f27277b, j, true, true);
        vr3 vr3Var2 = new vr3(this.f27277b[m9695d], this.f27276a[m9695d]);
        if (vr3Var2.f31337b != j) {
            long[] jArr = this.f27277b;
            if (m9695d != jArr.length - 1) {
                int i = m9695d + 1;
                return new sr3(vr3Var2, new vr3(jArr[i], this.f27276a[i]));
            }
        }
        return new sr3(vr3Var2, vr3Var2);
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f27278c;
    }
}
