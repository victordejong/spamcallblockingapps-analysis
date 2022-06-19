package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u;

import java.io.IOException;
import java.util.ArrayDeque;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27189o;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.AbstractC27213a;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.u.f */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/f.class */
public final class C27225f implements AbstractC27179g, AbstractC27186n {

    /* renamed from: f */
    public int f76330f;

    /* renamed from: g */
    public int f76331g;

    /* renamed from: h */
    public long f76332h;

    /* renamed from: i */
    public int f76333i;

    /* renamed from: j */
    public C27434m f76334j;

    /* renamed from: l */
    public int f76336l;

    /* renamed from: m */
    public int f76337m;

    /* renamed from: n */
    public boolean f76338n;

    /* renamed from: o */
    public AbstractC27180h f76339o;

    /* renamed from: p */
    public C27226a[] f76340p;

    /* renamed from: q */
    public long[][] f76341q;

    /* renamed from: r */
    public int f76342r;

    /* renamed from: s */
    public long f76343s;

    /* renamed from: t */
    public boolean f76344t;

    /* renamed from: d */
    public final C27434m f76328d = new C27434m(16);

    /* renamed from: e */
    public final ArrayDeque<AbstractC27213a.C27214a> f76329e = new ArrayDeque<>();

    /* renamed from: a */
    public final C27434m f76325a = new C27434m(C27430k.f77176a);

    /* renamed from: b */
    public final C27434m f76326b = new C27434m(4);

    /* renamed from: c */
    public final C27434m f76327c = new C27434m();

    /* renamed from: k */
    public int f76335k = -1;

    /* renamed from: n3.y.b.a.q0.u.f$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/f$a.class */
    public static final class C27226a {

        /* renamed from: a */
        public final C27229i f76345a;

        /* renamed from: b */
        public final C27232l f76346b;

        /* renamed from: c */
        public final AbstractC27190p f76347c;

        /* renamed from: d */
        public int f76348d;

        public C27226a(C27229i c27229i, C27232l c27232l, AbstractC27190p abstractC27190p) {
            this.f76345a = c27229i;
            this.f76346b = c27232l;
            this.f76347c = abstractC27190p;
        }
    }

    public C27225f(int i) {
    }

    /* renamed from: k */
    public static long m675k(C27232l c27232l, long j, long j2) {
        int m669a = c27232l.m669a(j);
        int i = m669a;
        if (m669a == -1) {
            i = c27232l.m668b(j);
        }
        return i == -1 ? j2 : Math.min(c27232l.f76387c[i], j2);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76329e.clear();
        this.f76333i = 0;
        this.f76335k = -1;
        this.f76336l = 0;
        this.f76337m = 0;
        this.f76338n = false;
        if (j == 0) {
            m676j();
            return;
        }
        C27226a[] c27226aArr = this.f76340p;
        if (c27226aArr == null) {
            return;
        }
        for (C27226a c27226a : c27226aArr) {
            C27232l c27232l = c27226a.f76346b;
            int m669a = c27232l.m669a(j2);
            int i = m669a;
            if (m669a == -1) {
                i = c27232l.m668b(j2);
            }
            c27226a.f76348d = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v67 */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: b */
    public AbstractC27186n.C27187a mo602b(long j) {
        char c;
        char c2;
        char c3;
        int m668b;
        char c4 = j;
        C27189o c27189o = C27189o.f76060c;
        C27226a[] c27226aArr = this.f76340p;
        if (c27226aArr.length == 0) {
            return new AbstractC27186n.C27187a(c27189o);
        }
        char c5 = 65535;
        int i = this.f76342r;
        if (i != -1) {
            C27232l c27232l = c27226aArr[i].f76346b;
            int m669a = c27232l.m669a(c4);
            int i2 = m669a;
            if (m669a == -1) {
                i2 = c27232l.m668b(c4);
            }
            if (i2 == -1) {
                return new AbstractC27186n.C27187a(c27189o);
            }
            ?? r0 = c27232l.f76390f[i2];
            ?? r02 = c27232l.f76387c[i2];
            if (r0 >= c4 || i2 >= c27232l.f76386b - 1 || (m668b = c27232l.m668b(c4)) == -1 || m668b == i2) {
                c3 = 1;
            } else {
                c3 = c27232l.f76390f[m668b];
                c5 = c27232l.f76387c[m668b];
            }
            c4 = r0;
            c2 = c3;
            c = r02;
        } else {
            c = 65535;
            c2 = 1;
        }
        int i3 = 0;
        while (true) {
            C27226a[] c27226aArr2 = this.f76340p;
            if (i3 >= c27226aArr2.length) {
                break;
            }
            char c6 = c5;
            char c7 = c;
            if (i3 != this.f76342r) {
                C27232l c27232l2 = c27226aArr2[i3].f76346b;
                c7 = m675k(c27232l2, c4, c);
                char c8 = c5;
                if (c2 != -9223372036854775807L) {
                    c8 = m675k(c27232l2, c2, c5);
                }
                c6 = c8;
            }
            i3++;
            c5 = c6;
            c = c7;
        }
        C27189o c27189o2 = new C27189o(c4, c);
        return c2 == -9223372036854775807L ? new AbstractC27186n.C27187a(c27189o2) : new AbstractC27186n.C27187a(c27189o2, new C27189o(c2, c5));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: c */
    public boolean mo601c() {
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76339o = abstractC27180h;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: g */
    public long mo599g() {
        return this.f76343s;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        return C27228h.m672a(c27176d, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e1, code lost:
        if (r0 < r23) goto L30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0488 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0744 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010f  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v341, types: [long] */
    /* JADX WARN: Type inference failed for: r0v356, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo603i(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r9, p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1873
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27225f.mo603i(n3.y.b.a.q0.d, n3.y.b.a.q0.m):int");
    }

    /* renamed from: j */
    public final void m676j() {
        this.f76330f = 0;
        this.f76333i = 0;
    }

    /* renamed from: l */
    public final void m674l(long j) throws C27074c0 {
        while (!this.f76329e.isEmpty() && this.f76329e.peek().f76259b == j) {
            AbstractC27213a.C27214a pop = this.f76329e.pop();
            if (pop.f76258a == 1836019574) {
                m673m(pop);
                this.f76329e.clear();
                this.f76330f = 2;
            } else if (!this.f76329e.isEmpty()) {
                this.f76329e.peek().f76261d.add(pop);
            }
        }
        if (this.f76330f != 2) {
            m676j();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0524 A[Catch: all -> 0x0447, TRY_LEAVE, TryCatch #0 {all -> 0x0447, blocks: (B:26:0x00f8, B:28:0x0104, B:35:0x0125, B:38:0x013f, B:41:0x0156, B:44:0x016d, B:47:0x0186, B:50:0x019f, B:52:0x01b1, B:62:0x01e5, B:64:0x01f2, B:67:0x0231, B:70:0x0248, B:73:0x025f, B:76:0x0276, B:79:0x028d, B:82:0x02a4, B:85:0x02bb, B:88:0x02d4, B:91:0x02ed, B:94:0x0304, B:98:0x0328, B:101:0x0336, B:104:0x0352, B:107:0x0369, B:111:0x0388, B:119:0x03a8, B:122:0x03e0, B:124:0x03f2, B:125:0x0418, B:127:0x042a, B:128:0x0436, B:142:0x0479, B:145:0x0490, B:148:0x04a7, B:151:0x04be, B:154:0x04d5, B:157:0x04ec, B:160:0x0503, B:161:0x0512, B:163:0x0524, B:164:0x0530, B:167:0x0548, B:168:0x0557), top: B:544:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0530 A[Catch: all -> 0x0447, TRY_ENTER, TryCatch #0 {all -> 0x0447, blocks: (B:26:0x00f8, B:28:0x0104, B:35:0x0125, B:38:0x013f, B:41:0x0156, B:44:0x016d, B:47:0x0186, B:50:0x019f, B:52:0x01b1, B:62:0x01e5, B:64:0x01f2, B:67:0x0231, B:70:0x0248, B:73:0x025f, B:76:0x0276, B:79:0x028d, B:82:0x02a4, B:85:0x02bb, B:88:0x02d4, B:91:0x02ed, B:94:0x0304, B:98:0x0328, B:101:0x0336, B:104:0x0352, B:107:0x0369, B:111:0x0388, B:119:0x03a8, B:122:0x03e0, B:124:0x03f2, B:125:0x0418, B:127:0x042a, B:128:0x0436, B:142:0x0479, B:145:0x0490, B:148:0x04a7, B:151:0x04be, B:154:0x04d5, B:157:0x04ec, B:160:0x0503, B:161:0x0512, B:163:0x0524, B:164:0x0530, B:167:0x0548, B:168:0x0557), top: B:544:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0790  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x099d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0125 A[Catch: all -> 0x0447, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0447, blocks: (B:26:0x00f8, B:28:0x0104, B:35:0x0125, B:38:0x013f, B:41:0x0156, B:44:0x016d, B:47:0x0186, B:50:0x019f, B:52:0x01b1, B:62:0x01e5, B:64:0x01f2, B:67:0x0231, B:70:0x0248, B:73:0x025f, B:76:0x0276, B:79:0x028d, B:82:0x02a4, B:85:0x02bb, B:88:0x02d4, B:91:0x02ed, B:94:0x0304, B:98:0x0328, B:101:0x0336, B:104:0x0352, B:107:0x0369, B:111:0x0388, B:119:0x03a8, B:122:0x03e0, B:124:0x03f2, B:125:0x0418, B:127:0x042a, B:128:0x0436, B:142:0x0479, B:145:0x0490, B:148:0x04a7, B:151:0x04be, B:154:0x04d5, B:157:0x04ec, B:160:0x0503, B:161:0x0512, B:163:0x0524, B:164:0x0530, B:167:0x0548, B:168:0x0557), top: B:544:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0c9b  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x1324  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x1456 A[LOOP:22: B:523:0x144f->B:525:0x1456, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:529:0x148a  */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v261, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v435, types: [long] */
    /* JADX WARN: Type inference failed for: r0v439 */
    /* JADX WARN: Type inference failed for: r0v457, types: [long] */
    /* JADX WARN: Type inference failed for: r0v485, types: [long] */
    /* JADX WARN: Type inference failed for: r0v487, types: [long] */
    /* JADX WARN: Type inference failed for: r0v526, types: [long] */
    /* JADX WARN: Type inference failed for: r0v583, types: [long] */
    /* JADX WARN: Type inference failed for: r0v588, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v660, types: [long] */
    /* JADX WARN: Type inference failed for: r0v662, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m673m(p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.AbstractC27213a.C27214a r16) throws p1727n3.p1874y.p1876b.p1877a.C27074c0 {
        /*
            Method dump skipped, instructions count: 5447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27225f.m673m(n3.y.b.a.q0.u.a$a):void");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
