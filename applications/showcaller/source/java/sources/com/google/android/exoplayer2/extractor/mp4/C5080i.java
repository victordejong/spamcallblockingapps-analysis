package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C4822h;
import com.google.android.exoplayer2.extractor.mp4.AbstractC5062c;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4988p;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.p243c1.C4995u;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5531s;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayDeque;
import java.util.ArrayList;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/i.class */
public final class C5080i implements AbstractC4978h, AbstractC4992t {

    /* renamed from: a */
    public static final AbstractC4982l f15854a = C5061b.f15762a;

    /* renamed from: b */
    private final int f15855b;

    /* renamed from: c */
    private final C5536v f15856c;

    /* renamed from: d */
    private final C5536v f15857d;

    /* renamed from: e */
    private final C5536v f15858e;

    /* renamed from: f */
    private final C5536v f15859f;

    /* renamed from: g */
    private final ArrayDeque<AbstractC5062c.C5063a> f15860g;

    /* renamed from: h */
    private int f15861h;

    /* renamed from: i */
    private int f15862i;

    /* renamed from: j */
    private long f15863j;

    /* renamed from: k */
    private int f15864k;

    /* renamed from: l */
    private C5536v f15865l;

    /* renamed from: m */
    private int f15866m;

    /* renamed from: n */
    private int f15867n;

    /* renamed from: o */
    private int f15868o;

    /* renamed from: p */
    private int f15869p;

    /* renamed from: q */
    private AbstractC4980j f15870q;

    /* renamed from: r */
    private C5081a[] f15871r;

    /* renamed from: s */
    private long[][] f15872s;

    /* renamed from: t */
    private int f15873t;

    /* renamed from: u */
    private long f15874u;

    /* renamed from: v */
    private boolean f15875v;

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/i$a.class */
    public static final class C5081a {

        /* renamed from: a */
        public final C5085l f15876a;

        /* renamed from: b */
        public final C5088o f15877b;

        /* renamed from: c */
        public final AbstractC4996v f15878c;

        /* renamed from: d */
        public int f15879d;

        public C5081a(C5085l c5085l, C5088o c5088o, AbstractC4996v abstractC4996v) {
            this.f15876a = c5085l;
            this.f15877b = c5088o;
            this.f15878c = abstractC4996v;
        }
    }

    public C5080i() {
        this(0);
    }

    public C5080i(int i) {
        this.f15855b = i;
        this.f15859f = new C5536v(16);
        this.f15860g = new ArrayDeque<>();
        this.f15856c = new C5536v(C5531s.f17917a);
        this.f15857d = new C5536v(4);
        this.f15858e = new C5536v();
        this.f15866m = -1;
    }

    /* renamed from: A */
    private void m20623A(long j) {
        C5081a[] c5081aArr;
        for (C5081a c5081a : this.f15871r) {
            C5088o c5088o = c5081a.f15877b;
            int m20585a = c5088o.m20585a(j);
            int i = m20585a;
            if (m20585a == -1) {
                i = c5088o.m20584b(j);
            }
            c5081a.f15879d = i;
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
    /* renamed from: k */
    private static long[][] m20619k(C5081a[] c5081aArr) {
        ?? r0 = new long[c5081aArr.length];
        int[] iArr = new int[c5081aArr.length];
        ?? r02 = new long[c5081aArr.length];
        boolean[] zArr = new boolean[c5081aArr.length];
        for (int i = 0; i < c5081aArr.length; i++) {
            r0[i] = new long[c5081aArr[i].f15877b.f15920b];
            r02[i] = c5081aArr[i].f15877b.f15924f[0];
        }
        ?? r11 = 0;
        int i2 = 0;
        while (i2 < c5081aArr.length) {
            ?? r14 = 65535;
            int i3 = -1;
            int i4 = 0;
            while (i4 < c5081aArr.length) {
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
            r11 += c5081aArr[i3].f15877b.f15922d[i6];
            int i7 = i6 + 1;
            iArr[i3] = i7;
            if (i7 < r0[i3].length) {
                r02[i3] = c5081aArr[i3].f15877b.f15924f[i7];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return r0;
    }

    /* renamed from: l */
    private void m20618l() {
        this.f15861h = 0;
        this.f15864k = 0;
    }

    /* renamed from: m */
    private static int m20617m(C5088o c5088o, long j) {
        int m20585a = c5088o.m20585a(j);
        int i = m20585a;
        if (m20585a == -1) {
            i = c5088o.m20584b(j);
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bf, code lost:
        if (r0 < r19) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m20616n(long r8) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.C5080i.m20616n(long):int");
    }

    /* renamed from: o */
    private ArrayList<C5088o> m20615o(AbstractC5062c.C5063a c5063a, C4988p c4988p, boolean z) {
        C5085l m20692v;
        ArrayList<C5088o> arrayList = new ArrayList<>();
        for (int i = 0; i < c5063a.f15766d.size(); i++) {
            AbstractC5062c.C5063a c5063a2 = c5063a.f15766d.get(i);
            if (c5063a2.f15763a == 1953653099 && (m20692v = C5065d.m20692v(c5063a2, c5063a.m20714g(1836476516), -9223372036854775807L, null, z, this.f15875v)) != null) {
                C5088o m20696r = C5065d.m20696r(m20692v, c5063a2.m20715f(1835297121).m20715f(1835626086).m20715f(1937007212), c4988p);
                if (m20696r.f15920b != 0) {
                    arrayList.add(m20696r);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: p */
    public static /* synthetic */ AbstractC4978h[] m20614p() {
        return new AbstractC4978h[]{new C5080i()};
    }

    /* renamed from: q */
    private static long m20613q(C5088o c5088o, long j, long j2) {
        int m20617m = m20617m(c5088o, j);
        return m20617m == -1 ? j2 : Math.min(c5088o.f15921c[m20617m], j2);
    }

    /* renamed from: r */
    private void m20612r(AbstractC4979i abstractC4979i) {
        this.f15858e.m18684I(8);
        abstractC4979i.mo21000j(this.f15858e.f17941a, 0, 8);
        this.f15858e.m18679N(4);
        if (this.f15858e.m18668k() == 1751411826) {
            abstractC4979i.mo21003g();
        } else {
            abstractC4979i.mo21002h(4);
        }
    }

    /* renamed from: s */
    private void m20611s(long j) {
        while (!this.f15860g.isEmpty() && this.f15860g.peek().f15764b == j) {
            AbstractC5062c.C5063a pop = this.f15860g.pop();
            if (pop.f15763a == 1836019574) {
                m20609u(pop);
                this.f15860g.clear();
                this.f15861h = 2;
            } else if (!this.f15860g.isEmpty()) {
                this.f15860g.peek().m20717d(pop);
            }
        }
        if (this.f15861h != 2) {
            m20618l();
        }
    }

    /* renamed from: t */
    private static boolean m20610t(C5536v c5536v) {
        c5536v.m18680M(8);
        if (c5536v.m18668k() == 1903435808) {
            return true;
        }
        c5536v.m18679N(4);
        while (c5536v.m18678a() > 0) {
            if (c5536v.m18668k() == 1903435808) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: u */
    private void m20609u(AbstractC5062c.C5063a c5063a) {
        Metadata metadata;
        Format format;
        int i;
        ArrayList arrayList = new ArrayList();
        C4988p c4988p = new C4988p();
        AbstractC5062c.C5064b m20714g = c5063a.m20714g(1969517665);
        Metadata metadata2 = null;
        if (m20714g != null) {
            Metadata m20691w = C5065d.m20691w(m20714g, this.f15875v);
            metadata = m20691w;
            if (m20691w != null) {
                c4988p.m20973c(m20691w);
                metadata = m20691w;
            }
        } else {
            metadata = null;
        }
        AbstractC5062c.C5063a m20715f = c5063a.m20715f(1835365473);
        if (m20715f != null) {
            metadata2 = C5065d.m20702l(m20715f);
        }
        ArrayList<C5088o> m20615o = m20615o(c5063a, c4988p, (this.f15855b & 1) != 0);
        int size = m20615o.size();
        char c = 1;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int i4 = i3;
            if (i2 >= size) {
                this.f15873t = i4;
                this.f15874u = c;
                C5081a[] c5081aArr = (C5081a[]) arrayList.toArray(new C5081a[0]);
                this.f15871r = c5081aArr;
                this.f15872s = m20619k(c5081aArr);
                this.f15870q.mo19752o();
                this.f15870q.mo19764c(this);
                return;
            }
            C5088o c5088o = m20615o.get(i2);
            C5085l c5085l = c5088o.f15919a;
            char c2 = c5085l.f15888e;
            if (c2 == -9223372036854775807L) {
                c2 = c5088o.f15926h;
            }
            c = Math.max((long) c, (long) c2);
            C5081a c5081a = new C5081a(c5085l, c5088o, this.f15870q.mo19748t(i2, c5085l.f15885b));
            Format m21746i = c5085l.f15889f.m21746i(c5088o.f15923e + 30);
            if (c5085l.f15885b != 2 || c2 <= 0) {
                format = m21746i;
            } else {
                int i5 = c5088o.f15920b;
                format = m21746i;
                if (i5 > 1) {
                    format = m21746i.m21749f(i5 / (c2 / 1000000.0f));
                }
            }
            c5081a.f15878c.mo19983d(C5079h.m20634a(c5085l.f15885b, format, metadata, metadata2, c4988p));
            if (c5085l.f15885b == 2) {
                i = i4;
                if (i4 == -1) {
                    i = arrayList.size();
                }
            } else {
                i = i4;
            }
            arrayList.add(c5081a);
            i2++;
            i3 = i;
        }
    }

    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* renamed from: v */
    private boolean m20608v(AbstractC4979i abstractC4979i) {
        if (this.f15864k == 0) {
            if (!abstractC4979i.mo21009a(this.f15859f.f17941a, 0, 8, true)) {
                return false;
            }
            this.f15864k = 8;
            this.f15859f.m18680M(0);
            this.f15863j = this.f15859f.m18691B();
            this.f15862i = this.f15859f.m18668k();
        }
        long j = this.f15863j;
        if (j == 1) {
            abstractC4979i.readFully(this.f15859f.f17941a, 8, 8);
            this.f15864k += 8;
            this.f15863j = this.f15859f.m18688E();
        } else if (j == 0) {
            ?? length = abstractC4979i.getLength();
            char c = length;
            if (length == -1) {
                c = length;
                if (!this.f15860g.isEmpty()) {
                    c = this.f15860g.peek().f15764b;
                }
            }
            if (c != -1) {
                this.f15863j = (c - abstractC4979i.mo20999k()) + this.f15864k;
            }
        }
        if (this.f15863j >= this.f15864k) {
            if (!m20605y(this.f15862i)) {
                if (!m20604z(this.f15862i)) {
                    this.f15865l = null;
                    this.f15861h = 1;
                    return true;
                }
                C5508e.m18910f(this.f15864k == 8);
                C5508e.m18910f(this.f15863j <= 2147483647L);
                C5536v c5536v = new C5536v((int) this.f15863j);
                this.f15865l = c5536v;
                System.arraycopy(this.f15859f.f17941a, 0, c5536v.f17941a, 0, 8);
                this.f15861h = 1;
                return true;
            }
            long mo20999k = abstractC4979i.mo20999k();
            long j2 = this.f15863j;
            int i = this.f15864k;
            long j3 = (mo20999k + j2) - i;
            if (j2 != i && this.f15862i == 1835365473) {
                m20612r(abstractC4979i);
            }
            this.f15860g.push(new AbstractC5062c.C5063a(this.f15862i, j3));
            if (this.f15863j == this.f15864k) {
                m20611s(j3);
                return true;
            }
            m20618l();
            return true;
        }
        throw new ParserException("Atom size less than header length (unsupported).");
    }

    /* renamed from: w */
    private boolean m20607w(AbstractC4979i abstractC4979i, C4991s c4991s) {
        boolean z;
        long j = this.f15863j - this.f15864k;
        long mo20999k = abstractC4979i.mo20999k();
        C5536v c5536v = this.f15865l;
        boolean z2 = true;
        if (c5536v != null) {
            abstractC4979i.readFully(c5536v.f17941a, this.f15864k, (int) j);
            if (this.f15862i == 1718909296) {
                this.f15875v = m20610t(this.f15865l);
            } else if (!this.f15860g.isEmpty()) {
                this.f15860g.peek().m20716e(new AbstractC5062c.C5064b(this.f15862i, this.f15865l));
            }
        } else if (j >= 262144) {
            c4991s.f15517a = abstractC4979i.mo20999k() + j;
            z = true;
            m20611s(mo20999k + j);
            if (z || this.f15861h == 2) {
                z2 = false;
            }
            return z2;
        } else {
            abstractC4979i.mo21002h((int) j);
        }
        z = false;
        m20611s(mo20999k + j);
        if (z) {
        }
        z2 = false;
        return z2;
    }

    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: x */
    private int m20606x(AbstractC4979i abstractC4979i, C4991s c4991s) {
        int i;
        long mo20999k = abstractC4979i.mo20999k();
        if (this.f15866m == -1) {
            int m20616n = m20616n(mo20999k);
            this.f15866m = m20616n;
            if (m20616n == -1) {
                return -1;
            }
        }
        C5081a c5081a = this.f15871r[this.f15866m];
        AbstractC4996v abstractC4996v = c5081a.f15878c;
        int i2 = c5081a.f15879d;
        C5088o c5088o = c5081a.f15877b;
        long j = c5088o.f15921c[i2];
        int i3 = c5088o.f15922d[i2];
        ?? r0 = (j - mo20999k) + this.f15867n;
        if (r0 < 0 || r0 >= 262144) {
            c4991s.f15517a = j;
            return 1;
        }
        char c = r0;
        int i4 = i3;
        if (c5081a.f15876a.f15890g == 1) {
            c = r0 + 8;
            i4 = i3 - 8;
        }
        abstractC4979i.mo21002h(c);
        C5085l c5085l = c5081a.f15876a;
        int i5 = c5085l.f15893j;
        if (i5 == 0) {
            int i6 = i4;
            if ("audio/ac4".equals(c5085l.f15889f.f14461l)) {
                if (this.f15868o == 0) {
                    C4822h.m21587a(i4, this.f15858e);
                    abstractC4996v.mo19985b(this.f15858e, 7);
                    this.f15868o += 7;
                }
                i6 = i4 + 7;
            }
            while (true) {
                int i7 = this.f15868o;
                i = i6;
                if (i7 >= i6) {
                    break;
                }
                int mo19986a = abstractC4996v.mo19986a(abstractC4979i, i6 - i7, false);
                this.f15867n += mo19986a;
                this.f15868o += mo19986a;
                this.f15869p -= mo19986a;
            }
        } else {
            byte[] bArr = this.f15857d.f17941a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i8 = 4 - i5;
            while (true) {
                i = i4;
                if (this.f15868o >= i4) {
                    break;
                }
                int i9 = this.f15869p;
                if (i9 == 0) {
                    abstractC4979i.readFully(bArr, i8, i5);
                    this.f15867n += i5;
                    this.f15857d.m18680M(0);
                    int m18668k = this.f15857d.m18668k();
                    if (m18668k < 0) {
                        throw new ParserException("Invalid NAL length");
                    }
                    this.f15869p = m18668k;
                    this.f15856c.m18680M(0);
                    abstractC4996v.mo19985b(this.f15856c, 4);
                    this.f15868o += 4;
                    i4 += i8;
                } else {
                    int mo19986a2 = abstractC4996v.mo19986a(abstractC4979i, i9, false);
                    this.f15867n += mo19986a2;
                    this.f15868o += mo19986a2;
                    this.f15869p -= mo19986a2;
                }
            }
        }
        C5088o c5088o2 = c5081a.f15877b;
        abstractC4996v.mo19984c(c5088o2.f15924f[i2], c5088o2.f15925g[i2], i, 0, null);
        c5081a.f15879d++;
        this.f15866m = -1;
        this.f15867n = 0;
        this.f15868o = 0;
        this.f15869p = 0;
        return 0;
    }

    /* renamed from: y */
    private static boolean m20605y(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    /* renamed from: z */
    private static boolean m20604z(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        return C5084k.m20595d(abstractC4979i);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: d */
    public boolean mo20622d() {
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        while (true) {
            int i = this.f15861h;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException();
                    }
                    return m20606x(abstractC4979i, c4991s);
                } else if (m20607w(abstractC4979i, c4991s)) {
                    return 1;
                }
            } else if (!m20608v(abstractC4979i)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15870q = abstractC4980j;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        this.f15860g.clear();
        this.f15864k = 0;
        this.f15866m = -1;
        this.f15867n = 0;
        this.f15868o = 0;
        this.f15869p = 0;
        if (j == 0) {
            m20618l();
        } else if (this.f15871r == null) {
        } else {
            m20623A(j2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v66 */
    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: i */
    public AbstractC4992t.C4993a mo20621i(long j) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        int m20584b;
        C5081a[] c5081aArr = this.f15871r;
        if (c5081aArr.length == 0) {
            return new AbstractC4992t.C4993a(C4995u.f15522a);
        }
        int i = this.f15873t;
        if (i != -1) {
            C5088o c5088o = c5081aArr[i].f15877b;
            int m20617m = m20617m(c5088o, j);
            if (m20617m == -1) {
                return new AbstractC4992t.C4993a(C4995u.f15522a);
            }
            c3 = c5088o.f15924f[m20617m];
            ?? r0 = c5088o.f15921c[m20617m];
            if (c3 >= j || m20617m >= c5088o.f15920b - 1 || (m20584b = c5088o.m20584b(j)) == -1 || m20584b == m20617m) {
                c5 = 65535;
                c6 = 1;
            } else {
                c6 = c5088o.f15924f[m20584b];
                c5 = c5088o.f15921c[m20584b];
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
            C5081a[] c5081aArr2 = this.f15871r;
            if (i2 >= c5081aArr2.length) {
                break;
            }
            char c7 = c4;
            char c8 = c2;
            if (i2 != this.f15873t) {
                C5088o c5088o2 = c5081aArr2[i2].f15877b;
                c8 = m20613q(c5088o2, c3, c2);
                char c9 = c4;
                if (c != -9223372036854775807L) {
                    c9 = m20613q(c5088o2, c, c4);
                }
                c7 = c9;
            }
            i2++;
            c4 = c7;
            c2 = c8;
        }
        C4995u c4995u = new C4995u(c3, c2);
        return c == -9223372036854775807L ? new AbstractC4992t.C4993a(c4995u) : new AbstractC4992t.C4993a(c4995u, new C4995u(c, c4));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: j */
    public long mo20620j() {
        return this.f15874u;
    }
}
