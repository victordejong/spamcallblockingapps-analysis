package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.upstream.AbstractC1964c;
import androidx.media2.exoplayer.external.util.AbstractC1999b;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.ArrayList;
/* renamed from: androidx.media2.exoplayer.external.trackselection.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/a.class */
public final class C1929a extends AbstractC1934b {

    /* renamed from: a */
    final AbstractC1931a f7777a;

    /* renamed from: f */
    private final long f7778f;

    /* renamed from: g */
    private final long f7779g;

    /* renamed from: h */
    private final long f7780h;

    /* renamed from: i */
    private final float f7781i;

    /* renamed from: j */
    private final long f7782j;

    /* renamed from: k */
    private final AbstractC1999b f7783k;

    /* renamed from: l */
    private float f7784l;

    /* renamed from: m */
    private int f7785m;

    /* renamed from: n */
    private int f7786n;

    /* renamed from: o */
    private long f7787o;

    /* renamed from: androidx.media2.exoplayer.external.trackselection.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/a$a.class */
    public interface AbstractC1931a {
        /* renamed from: a */
        long mo41841a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.trackselection.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/a$b.class */
    public static final class C1932b implements AbstractC1931a {

        /* renamed from: a */
        long[][] f7788a;

        /* renamed from: b */
        private final AbstractC1964c f7789b;

        /* renamed from: c */
        private final float f7790c;

        /* renamed from: d */
        private final long f7791d;

        C1932b(AbstractC1964c abstractC1964c, float f, long j) {
            this.f7789b = abstractC1964c;
            this.f7790c = f;
            this.f7791d = j;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.C1929a.AbstractC1931a
        /* renamed from: a */
        public final long mo41841a() {
            long[][] jArr;
            long max = Math.max(0L, (((float) this.f7789b.mo41726a()) * this.f7790c) - this.f7791d);
            if (this.f7788a == null) {
                return max;
            }
            int i = 1;
            while (true) {
                jArr = this.f7788a;
                if (i >= jArr.length - 1 || jArr[i][0] >= max) {
                    break;
                }
                i++;
            }
            long[] jArr2 = jArr[i - 1];
            long[] jArr3 = jArr[i];
            return jArr2[1] + ((((float) (max - jArr2[0])) / ((float) (jArr3[0] - jArr2[0]))) * ((float) (jArr3[1] - jArr2[1])));
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/a$c.class */
    public static final class C1933c implements AbstractC1940e.AbstractC1942b {

        /* renamed from: a */
        private final AbstractC1964c f7792a;

        /* renamed from: b */
        private final int f7793b;

        /* renamed from: c */
        private final int f7794c;

        /* renamed from: d */
        private final int f7795d;

        /* renamed from: e */
        private final float f7796e;

        /* renamed from: f */
        private final float f7797f;

        /* renamed from: g */
        private final long f7798g;

        /* renamed from: h */
        private final AbstractC1999b f7799h;

        public C1933c() {
            this(10000, 25000, 25000, 0.75f, 0.75f, 2000L, AbstractC1999b.f8075a);
        }

        public C1933c(int i, int i2, int i3, float f) {
            this(i, i2, i3, f, 0.75f, 2000L, AbstractC1999b.f8075a);
        }

        public C1933c(int i, int i2, int i3, float f, float f2, long j, AbstractC1999b abstractC1999b) {
            this(null, i, i2, i3, f, f2, j, abstractC1999b);
        }

        @Deprecated
        public C1933c(AbstractC1964c abstractC1964c) {
            this(abstractC1964c, 10000, 25000, 25000, 0.75f, 0.75f, 2000L, AbstractC1999b.f8075a);
        }

        @Deprecated
        public C1933c(AbstractC1964c abstractC1964c, int i, int i2, int i3, float f) {
            this(abstractC1964c, i, i2, i3, f, 0.75f, 2000L, AbstractC1999b.f8075a);
        }

        @Deprecated
        public C1933c(AbstractC1964c abstractC1964c, int i, int i2, int i3, float f, float f2, long j, AbstractC1999b abstractC1999b) {
            this.f7792a = abstractC1964c;
            this.f7793b = i;
            this.f7794c = i2;
            this.f7795d = i3;
            this.f7796e = f;
            this.f7797f = f2;
            this.f7798g = j;
            this.f7799h = abstractC1999b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [long[], long[][]] */
        @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e.AbstractC1942b
        /* renamed from: a */
        public final AbstractC1940e[] mo41822a(AbstractC1940e.C1941a[] c1941aArr, AbstractC1964c abstractC1964c) {
            int i;
            AbstractC1964c abstractC1964c2 = this.f7792a;
            if (abstractC1964c2 != null) {
                abstractC1964c = abstractC1964c2;
            }
            AbstractC1940e[] abstractC1940eArr = new AbstractC1940e[c1941aArr.length];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= c1941aArr.length) {
                    break;
                }
                AbstractC1940e.C1941a c1941a = c1941aArr[i2];
                int i4 = i;
                if (c1941a != null) {
                    i4 = i;
                    if (c1941a.f7817b.length == 1) {
                        abstractC1940eArr[i2] = new C1937c(c1941a.f7816a, c1941a.f7817b[0], c1941a.f7818c, c1941a.f7819d);
                        int i5 = c1941a.f7816a.getFormat(c1941a.f7817b[0]).bitrate;
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
            for (int i6 = 0; i6 < c1941aArr.length; i6++) {
                AbstractC1940e.C1941a c1941a2 = c1941aArr[i6];
                if (c1941a2 != null && c1941a2.f7817b.length > 1) {
                    C1929a c1929a = new C1929a(c1941a2.f7816a, c1941a2.f7817b, new C1932b(abstractC1964c, this.f7796e, i), this.f7793b, this.f7794c, this.f7795d, this.f7797f, this.f7798g, this.f7799h);
                    arrayList.add(c1929a);
                    abstractC1940eArr[i6] = c1929a;
                }
            }
            if (arrayList.size() > 1) {
                ?? r0 = new long[arrayList.size()];
                for (int i7 = 0; i7 < arrayList.size(); i7++) {
                    C1929a c1929a2 = (C1929a) arrayList.get(i7);
                    r0[i7] = new long[c1929a2.mo41826f()];
                    for (int i8 = 0; i8 < c1929a2.mo41826f(); i8++) {
                        r0[i7][i8] = c1929a2.f7804e[(c1929a2.mo41826f() - i8) - 1].bitrate;
                    }
                }
                long[][][] m41843a = C1929a.m41843a((long[][]) r0);
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    C1929a c1929a3 = (C1929a) arrayList.get(i9);
                    long[][] jArr = m41843a[i9];
                    C1932b c1932b = (C1932b) c1929a3.f7777a;
                    C1993a.m41688a(jArr.length >= 2);
                    c1932b.f7788a = jArr;
                }
            }
            return abstractC1940eArr;
        }
    }

    private C1929a(TrackGroup trackGroup, int[] iArr, AbstractC1931a abstractC1931a, long j, long j2, long j3, float f, long j4, AbstractC1999b abstractC1999b) {
        super(trackGroup, iArr);
        this.f7777a = abstractC1931a;
        this.f7778f = j * 1000;
        this.f7779g = j2 * 1000;
        this.f7780h = j3 * 1000;
        this.f7781i = f;
        this.f7782j = j4;
        this.f7783k = abstractC1999b;
        this.f7784l = 1.0f;
        this.f7786n = 0;
        this.f7787o = -9223372036854775807L;
    }

    public C1929a(TrackGroup trackGroup, int[] iArr, AbstractC1964c abstractC1964c) {
        this(trackGroup, iArr, abstractC1964c, 0L, 10000L, 25000L, 25000L, 0.75f, 0.75f, 2000L, AbstractC1999b.f8075a);
    }

    public C1929a(TrackGroup trackGroup, int[] iArr, AbstractC1964c abstractC1964c, long j, long j2, long j3, long j4, float f, float f2, long j5, AbstractC1999b abstractC1999b) {
        this(trackGroup, iArr, new C1932b(abstractC1964c, f, j), j2, j3, j4, f2, j5, abstractC1999b);
    }

    /* renamed from: a */
    private int m41844a(long j) {
        long mo41841a = this.f7777a.mo41841a();
        int i = 0;
        for (int i2 = 0; i2 < this.f7802c; i2++) {
            if (j == Long.MIN_VALUE || !m41839b(i2, j)) {
                if (m41845a(this.f7804e[i2].bitrate, this.f7784l, mo41841a)) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    private static void m41842a(long[][][] jArr, int i, long[][] jArr2, int[] iArr) {
        ?? r10 = 0;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2][i][1] = jArr2[i2][iArr[i2]];
            r10 += jArr[i2][i][1];
        }
        for (long[][] jArr3 : jArr) {
            jArr3[i][0] = r10 == true ? 1 : 0;
        }
    }

    /* renamed from: a */
    private static boolean m41845a(int i, float f, long j) {
        return ((long) Math.round(((float) i) * f)) <= j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v100 */
    /* JADX WARN: Type inference failed for: r0v105 */
    /* JADX WARN: Type inference failed for: r0v111, types: [double] */
    /* JADX WARN: Type inference failed for: r0v112 */
    /* JADX WARN: Type inference failed for: r0v3, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v54, types: [double] */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v69, types: [double] */
    /* JADX WARN: Type inference failed for: r0v7, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r0v76, types: [double] */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v82, types: [double] */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v94, types: [double] */
    /* JADX WARN: Type inference failed for: r0v95 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v27, types: [double] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40, types: [double] */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r1v57, types: [double] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* renamed from: a */
    static /* synthetic */ long[][][] m41843a(long[][] jArr) {
        int i;
        int i2;
        int length = jArr.length;
        ?? r0 = new double[length];
        for (int i3 = 0; i3 < jArr.length; i3++) {
            r0[i3] = new double[jArr[i3].length];
            for (int i4 = 0; i4 < jArr[i3].length; i4++) {
                r0[i3][i4] = ((jArr[i3][i4] > (-1L) ? 1 : (jArr[i3][i4] == (-1L) ? 0 : -1)) == 0 ? 0 : Math.log((double) jArr[i3][i4])) == true ? 1 : 0;
            }
        }
        ?? r02 = new double[length];
        for (int i5 = 0; i5 < length; i5++) {
            r02[i5] = new double[r0[i5].length - 1];
            if (r02[i5].length != 0) {
                double d = r0[i5][r0[i5].length - 1] - r0[i5][0];
                int i6 = 0;
                while (true) {
                    int i7 = i6;
                    if (i7 < r0[i5].length - 1) {
                        ?? r03 = r0[i5][i7];
                        ?? r04 = r0[i5];
                        int i8 = i7 + 1;
                        r02[i5][i7] = ((d > 0.0d ? 1 : (d == 0.0d ? 0 : -1)) == 0 ? 4607182418800017408 : (((r03 + r04[i8]) * 0.5d) - r0[i5][0]) / d) == true ? 1 : 0;
                        i6 = i8;
                    }
                }
            }
        }
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            i9 += r02[i10].length;
        }
        int i11 = i9 + 3;
        long[][][] jArr2 = new long[length][i11][2];
        int[] iArr = new int[length];
        m41842a(jArr2, 1, jArr, iArr);
        int i12 = 2;
        while (true) {
            i = i11 - 1;
            if (i12 >= i) {
                break;
            }
            ?? r15 = 65535;
            int i13 = 0;
            int i14 = 0;
            while (true) {
                i2 = i14;
                if (i13 < length) {
                    ?? r13 = r15;
                    int i15 = i2;
                    if (iArr[i13] + 1 != r0[i13].length) {
                        ?? r05 = r02[i13][iArr[i13]];
                        r13 = r15;
                        i15 = i2;
                        if (r05 < r15) {
                            i15 = i13;
                            r13 = r05;
                        }
                    }
                    i13++;
                    r15 = r13;
                    i14 = i15;
                }
            }
            iArr[i2] = iArr[i2] + 1;
            m41842a(jArr2, i12, jArr, iArr);
            i12++;
        }
        for (long[][] jArr3 : jArr2) {
            long[] jArr4 = jArr3[i];
            int i16 = i11 - 2;
            jArr4[0] = jArr3[i16][0] * 2;
            jArr3[i][1] = jArr3[i16][1] * 2;
        }
        return jArr2;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public final int mo41837a() {
        return this.f7785m;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1934b, androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public final void mo41836a(float f) {
        this.f7784l = f;
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1934b, androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public final void mo41833a(long j, long j2, long j3) {
        long mo41494a = this.f7783k.mo41494a();
        boolean z = true;
        if (this.f7786n == 0) {
            this.f7786n = 1;
            this.f7785m = m41844a(mo41494a);
            return;
        }
        int i = this.f7785m;
        int m41844a = m41844a(mo41494a);
        this.f7785m = m41844a;
        if (m41844a == i) {
            return;
        }
        if (!m41839b(i, mo41494a)) {
            Format format = this.f7804e[i];
            Format format2 = this.f7804e[this.f7785m];
            if (format2.bitrate > format.bitrate) {
                if (j3 == -9223372036854775807L || j3 > this.f7778f) {
                    z = false;
                }
                if (j2 < (z ? ((float) j3) * this.f7781i : this.f7778f)) {
                    this.f7785m = i;
                }
            }
            if (format2.bitrate < format.bitrate && j2 >= this.f7779g) {
                this.f7785m = i;
            }
        }
        if (this.f7785m == i) {
            return;
        }
        this.f7786n = 3;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: b */
    public final int mo41832b() {
        return this.f7786n;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: c */
    public final Object mo41830c() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1934b, androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: d */
    public final void mo41828d() {
        this.f7787o = -9223372036854775807L;
    }
}
