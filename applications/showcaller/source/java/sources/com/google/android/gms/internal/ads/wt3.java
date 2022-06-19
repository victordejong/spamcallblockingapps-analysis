package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wt3.class */
final class wt3 implements ut3 {

    /* renamed from: a */
    private final long f31778a;

    /* renamed from: b */
    private final int f31779b;

    /* renamed from: c */
    private final long f31780c;

    /* renamed from: d */
    private final long f31781d;

    /* renamed from: e */
    private final long f31782e;

    /* renamed from: f */
    private final long[] f31783f;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    private wt3(long j, int i, long j2, long j3, long[] jArr) {
        this.f31778a = j;
        this.f31779b = i;
        this.f31780c = j2;
        this.f31783f = jArr;
        this.f31781d = j3;
        this.f31782e = j3 == -1 ? (char) 65535 : j + j3;
    }

    /* renamed from: e */
    public static wt3 m9457e(long j, long j2, or3 or3Var, C6694la c6694la) {
        int m13649b;
        int i = or3Var.f27702g;
        int i2 = or3Var.f27699d;
        int m13655D = c6694la.m13655D();
        if ((m13655D & 1) != 1 || (m13649b = c6694la.m13649b()) == 0) {
            return null;
        }
        long m9689h = C7101wa.m9689h(m13649b, i * 1000000, i2);
        if ((m13655D & 6) != 6) {
            return new wt3(j2, or3Var.f27698c, m9689h, -1L, null);
        }
        long m13657B = c6694la.m13657B();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = c6694la.m13629v();
        }
        if (j != -1) {
            long j3 = j2 + m13657B;
            if (j != j3) {
                StringBuilder sb = new StringBuilder(67);
                sb.append("XING data size mismatch: ");
                sb.append(j);
                sb.append(", ");
                sb.append(j3);
                Log.w("XingSeeker", sb.toString());
            }
        }
        return new wt3(j2, or3Var.f27698c, m9689h, m13657B, jArr);
    }

    /* renamed from: f */
    private final long m9456f(int i) {
        return (this.f31780c * i) / 100;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return this.f31783f != null;
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        long[] jArr;
        if (!mo9064a()) {
            vr3 vr3Var = new vr3(0L, this.f31778a + this.f31779b);
            return new sr3(vr3Var, vr3Var);
        }
        long m9694d0 = C7101wa.m9694d0(j, 0L, this.f31780c);
        double d = (m9694d0 * 100.0d) / this.f31780c;
        char c = 0;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                c = 0;
            } else {
                int i = (int) d;
                double d2 = ((long[]) C7173y8.m8894e(this.f31783f))[i];
                c = d2 + ((d - i) * ((i == 99 ? (char) 0 : jArr[i + 1]) - d2));
            }
        }
        vr3 vr3Var2 = new vr3(m9694d0, this.f31778a + C7101wa.m9694d0(Math.round((c / 0) * this.f31781d), this.f31779b, this.f31781d - 1));
        return new sr3(vr3Var2, vr3Var2);
    }

    @Override // com.google.android.gms.internal.ads.ut3
    /* renamed from: c */
    public final long mo9459c() {
        return this.f31782e;
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36 */
    @Override // com.google.android.gms.internal.ads.ut3
    /* renamed from: d */
    public final long mo9458d(long j) {
        long j2 = j - this.f31778a;
        if (!mo9064a() || j2 <= this.f31779b) {
            return 0L;
        }
        long[] jArr = (long[]) C7173y8.m8894e(this.f31783f);
        double d = (j2 * 256.0d) / this.f31781d;
        int m9695d = C7101wa.m9695d(jArr, (long) d, true, true);
        long m9456f = m9456f(m9695d);
        long j3 = jArr[m9695d];
        int i = m9695d + 1;
        long m9456f2 = m9456f(i);
        char c = m9695d == 99 ? (char) 256 : jArr[i];
        return m9456f + Math.round((j3 == c ? (char) 0 : (d - j3) / (c - j3)) * (m9456f2 - m9456f));
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f31780c;
    }
}
