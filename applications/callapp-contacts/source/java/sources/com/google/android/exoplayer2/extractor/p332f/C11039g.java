package com.google.android.exoplayer2.extractor.p332f;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C11142r;
import com.google.android.exoplayer2.extractor.C11149w;
import com.google.android.exoplayer2.extractor.p332f.AbstractC11021a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.f.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/g.class */
public final class C11039g implements AbstractC11071h, AbstractC11146v {

    /* renamed from: a */
    public static final AbstractC11133l f35886a = _$$Lambda$g$F9RNb1Ob2Kb87TQr4Aa1FBPMKS4.INSTANCE;

    /* renamed from: b */
    public AbstractC11130j f35887b;

    /* renamed from: c */
    private final int f35888c;

    /* renamed from: d */
    private final C11628u f35889d;

    /* renamed from: e */
    private final C11628u f35890e;

    /* renamed from: f */
    private final C11628u f35891f;

    /* renamed from: g */
    private final C11628u f35892g;

    /* renamed from: h */
    private final ArrayDeque<AbstractC11021a.C11022a> f35893h;

    /* renamed from: i */
    private final C11043i f35894i;

    /* renamed from: j */
    private final List<Metadata.Entry> f35895j;

    /* renamed from: k */
    private int f35896k;

    /* renamed from: l */
    private int f35897l;

    /* renamed from: m */
    private long f35898m;

    /* renamed from: n */
    private int f35899n;

    /* renamed from: o */
    private C11628u f35900o;

    /* renamed from: p */
    private int f35901p;

    /* renamed from: q */
    private int f35902q;

    /* renamed from: r */
    private int f35903r;

    /* renamed from: s */
    private int f35904s;

    /* renamed from: t */
    private C11040a[] f35905t;

    /* renamed from: u */
    private long[][] f35906u;

    /* renamed from: v */
    private int f35907v;

    /* renamed from: w */
    private long f35908w;

    /* renamed from: x */
    private int f35909x;

    /* renamed from: y */
    private MotionPhotoMetadata f35910y;

    /* renamed from: com.google.android.exoplayer2.extractor.f.g$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/g$a.class */
    public static final class C11040a {

        /* renamed from: a */
        public final C11046k f35911a;

        /* renamed from: b */
        public final C11049n f35912b;

        /* renamed from: c */
        public final AbstractC11150x f35913c;

        /* renamed from: d */
        public int f35914d;

        public C11040a(C11046k c11046k, C11049n c11049n, AbstractC11150x abstractC11150x) {
            this.f35911a = c11046k;
            this.f35912b = c11049n;
            this.f35913c = abstractC11150x;
        }
    }

    public C11039g() {
        this(0);
    }

    public C11039g(int i) {
        this.f35888c = i;
        this.f35896k = (i & 4) != 0 ? 3 : 0;
        this.f35894i = new C11043i();
        this.f35895j = new ArrayList();
        this.f35892g = new C11628u(16);
        this.f35893h = new ArrayDeque<>();
        this.f35889d = new C11628u(C11624s.f38709a);
        this.f35890e = new C11628u(4);
        this.f35891f = new C11628u();
        this.f35901p = -1;
    }

    /* renamed from: a */
    private static int m21617a(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    /* renamed from: a */
    private static int m21614a(C11049n c11049n, long j) {
        int m21590a = c11049n.m21590a(j);
        int i = m21590a;
        if (m21590a == -1) {
            i = c11049n.m21589b(j);
        }
        return i;
    }

    /* renamed from: a */
    private static long m21613a(C11049n c11049n, long j, long j2) {
        int m21614a = m21614a(c11049n, j);
        return m21614a == -1 ? j2 : Math.min(c11049n.f35964c[m21614a], j2);
    }

    /* renamed from: a */
    public static /* synthetic */ C11046k m21615a(C11046k c11046k) {
        return c11046k;
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* renamed from: a */
    private void m21616a(AbstractC11021a.C11022a c11022a) throws ParserException {
        Metadata metadata;
        Metadata metadata2;
        ArrayList arrayList = new ArrayList();
        boolean z = this.f35909x == 1;
        C11142r c11142r = new C11142r();
        AbstractC11021a.C11023b m21681c = c11022a.m21681c(1969517665);
        if (m21681c != null) {
            Pair<Metadata, Metadata> m21677a = C11024b.m21677a(m21681c);
            metadata = (Metadata) m21677a.first;
            metadata2 = (Metadata) m21677a.second;
            if (metadata != null) {
                c11142r.m21392a(metadata);
            }
        } else {
            metadata2 = null;
            metadata = null;
        }
        AbstractC11021a.C11022a m21680d = c11022a.m21680d(1835365473);
        Metadata m21679a = m21680d != null ? C11024b.m21679a(m21680d) : null;
        List<C11049n> m21678a = C11024b.m21678a(c11022a, c11142r, -9223372036854775807L, null, (this.f35888c & 1) != 0, z, _$$Lambda$g$ufc9aTjlFv07_Pl368k76FOyDvs.INSTANCE);
        AbstractC11130j abstractC11130j = (AbstractC11130j) C11593a.m20020b(this.f35887b);
        int size = m21678a.size();
        int i = -1;
        char c = 1;
        for (int i2 = 0; i2 < size; i2++) {
            C11049n c11049n = m21678a.get(i2);
            if (c11049n.f35963b != 0) {
                C11046k c11046k = c11049n.f35962a;
                char c2 = c11046k.f35931e != -9223372036854775807L ? c11046k.f35931e : c11049n.f35969h;
                c = Math.max((long) c, (long) c2);
                C11040a c11040a = new C11040a(c11046k, c11049n, abstractC11130j.mo20905a(i2, c11046k.f35928b));
                int i3 = c11049n.f35966e;
                Format.C10828a buildUpon = c11046k.f35932f.buildUpon();
                buildUpon.f34793l = i3 + 30;
                if (c11046k.f35928b == 2 && c2 > 0 && c11049n.f35963b > 1) {
                    buildUpon.f34799r = c11049n.f35963b / (c2 / 1000000.0f);
                }
                C11038f.m21626a(c11046k.f35928b, c11142r, buildUpon);
                C11038f.m21625a(c11046k.f35928b, metadata, m21679a, buildUpon, metadata2, this.f35895j.isEmpty() ? null : new Metadata(this.f35895j));
                c11040a.f35913c.mo20831a(buildUpon.m22321a());
                if (c11046k.f35928b == 2 && i == -1) {
                    i = arrayList.size();
                }
                arrayList.add(c11040a);
            }
        }
        this.f35907v = i;
        this.f35908w = c;
        C11040a[] c11040aArr = (C11040a[]) arrayList.toArray(new C11040a[0]);
        this.f35905t = c11040aArr;
        this.f35906u = m21612a(c11040aArr);
        abstractC11130j.mo20907a();
        abstractC11130j.mo20901a(this);
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
    private static long[][] m21612a(C11040a[] c11040aArr) {
        ?? r0 = new long[c11040aArr.length];
        int[] iArr = new int[c11040aArr.length];
        ?? r02 = new long[c11040aArr.length];
        boolean[] zArr = new boolean[c11040aArr.length];
        for (int i = 0; i < c11040aArr.length; i++) {
            r0[i] = new long[c11040aArr[i].f35912b.f35963b];
            r02[i] = c11040aArr[i].f35912b.f35967f[0];
        }
        ?? r11 = 0;
        int i2 = 0;
        while (i2 < c11040aArr.length) {
            ?? r14 = 65535;
            int i3 = -1;
            int i4 = 0;
            while (i4 < c11040aArr.length) {
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
            r11 += c11040aArr[i3].f35912b.f35965d[i6];
            int i7 = i6 + 1;
            iArr[i3] = i7;
            if (i7 < r0[i3].length) {
                r02[i3] = c11040aArr[i3].f35912b.f35967f[i7];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return r0;
    }

    /* renamed from: b */
    private void m21611b(long j) throws ParserException {
        while (!this.f35893h.isEmpty() && this.f35893h.peek().f35795b == j) {
            AbstractC11021a.C11022a pop = this.f35893h.pop();
            if (pop.f35794a == 1836019574) {
                m21616a(pop);
                this.f35893h.clear();
                this.f35896k = 2;
            } else if (!this.f35893h.isEmpty()) {
                this.f35893h.peek().m21683a(pop);
            }
        }
        if (this.f35896k != 2) {
            m21610c();
        }
    }

    /* renamed from: c */
    private void m21610c() {
        this.f35896k = 0;
        this.f35899n = 0;
    }

    @RequiresNonNull({"tracks"})
    /* renamed from: c */
    private void m21609c(long j) {
        C11040a[] c11040aArr;
        for (C11040a c11040a : this.f35905t) {
            C11049n c11049n = c11040a.f35912b;
            int m21590a = c11049n.m21590a(j);
            int i = m21590a;
            if (m21590a == -1) {
                i = c11049n.m21589b(j);
            }
            c11040a.f35914d = i;
        }
    }

    /* renamed from: d */
    public static /* synthetic */ AbstractC11071h[] m21608d() {
        return new AbstractC11071h[]{new C11039g()};
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x038d, code lost:
        if (r0 < r23) goto L96;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:291:0x075a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0af2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x03e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03c4  */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v227, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v462, types: [long] */
    /* JADX WARN: Type inference failed for: r0v476, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo21437a(com.google.android.exoplayer2.extractor.AbstractC11121i r17, com.google.android.exoplayer2.extractor.C11145u r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p332f.C11039g.mo21437a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v68 */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        int m21589b;
        if (((C11040a[]) C11593a.m20020b(this.f35905t)).length == 0) {
            return new AbstractC11146v.C11147a(C11149w.f36506a);
        }
        int i = this.f35907v;
        if (i != -1) {
            C11049n c11049n = this.f35905t[i].f35912b;
            int m21614a = m21614a(c11049n, j);
            if (m21614a == -1) {
                return new AbstractC11146v.C11147a(C11149w.f36506a);
            }
            c3 = c11049n.f35967f[m21614a];
            ?? r0 = c11049n.f35964c[m21614a];
            if (c3 >= j || m21614a >= c11049n.f35963b - 1 || (m21589b = c11049n.m21589b(j)) == -1 || m21589b == m21614a) {
                c5 = 65535;
                c6 = 1;
            } else {
                c6 = c11049n.f35967f[m21589b];
                c5 = c11049n.f35964c[m21589b];
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
            C11040a[] c11040aArr = this.f35905t;
            if (i2 >= c11040aArr.length) {
                break;
            }
            char c7 = c4;
            char c8 = c2;
            if (i2 != this.f35907v) {
                C11049n c11049n2 = c11040aArr[i2].f35912b;
                c8 = m21613a(c11049n2, c3, c2);
                char c9 = c4;
                if (c != -9223372036854775807L) {
                    c9 = m21613a(c11049n2, c, c4);
                }
                c7 = c9;
            }
            i2++;
            c4 = c7;
            c2 = c8;
        }
        C11149w c11149w = new C11149w(c3, c2);
        return c == -9223372036854775807L ? new AbstractC11146v.C11147a(c11149w) : new AbstractC11146v.C11147a(c11149w, new C11149w(c, c4));
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        this.f35893h.clear();
        this.f35899n = 0;
        this.f35901p = -1;
        this.f35902q = 0;
        this.f35903r = 0;
        this.f35904s = 0;
        if (j != 0) {
            if (this.f35905t == null) {
                return;
            }
            m21609c(j2);
        } else if (this.f35896k != 3) {
            m21610c();
        } else {
            this.f35894i.m21604a();
            this.f35895j.clear();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f35887b = abstractC11130j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        return C11045j.m21599a(abstractC11121i, (this.f35888c & 2) != 0);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f35908w;
    }
}
