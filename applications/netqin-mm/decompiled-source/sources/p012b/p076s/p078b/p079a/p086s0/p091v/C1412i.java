package p012b.p076s.p078b.p079a.p086s0.p091v;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1354k;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p086s0.p091v.AbstractC1392a;
/* renamed from: b.s.b.a.s0.v.i */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/i.class */
public final class C1412i implements AbstractC1350g, AbstractC1358o {

    /* renamed from: a */
    public final int f5664a;

    /* renamed from: b */
    public final C1184p f5665b;

    /* renamed from: c */
    public final C1184p f5666c;

    /* renamed from: d */
    public final C1184p f5667d;

    /* renamed from: e */
    public final C1184p f5668e;

    /* renamed from: f */
    public final ArrayDeque<AbstractC1392a.C1393a> f5669f;

    /* renamed from: g */
    public int f5670g;

    /* renamed from: h */
    public int f5671h;

    /* renamed from: i */
    public long f5672i;

    /* renamed from: j */
    public int f5673j;

    /* renamed from: k */
    public C1184p f5674k;

    /* renamed from: l */
    public int f5675l;

    /* renamed from: m */
    public int f5676m;

    /* renamed from: n */
    public int f5677n;

    /* renamed from: o */
    public boolean f5678o;

    /* renamed from: p */
    public AbstractC1352i f5679p;

    /* renamed from: q */
    public C1413a[] f5680q;

    /* renamed from: r */
    public long[][] f5681r;

    /* renamed from: s */
    public int f5682s;

    /* renamed from: t */
    public long f5683t;

    /* renamed from: u */
    public boolean f5684u;

    /* renamed from: b.s.b.a.s0.v.i$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/i$a.class */
    public static final class C1413a {

        /* renamed from: a */
        public final C1417l f5685a;

        /* renamed from: b */
        public final C1420o f5686b;

        /* renamed from: c */
        public final AbstractC1362q f5687c;

        /* renamed from: d */
        public int f5688d;

        public C1413a(C1417l lVar, C1420o oVar, AbstractC1362q qVar) {
            this.f5685a = lVar;
            this.f5686b = oVar;
            this.f5687c = qVar;
        }
    }

    static {
        AbstractC1353j jVar = C1411h.f5663a;
    }

    public C1412i() {
        this(0);
    }

    public C1412i(int i) {
        this.f5664a = i;
        this.f5668e = new C1184p(16);
        this.f5669f = new ArrayDeque<>();
        this.f5665b = new C1184p(C1180n.f4714a);
        this.f5666c = new C1184p(4);
        this.f5667d = new C1184p();
        this.f5675l = -1;
    }

    /* renamed from: a */
    public static int m33393a(C1420o oVar, long j) {
        int a = oVar.m33362a(j);
        int i = a;
        if (a == -1) {
            i = oVar.m33361b(j);
        }
        return i;
    }

    /* renamed from: a */
    public static long m33392a(C1420o oVar, long j, long j2) {
        int a = m33393a(oVar, j);
        return a == -1 ? j2 : Math.min(oVar.f5728c[a], j2);
    }

    /* renamed from: a */
    public static boolean m33397a(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    /* renamed from: a */
    public static boolean m33396a(C1184p pVar) {
        pVar.m34358e(8);
        if (pVar.m34357f() == 1903435808) {
            return true;
        }
        pVar.m34356f(4);
        while (pVar.m34372a() > 0) {
            if (pVar.m34357f() == 1903435808) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long[]] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[][] m33391a(p012b.p076s.p078b.p079a.p086s0.p091v.C1412i.C1413a[] r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1412i.m33391a(b.s.b.a.s0.v.i$a[]):long[][]");
    }

    /* renamed from: b */
    public static boolean m33390b(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    /* renamed from: f */
    public static final /* synthetic */ AbstractC1350g[] m33381f() {
        return new AbstractC1350g[]{new C1412i()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        while (true) {
            int i = this.f5670g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return m33385c(hVar, nVar);
                    }
                    throw new IllegalStateException();
                } else if (m33388b(hVar, nVar)) {
                    return 1;
                }
            } else if (!m33386c(hVar)) {
                return -1;
            }
        }
    }

    /* renamed from: a */
    public final ArrayList<C1420o> m33394a(AbstractC1392a.C1393a aVar, C1354k kVar, boolean z) throws ParserException {
        C1417l a;
        ArrayList<C1420o> arrayList = new ArrayList<>();
        for (int i = 0; i < aVar.f5575d.size(); i++) {
            AbstractC1392a.C1393a aVar2 = aVar.f5575d.get(i);
            if (aVar2.f5572a == 1953653099 && (a = C1395b.m33477a(aVar2, aVar.m33488e(1836476516), -9223372036854775807L, (DrmInitData) null, z, this.f5684u)) != null) {
                C1420o a2 = C1395b.m33475a(a, aVar2.m33489d(1835297121).m33489d(1835626086).m33489d(1937007212), kVar);
                if (a2.f5727b != 0) {
                    arrayList.add(a2);
                }
            }
        }
        return arrayList;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f5669f.clear();
        this.f5673j = 0;
        this.f5675l = -1;
        this.f5676m = 0;
        this.f5677n = 0;
        this.f5678o = false;
        if (j == 0) {
            m33383e();
        } else if (this.f5680q != null) {
            m33382e(j2);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5679p = iVar;
    }

    /* renamed from: a */
    public final void m33395a(AbstractC1392a.C1393a aVar) throws ParserException {
        Metadata metadata;
        Format format;
        ArrayList arrayList = new ArrayList();
        C1354k kVar = new C1354k();
        AbstractC1392a.C1394b e = aVar.m33488e(1969517665);
        Metadata metadata2 = null;
        if (e != null) {
            Metadata a = C1395b.m33476a(e, this.f5684u);
            metadata = a;
            if (a != null) {
                kVar.m33610a(a);
                metadata = a;
            }
        } else {
            metadata = null;
        }
        AbstractC1392a.C1393a d = aVar.m33489d(1835365473);
        if (d != null) {
            metadata2 = C1395b.m33470b(d);
        }
        ArrayList<C1420o> a2 = m33394a(aVar, kVar, (this.f5664a & 1) != 0);
        int size = a2.size();
        long j = -9223372036854775807L;
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            C1420o oVar = a2.get(i2);
            C1417l lVar = oVar.f5726a;
            long j2 = lVar.f5695e;
            if (j2 == -9223372036854775807L) {
                j2 = oVar.f5733h;
            }
            j = Math.max(j, j2);
            C1413a aVar2 = new C1413a(lVar, oVar, this.f5679p.mo32666a(i2, lVar.f5692b));
            Format b = lVar.f5696f.m38170b(oVar.f5730e + 30);
            if (lVar.f5692b != 2 || j2 <= 0) {
                format = b;
            } else {
                int i3 = oVar.f5727b;
                format = b;
                if (i3 > 1) {
                    format = b.m38194a(i3 / (((float) j2) / 1000000.0f));
                }
            }
            aVar2.f5687c.mo32623a(C1410g.m33408a(lVar.f5692b, format, metadata, metadata2, kVar));
            if (lVar.f5692b == 2) {
                i = i;
                if (i == -1) {
                    i = arrayList.size();
                }
            } else {
                i = i;
            }
            arrayList.add(aVar2);
        }
        this.f5682s = i;
        this.f5683t = j;
        C1413a[] aVarArr = (C1413a[]) arrayList.toArray(new C1413a[0]);
        this.f5680q = aVarArr;
        this.f5681r = m33391a(aVarArr);
        this.f5679p.mo32639e();
        this.f5679p.mo32656a(this);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        return C1416k.m33372b(hVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p012b.p076s.p078b.p079a.p086s0.AbstractC1358o.C1359a mo33118b(long r11) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1412i.mo33118b(long):b.s.b.a.s0.o$a");
    }

    /* renamed from: b */
    public final void m33389b(AbstractC1351h hVar) throws IOException, InterruptedException {
        this.f5667d.m34362c(8);
        hVar.mo33619a(this.f5667d.f4738a, 0, 8);
        this.f5667d.m34356f(4);
        if (this.f5667d.m34357f() == 1751411826) {
            hVar.mo33614c();
        } else {
            hVar.mo33613c(4);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public boolean mo33119b() {
        return true;
    }

    /* renamed from: b */
    public final boolean m33388b(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        boolean z;
        long j = this.f5672i - this.f5673j;
        long position = hVar.getPosition();
        C1184p pVar = this.f5674k;
        boolean z2 = true;
        if (pVar != null) {
            hVar.readFully(pVar.f4738a, this.f5673j, (int) j);
            if (this.f5671h == 1718909296) {
                this.f5684u = m33396a(this.f5674k);
            } else if (!this.f5669f.isEmpty()) {
                this.f5669f.peek().m33490a(new AbstractC1392a.C1394b(this.f5671h, this.f5674k));
            }
        } else if (j < 262144) {
            hVar.mo33613c((int) j);
        } else {
            nVar.f5355a = hVar.getPosition() + j;
            z = true;
            m33384d(position + j);
            if (z || this.f5670g == 2) {
                z2 = false;
            }
            return z2;
        }
        z = false;
        m33384d(position + j);
        if (z) {
        }
        z2 = false;
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bf, code lost:
        if (r0 < (r19 == true ? 1 : 0)) goto L_0x00c2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x012a, code lost:
        if ((r16 == true ? 1 : 0) < (r13 + 10485760)) goto L_0x012d;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long[][]] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m33387c(long r8) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1412i.m33387c(long):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m33385c(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r9, p012b.p076s.p078b.p079a.p086s0.C1357n r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1412i.m33385c(b.s.b.a.s0.h, b.s.b.a.s0.n):int");
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: c */
    public long mo33117c() {
        return this.f5683t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m33386c(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r8) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1412i.m33386c(b.s.b.a.s0.h):boolean");
    }

    /* renamed from: d */
    public final void m33384d(long j) throws ParserException {
        while (!this.f5669f.isEmpty() && this.f5669f.peek().f5573b == j) {
            AbstractC1392a.C1393a pop = this.f5669f.pop();
            if (pop.f5572a == 1836019574) {
                m33395a(pop);
                this.f5669f.clear();
                this.f5670g = 2;
            } else if (!this.f5669f.isEmpty()) {
                this.f5669f.peek().m33491a(pop);
            }
        }
        if (this.f5670g != 2) {
            m33383e();
        }
    }

    /* renamed from: e */
    public final void m33383e() {
        this.f5670g = 0;
        this.f5673j = 0;
    }

    /* renamed from: e */
    public final void m33382e(long j) {
        C1413a[] aVarArr;
        for (C1413a aVar : this.f5680q) {
            C1420o oVar = aVar.f5686b;
            int a = oVar.m33362a(j);
            int i = a;
            if (a == -1) {
                i = oVar.m33361b(j);
            }
            aVar.f5688d = i;
        }
    }
}
