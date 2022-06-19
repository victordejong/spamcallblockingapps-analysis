package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1603k;
import androidx.media2.exoplayer.external.extractor.C1640p;
import androidx.media2.exoplayer.external.extractor.mp4.AbstractC1607a;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/h.class */
public final class C1626h implements AbstractC1599g, AbstractC1637o {

    /* renamed from: a */
    public static final AbstractC1602j f6426a = C1628i.f6452a;

    /* renamed from: b */
    private final int f6427b;

    /* renamed from: c */
    private final C2018p f6428c;

    /* renamed from: d */
    private final C2018p f6429d;

    /* renamed from: e */
    private final C2018p f6430e;

    /* renamed from: f */
    private final C2018p f6431f;

    /* renamed from: g */
    private final ArrayDeque<AbstractC1607a.C1608a> f6432g;

    /* renamed from: h */
    private int f6433h;

    /* renamed from: i */
    private int f6434i;

    /* renamed from: j */
    private long f6435j;

    /* renamed from: k */
    private int f6436k;

    /* renamed from: l */
    private C2018p f6437l;

    /* renamed from: m */
    private int f6438m;

    /* renamed from: n */
    private int f6439n;

    /* renamed from: o */
    private int f6440o;

    /* renamed from: p */
    private boolean f6441p;

    /* renamed from: q */
    private AbstractC1601i f6442q;

    /* renamed from: r */
    private C1627a[] f6443r;

    /* renamed from: s */
    private long[][] f6444s;

    /* renamed from: t */
    private int f6445t;

    /* renamed from: u */
    private long f6446u;

    /* renamed from: v */
    private boolean f6447v;

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/h$a.class */
    public static final class C1627a {

        /* renamed from: a */
        public final C1632l f6448a;

        /* renamed from: b */
        public final C1635o f6449b;

        /* renamed from: c */
        public final AbstractC1641q f6450c;

        /* renamed from: d */
        public int f6451d;

        public C1627a(C1632l c1632l, C1635o c1635o, AbstractC1641q abstractC1641q) {
            this.f6448a = c1632l;
            this.f6449b = c1635o;
            this.f6450c = abstractC1641q;
        }
    }

    public C1626h() {
        this(0);
    }

    public C1626h(int i) {
        this.f6427b = i;
        this.f6431f = new C2018p(16);
        this.f6432g = new ArrayDeque<>();
        this.f6428c = new C2018p(C2014n.f8107a);
        this.f6429d = new C2018p(4);
        this.f6430e = new C2018p();
        this.f6438m = -1;
    }

    /* renamed from: a */
    private static int m42527a(C1635o c1635o, long j) {
        int m42506a = c1635o.m42506a(j);
        int i = m42506a;
        if (m42506a == -1) {
            i = c1635o.m42505b(j);
        }
        return i;
    }

    /* renamed from: a */
    private static long m42526a(C1635o c1635o, long j, long j2) {
        int m42527a = m42527a(c1635o, j);
        return m42527a == -1 ? j2 : Math.min(c1635o.f6494c[m42527a], j2);
    }

    /* renamed from: a */
    private ArrayList<C1635o> m42528a(AbstractC1607a.C1608a c1608a, C1603k c1603k, boolean z) throws ParserException {
        C1632l m42586a;
        ArrayList<C1635o> arrayList = new ArrayList<>();
        for (int i = 0; i < c1608a.f6336d.size(); i++) {
            AbstractC1607a.C1608a c1608a2 = c1608a.f6336d.get(i);
            if (c1608a2.f6333a == 1953653099 && (m42586a = C1610b.m42586a(c1608a2, c1608a.m42589c(1836476516), -9223372036854775807L, (DrmInitData) null, z, this.f6447v)) != null) {
                C1635o m42584a = C1610b.m42584a(m42586a, c1608a2.m42588d(1835297121).m42588d(1835626086).m42588d(1937007212), c1603k);
                if (m42584a.f6493b != 0) {
                    arrayList.add(m42584a);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: a */
    private void m42529a(AbstractC1607a.C1608a c1608a) throws ParserException {
        Metadata metadata;
        Format format;
        int i;
        ArrayList arrayList = new ArrayList();
        C1603k c1603k = new C1603k();
        AbstractC1607a.C1609b m42589c = c1608a.m42589c(1969517665);
        Metadata metadata2 = null;
        if (m42589c != null) {
            Metadata m42585a = C1610b.m42585a(m42589c, this.f6447v);
            metadata = m42585a;
            if (m42585a != null) {
                c1603k.m42598a(m42585a);
                metadata = m42585a;
            }
        } else {
            metadata = null;
        }
        AbstractC1607a.C1608a m42588d = c1608a.m42588d(1835365473);
        if (m42588d != null) {
            metadata2 = C1610b.m42587a(m42588d);
        }
        ArrayList<C1635o> m42528a = m42528a(c1608a, c1603k, (this.f6427b & 1) != 0);
        int size = m42528a.size();
        char c = 1;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int i4 = i3;
            if (i2 >= size) {
                this.f6445t = i4;
                this.f6446u = c;
                C1627a[] c1627aArr = (C1627a[]) arrayList.toArray(new C1627a[0]);
                this.f6443r = c1627aArr;
                this.f6444s = m42525a(c1627aArr);
                this.f6442q.mo42215a();
                this.f6442q.mo42209a(this);
                return;
            }
            C1635o c1635o = m42528a.get(i2);
            C1632l c1632l = c1635o.f6492a;
            char c2 = c1632l.f6461e != -9223372036854775807L ? c1632l.f6461e : c1635o.f6499h;
            c = Math.max((long) c, (long) c2);
            C1627a c1627a = new C1627a(c1632l, c1635o, this.f6442q.mo42213a(i2, c1632l.f6458b));
            Format copyWithMaxInputSize = c1632l.f6462f.copyWithMaxInputSize(c1635o.f6496e + 30);
            if (c1632l.f6458b != 2 || c2 <= 0) {
                format = copyWithMaxInputSize;
            } else {
                format = copyWithMaxInputSize;
                if (c1635o.f6493b > 1) {
                    format = copyWithMaxInputSize.copyWithFrameRate(c1635o.f6493b / (c2 / 1000000.0f));
                }
            }
            c1627a.f6450c.mo42192a(C1625g.m42537a(c1632l.f6458b, format, metadata, metadata2, c1603k));
            if (c1632l.f6458b == 2) {
                i = i4;
                if (i4 == -1) {
                    i = arrayList.size();
                }
            } else {
                i = i4;
            }
            arrayList.add(c1627a);
            i2++;
            i3 = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v8, types: [long[]] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v23, types: [long] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* renamed from: a */
    private static long[][] m42525a(C1627a[] c1627aArr) {
        ?? r0 = new long[c1627aArr.length];
        int[] iArr = new int[c1627aArr.length];
        ?? r02 = new long[c1627aArr.length];
        boolean[] zArr = new boolean[c1627aArr.length];
        for (int i = 0; i < c1627aArr.length; i++) {
            r0[i] = new long[c1627aArr[i].f6449b.f6493b];
            r02[i] = c1627aArr[i].f6449b.f6497f[0];
        }
        ?? r11 = 0;
        int i2 = 0;
        while (i2 < c1627aArr.length) {
            ?? r14 = 65535;
            int i3 = -1;
            int i4 = 0;
            while (i4 < c1627aArr.length) {
                ?? r17 = r14;
                int i5 = i3;
                if (!zArr[i4]) {
                    r17 = r14;
                    i5 = i3;
                    if (r02[i4] <= r14) {
                        r17 = r02[i4];
                        i5 = i4;
                    }
                }
                i4++;
                r14 = r17;
                i3 = i5;
            }
            int i6 = iArr[i3];
            r0[i3][i6] = r11 == true ? 1 : 0;
            r11 += c1627aArr[i3].f6449b.f6495d[i6];
            int i7 = i6 + 1;
            iArr[i3] = i7;
            if (i7 < r0[i3].length) {
                r02[i3] = c1627aArr[i3].f6449b.f6497f[i7];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return r0;
    }

    /* renamed from: b */
    private void m42524b(long j) throws ParserException {
        while (!this.f6432g.isEmpty() && this.f6432g.peek().f6334b == j) {
            AbstractC1607a.C1608a pop = this.f6432g.pop();
            if (pop.f6333a == 1836019574) {
                m42529a(pop);
                this.f6432g.clear();
                this.f6433h = 2;
            } else if (!this.f6432g.isEmpty()) {
                this.f6432g.peek().m42591a(pop);
            }
        }
        if (this.f6433h != 2) {
            m42522d();
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC1599g[] m42523c() {
        return new AbstractC1599g[]{new C1626h()};
    }

    /* renamed from: d */
    private void m42522d() {
        this.f6433h = 0;
        this.f6436k = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f2, code lost:
        if (r0 < r18) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0773 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0143 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x034a  */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v337, types: [long] */
    /* JADX WARN: Type inference failed for: r0v352, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0338 -> B:70:0x033b). Please submit an issue!!! */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo42187a(androidx.media2.exoplayer.external.extractor.AbstractC1600h r9, androidx.media2.exoplayer.external.extractor.C1636n r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1920
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.C1626h.mo42187a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v66 */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: a */
    public final AbstractC1637o.C1638a mo42504a(long j) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        int m42505b;
        C1627a[] c1627aArr = this.f6443r;
        if (c1627aArr.length == 0) {
            return new AbstractC1637o.C1638a(C1640p.f6505a);
        }
        int i = this.f6445t;
        if (i != -1) {
            C1635o c1635o = c1627aArr[i].f6449b;
            int m42527a = m42527a(c1635o, j);
            if (m42527a == -1) {
                return new AbstractC1637o.C1638a(C1640p.f6505a);
            }
            c3 = c1635o.f6497f[m42527a];
            ?? r0 = c1635o.f6494c[m42527a];
            if (c3 >= j || m42527a >= c1635o.f6493b - 1 || (m42505b = c1635o.m42505b(j)) == -1 || m42505b == m42527a) {
                c5 = 65535;
                c6 = 1;
            } else {
                c6 = c1635o.f6497f[m42505b];
                c5 = c1635o.f6494c[m42505b];
            }
            c = c6;
            c4 = c5;
            c2 = r0;
        } else {
            c2 = 65535;
            c = 1;
            c3 = j;
            c4 = 65535;
        }
        int i2 = 0;
        while (true) {
            C1627a[] c1627aArr2 = this.f6443r;
            if (i2 >= c1627aArr2.length) {
                break;
            }
            char c7 = c4;
            char c8 = c2;
            if (i2 != this.f6445t) {
                C1635o c1635o2 = c1627aArr2[i2].f6449b;
                c8 = m42526a(c1635o2, c3, c2);
                char c9 = c4;
                if (c != -9223372036854775807L) {
                    c9 = m42526a(c1635o2, c, c4);
                }
                c7 = c9;
            }
            i2++;
            c4 = c7;
            c2 = c8;
        }
        C1640p c1640p = new C1640p(c3, c2);
        return c == -9223372036854775807L ? new AbstractC1637o.C1638a(c1640p) : new AbstractC1637o.C1638a(c1640p, new C1640p(c, c4));
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f6432g.clear();
        this.f6436k = 0;
        this.f6438m = -1;
        this.f6439n = 0;
        this.f6440o = 0;
        this.f6441p = false;
        if (j == 0) {
            m42522d();
            return;
        }
        C1627a[] c1627aArr = this.f6443r;
        if (c1627aArr == null) {
            return;
        }
        for (C1627a c1627a : c1627aArr) {
            C1635o c1635o = c1627a.f6449b;
            int m42506a = c1635o.m42506a(j2);
            int i = m42506a;
            if (m42506a == -1) {
                i = c1635o.m42505b(j2);
            }
            c1627a.f6451d = i;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f6442q = abstractC1601i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        return C1631k.m42514b(abstractC1600h);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: b */
    public final long mo42503b() {
        return this.f6446u;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: j_ */
    public final boolean mo42502j_() {
        return true;
    }
}
