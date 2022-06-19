package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vt3.class */
final class vt3 implements ut3 {

    /* renamed from: a */
    private final long[] f31346a;

    /* renamed from: b */
    private final long[] f31347b;

    /* renamed from: c */
    private final long f31348c;

    /* renamed from: d */
    private final long f31349d;

    private vt3(long[] jArr, long[] jArr2, long j, long j2) {
        this.f31346a = jArr;
        this.f31347b = jArr2;
        this.f31348c = j;
        this.f31349d = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* renamed from: e */
    public static vt3 m9866e(long j, long j2, or3 or3Var, C6694la c6694la) {
        int i;
        c6694la.m13632s(10);
        int m13655D = c6694la.m13655D();
        if (m13655D <= 0) {
            return null;
        }
        int i2 = or3Var.f27699d;
        long m9689h = C7101wa.m9689h(m13655D, (i2 >= 32000 ? 1152 : 576) * 1000000, i2);
        int m13628w = c6694la.m13628w();
        int m13628w2 = c6694la.m13628w();
        int m13628w3 = c6694la.m13628w();
        c6694la.m13632s(2);
        long j3 = j2 + or3Var.f27698c;
        long[] jArr = new long[m13628w];
        long[] jArr2 = new long[m13628w];
        char c = j2;
        for (int i3 = 0; i3 < m13628w; i3++) {
            jArr[i3] = (i3 * m9689h) / m13628w;
            jArr2[i3] = Math.max((long) c, j3);
            if (m13628w3 == 1) {
                i = c6694la.m13629v();
            } else if (m13628w3 == 2) {
                i = c6694la.m13628w();
            } else if (m13628w3 == 3) {
                i = c6694la.m13625z();
            } else if (m13628w3 != 4) {
                return null;
            } else {
                i = c6694la.m13649b();
            }
            c += i * m13628w2;
        }
        if (j != -1 && j != c) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("VBRI data size mismatch: ");
            sb.append(j);
            sb.append(", ");
            sb.append((long) c);
            Log.w("VbriSeeker", sb.toString());
        }
        return new vt3(jArr, jArr2, m9689h, c);
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        int m9695d = C7101wa.m9695d(this.f31346a, j, true, true);
        vr3 vr3Var = new vr3(this.f31346a[m9695d], this.f31347b[m9695d]);
        if (vr3Var.f31337b < j) {
            long[] jArr = this.f31346a;
            if (m9695d != jArr.length - 1) {
                int i = m9695d + 1;
                return new sr3(vr3Var, new vr3(jArr[i], this.f31347b[i]));
            }
        }
        return new sr3(vr3Var, vr3Var);
    }

    @Override // com.google.android.gms.internal.ads.ut3
    /* renamed from: c */
    public final long mo9459c() {
        return this.f31349d;
    }

    @Override // com.google.android.gms.internal.ads.ut3
    /* renamed from: d */
    public final long mo9458d(long j) {
        return this.f31346a[C7101wa.m9695d(this.f31347b, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f31348c;
    }
}
