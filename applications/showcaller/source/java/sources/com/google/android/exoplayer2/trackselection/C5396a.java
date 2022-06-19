package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.p251e0.AbstractC5221d;
import com.google.android.exoplayer2.source.p251e0.AbstractC5222e;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import com.google.android.exoplayer2.util.AbstractC5510f;
import com.google.android.exoplayer2.util.C5508e;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.trackselection.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/a.class */
public class C5396a extends AbstractC5401b {

    /* renamed from: g */
    private final AbstractC5398b f17341g;

    /* renamed from: h */
    private final long f17342h;

    /* renamed from: i */
    private final long f17343i;

    /* renamed from: j */
    private final long f17344j;

    /* renamed from: k */
    private final float f17345k;

    /* renamed from: l */
    private final long f17346l;

    /* renamed from: m */
    private final AbstractC5510f f17347m;

    /* renamed from: n */
    private float f17348n;

    /* renamed from: o */
    private int f17349o;

    /* renamed from: p */
    private int f17350p;

    /* renamed from: q */
    private long f17351q;

    /* renamed from: com.google.android.exoplayer2.trackselection.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/a$b.class */
    public interface AbstractC5398b {
        /* renamed from: a */
        long mo19312a();
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.a$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/a$c.class */
    public static final class C5399c implements AbstractC5398b {

        /* renamed from: a */
        private final AbstractC5473f f17352a;

        /* renamed from: b */
        private final float f17353b;

        /* renamed from: c */
        private final long f17354c;

        /* renamed from: d */
        private long[][] f17355d;

        C5399c(AbstractC5473f abstractC5473f, float f, long j) {
            this.f17352a = abstractC5473f;
            this.f17353b = f;
            this.f17354c = j;
        }

        @Override // com.google.android.exoplayer2.trackselection.C5396a.AbstractC5398b
        /* renamed from: a */
        public long mo19312a() {
            long[][] jArr;
            long max = Math.max(0L, (((float) this.f17352a.mo19003e()) * this.f17353b) - this.f17354c);
            if (this.f17355d == null) {
                return max;
            }
            int i = 1;
            while (true) {
                jArr = this.f17355d;
                if (i >= jArr.length - 1 || jArr[i][0] >= max) {
                    break;
                }
                i++;
            }
            long[] jArr2 = jArr[i - 1];
            long[] jArr3 = jArr[i];
            return jArr2[1] + ((((float) (max - jArr2[0])) / ((float) (jArr3[0] - jArr2[0]))) * ((float) (jArr3[1] - jArr2[1])));
        }

        /* renamed from: b */
        void m19311b(long[][] jArr) {
            C5508e.m18915a(jArr.length >= 2);
            this.f17355d = jArr;
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.a$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/a$d.class */
    public static class C5400d implements AbstractC5408f.AbstractC5410b {

        /* renamed from: a */
        private final AbstractC5473f f17356a;

        /* renamed from: b */
        private final int f17357b;

        /* renamed from: c */
        private final int f17358c;

        /* renamed from: d */
        private final int f17359d;

        /* renamed from: e */
        private final float f17360e;

        /* renamed from: f */
        private final float f17361f;

        /* renamed from: g */
        private final long f17362g;

        /* renamed from: h */
        private final AbstractC5510f f17363h;

        @Deprecated
        public C5400d(AbstractC5473f abstractC5473f) {
            this(abstractC5473f, 10000, 25000, 25000, 0.7f, 0.75f, 2000L, AbstractC5510f.f17868a);
        }

        @Deprecated
        public C5400d(AbstractC5473f abstractC5473f, int i, int i2, int i3, float f, float f2, long j, AbstractC5510f abstractC5510f) {
            this.f17356a = abstractC5473f;
            this.f17357b = i;
            this.f17358c = i2;
            this.f17359d = i3;
            this.f17360e = f;
            this.f17361f = f2;
            this.f17362g = j;
            this.f17363h = abstractC5510f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long[], long[][]] */
        @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f.AbstractC5410b
        /* renamed from: a */
        public final AbstractC5408f[] mo19280a(AbstractC5408f.C5409a[] c5409aArr, AbstractC5473f abstractC5473f) {
            int i;
            AbstractC5473f abstractC5473f2 = this.f17356a;
            if (abstractC5473f2 != null) {
                abstractC5473f = abstractC5473f2;
            }
            AbstractC5408f[] abstractC5408fArr = new AbstractC5408f[c5409aArr.length];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= c5409aArr.length) {
                    break;
                }
                AbstractC5408f.C5409a c5409a = c5409aArr[i2];
                int i4 = i;
                if (c5409a != null) {
                    int[] iArr = c5409a.f17381b;
                    i4 = i;
                    if (iArr.length == 1) {
                        abstractC5408fArr[i2] = new C5404c(c5409a.f17380a, iArr[0], c5409a.f17382c, c5409a.f17383d);
                        int i5 = c5409a.f17380a.m20159a(c5409a.f17381b[0]).f14457h;
                        i4 = i;
                        if (i5 != -1) {
                            i4 = i + i5;
                        }
                    }
                }
                i2++;
                i3 = i4;
            }
            ArrayList arrayList = new ArrayList();
            for (int i6 = 0; i6 < c5409aArr.length; i6++) {
                AbstractC5408f.C5409a c5409a2 = c5409aArr[i6];
                if (c5409a2 != null) {
                    int[] iArr2 = c5409a2.f17381b;
                    if (iArr2.length > 1) {
                        C5396a m19310b = m19310b(c5409a2.f17380a, abstractC5473f, iArr2, i);
                        arrayList.add(m19310b);
                        abstractC5408fArr[i6] = m19310b;
                    }
                }
            }
            if (arrayList.size() > 1) {
                ?? r0 = new long[arrayList.size()];
                for (int i7 = 0; i7 < arrayList.size(); i7++) {
                    C5396a c5396a = (C5396a) arrayList.get(i7);
                    r0[i7] = new long[c5396a.length()];
                    for (int i8 = 0; i8 < c5396a.length(); i8++) {
                        r0[i7][i8] = c5396a.mo19292d((c5396a.length() - i8) - 1).f14457h;
                    }
                }
                long[][][] m19316w = C5396a.m19316w(r0);
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    ((C5396a) arrayList.get(i9)).m19317v(m19316w[i9]);
                }
            }
            return abstractC5408fArr;
        }

        /* renamed from: b */
        protected C5396a m19310b(TrackGroup trackGroup, AbstractC5473f abstractC5473f, int[] iArr, int i) {
            return new C5396a(trackGroup, iArr, new C5399c(abstractC5473f, this.f17360e, i), this.f17357b, this.f17358c, this.f17359d, this.f17361f, this.f17362g, this.f17363h);
        }
    }

    private C5396a(TrackGroup trackGroup, int[] iArr, AbstractC5398b abstractC5398b, long j, long j2, long j3, float f, long j4, AbstractC5510f abstractC5510f) {
        super(trackGroup, iArr);
        this.f17341g = abstractC5398b;
        this.f17342h = j * 1000;
        this.f17343i = j2 * 1000;
        this.f17344j = j3 * 1000;
        this.f17345k = f;
        this.f17346l = j4;
        this.f17347m = abstractC5510f;
        this.f17348n = 1.0f;
        this.f17350p = 0;
        this.f17351q = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: A */
    private static void m19322A(long[][][] jArr, int i, long[][] jArr2, int[] iArr) {
        ?? r10 = 0;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2][i][1] = jArr2[i2][iArr[i2]];
            r10 += jArr[i2][i][1];
        }
        for (long[][] jArr3 : jArr) {
            jArr3[i][0] = r10 == true ? 1 : 0;
        }
    }

    /* renamed from: t */
    private static int m19319t(double[][] dArr) {
        int i = 0;
        for (double[] dArr2 : dArr) {
            i += dArr2.length;
        }
        return i;
    }

    /* renamed from: u */
    private int m19318u(long j) {
        long mo19312a = this.f17341g.mo19312a();
        int i = 0;
        for (int i2 = 0; i2 < this.f17365b; i2++) {
            if (j == Long.MIN_VALUE || !m19308q(i2, j)) {
                Format mo19292d = mo19292d(i2);
                if (m19320s(mo19292d, mo19292d.f14457h, this.f17348n, mo19312a)) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [double] */
    /* renamed from: w */
    public static long[][][] m19316w(long[][] jArr) {
        int i;
        char c;
        double[][] m19315x = m19315x(jArr);
        double[][] m19314y = m19314y(m19315x);
        int m19319t = m19319t(m19314y) + 3;
        long[][][] jArr2 = new long[m19315x.length][m19319t][2];
        int[] iArr = new int[m19315x.length];
        m19322A(jArr2, 1, jArr, iArr);
        int i2 = 2;
        while (true) {
            i = m19319t - 1;
            if (i2 >= i) {
                break;
            }
            char c2 = 65535;
            int i3 = 0;
            int i4 = 0;
            while (i3 < m19315x.length) {
                if (iArr[i3] + 1 == m19315x[i3].length) {
                    c = c2;
                } else {
                    ?? r0 = m19314y[i3][iArr[i3]];
                    c = c2;
                    if (r0 < c2) {
                        i4 = i3;
                        c = r0;
                    }
                }
                i3++;
                c2 = c;
            }
            iArr[i4] = iArr[i4] + 1;
            m19322A(jArr2, i2, jArr, iArr);
            i2++;
        }
        for (long[][] jArr3 : jArr2) {
            long[] jArr4 = jArr3[i];
            int i5 = m19319t - 2;
            jArr4[0] = jArr3[i5][0] * 2;
            jArr3[i][1] = jArr3[i5][1] * 2;
        }
        return jArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2, types: [double[], double[][]] */
    /* JADX WARN: Type inference failed for: r0v21, types: [double] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* renamed from: x */
    private static double[][] m19315x(long[][] jArr) {
        ?? r0 = new double[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            r0[i] = new double[jArr[i].length];
            for (int i2 = 0; i2 < jArr[i].length; i2++) {
                r0[i][i2] = ((jArr[i][i2] > (-1L) ? 1 : (jArr[i][i2] == (-1L) ? 0 : -1)) == 0 ? 0 : Math.log((double) jArr[i][i2])) == true ? 1 : 0;
            }
        }
        return r0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [double[], double[][]] */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* renamed from: y */
    private static double[][] m19314y(double[][] dArr) {
        ?? r0 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            r0[i] = new double[dArr[i].length - 1];
            if (r0[i].length != 0) {
                double d = dArr[i][dArr[i].length - 1] - dArr[i][0];
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < dArr[i].length - 1) {
                        int i4 = i3 + 1;
                        r0[i][i3] = ((d > 0.0d ? 1 : (d == 0.0d ? 0 : -1)) == 0 ? 4607182418800017408 : (((dArr[i][i3] + dArr[i][i4]) * 0.5d) - dArr[i][0]) / d) == true ? 1 : 0;
                        i2 = i4;
                    }
                }
            }
        }
        return r0;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: z */
    private long m19313z(long j) {
        return (j > (-9223372036854775807L) ? 1 : (j == (-9223372036854775807L) ? 0 : -1)) != 0 && (j > this.f17342h ? 1 : (j == this.f17342h ? 0 : -1)) <= 0 ? ((float) j) * this.f17345k : this.f17342h;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: b */
    public int mo19294b() {
        return this.f17349o;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5401b, com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: e */
    public void mo19291e() {
        this.f17351q = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: h */
    public void mo19288h(long j, long j2, long j3, List<? extends AbstractC5221d> list, AbstractC5222e[] abstractC5222eArr) {
        long mo18896b = this.f17347m.mo18896b();
        if (this.f17350p == 0) {
            this.f17350p = 1;
            this.f17349o = m19318u(mo18896b);
            return;
        }
        int i = this.f17349o;
        int m19318u = m19318u(mo18896b);
        this.f17349o = m19318u;
        if (m19318u == i) {
            return;
        }
        if (!m19308q(i, mo18896b)) {
            Format mo19292d = mo19292d(i);
            Format mo19292d2 = mo19292d(this.f17349o);
            if (mo19292d2.f14457h > mo19292d.f14457h && j2 < m19313z(j3)) {
                this.f17349o = i;
            } else if (mo19292d2.f14457h < mo19292d.f14457h && j2 >= this.f17343i) {
                this.f17349o = i;
            }
        }
        if (this.f17349o == i) {
            return;
        }
        this.f17350p = 3;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: k */
    public int mo19285k() {
        return this.f17350p;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5401b, com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: l */
    public void mo19284l(float f) {
        this.f17348n = f;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: m */
    public Object mo19283m() {
        return null;
    }

    /* renamed from: s */
    protected boolean m19320s(Format format, int i, float f, long j) {
        return ((long) Math.round(((float) i) * f)) <= j;
    }

    /* renamed from: v */
    public void m19317v(long[][] jArr) {
        ((C5399c) this.f17341g).m19311b(jArr);
    }
}
