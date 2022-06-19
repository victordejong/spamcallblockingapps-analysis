package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oq3.class */
public class oq3 implements ur3 {

    /* renamed from: a */
    private final long f27680a;

    /* renamed from: b */
    private final long f27681b;

    /* renamed from: c */
    private final int f27682c;

    /* renamed from: d */
    private final long f27683d;

    /* renamed from: e */
    private final int f27684e;

    /* renamed from: f */
    private final long f27685f;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    public oq3(long j, long j2, int i, int i2, boolean z) {
        char m12543f;
        this.f27680a = j;
        this.f27681b = j2;
        this.f27682c = i2 == -1 ? 1 : i2;
        this.f27684e = i;
        if (j == -1) {
            this.f27683d = -1L;
            m12543f = 1;
        } else {
            this.f27683d = j - j2;
            m12543f = m12543f(j, j2, i);
        }
        this.f27685f = m12543f;
    }

    /* renamed from: f */
    private static long m12543f(long j, long j2, int i) {
        return (Math.max(0L, j - j2) * 8000000) / i;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return this.f27683d != -1;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        long j2 = this.f27683d;
        int i = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
        if (i == 0) {
            vr3 vr3Var = new vr3(0L, this.f27681b);
            return new sr3(vr3Var, vr3Var);
        }
        int i2 = this.f27684e;
        long j3 = this.f27682c;
        ?? r0 = (((i2 * j) / 8000000) / j3) * j3;
        char c = r0;
        if (i != 0) {
            c = Math.min((long) r0, j2 - j3);
        }
        long max = this.f27681b + Math.max((long) c, 0L);
        long m12544e = m12544e(max);
        vr3 vr3Var2 = new vr3(m12544e, max);
        if (this.f27683d != -1 && m12544e < j) {
            long j4 = max + this.f27682c;
            if (j4 < this.f27680a) {
                return new sr3(vr3Var2, new vr3(m12544e(j4), j4));
            }
        }
        return new sr3(vr3Var2, vr3Var2);
    }

    /* renamed from: e */
    public final long m12544e(long j) {
        return m12543f(j, this.f27681b, this.f27684e);
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f27685f;
    }
}
