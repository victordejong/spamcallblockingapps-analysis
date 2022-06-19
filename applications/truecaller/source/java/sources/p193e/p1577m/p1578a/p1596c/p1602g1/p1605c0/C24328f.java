package p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0;

import java.io.IOException;
import java.util.ArrayDeque;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24421r;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.AbstractC24316a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24794r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.c0.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/f.class */
public final class C24328f implements AbstractC24408h, AbstractC24418q {

    /* renamed from: f */
    public int f67594f;

    /* renamed from: g */
    public int f67595g;

    /* renamed from: h */
    public long f67596h;

    /* renamed from: i */
    public int f67597i;

    /* renamed from: j */
    public C24798t f67598j;

    /* renamed from: l */
    public int f67600l;

    /* renamed from: m */
    public int f67601m;

    /* renamed from: n */
    public int f67602n;

    /* renamed from: o */
    public AbstractC24409i f67603o;

    /* renamed from: p */
    public C24329a[] f67604p;

    /* renamed from: q */
    public long[][] f67605q;

    /* renamed from: r */
    public int f67606r;

    /* renamed from: s */
    public long f67607s;

    /* renamed from: t */
    public boolean f67608t;

    /* renamed from: d */
    public final C24798t f67592d = new C24798t(16);

    /* renamed from: e */
    public final ArrayDeque<AbstractC24316a.C24317a> f67593e = new ArrayDeque<>();

    /* renamed from: a */
    public final C24798t f67589a = new C24798t(C24794r.f69480a);

    /* renamed from: b */
    public final C24798t f67590b = new C24798t(4);

    /* renamed from: c */
    public final C24798t f67591c = new C24798t();

    /* renamed from: k */
    public int f67599k = -1;

    /* renamed from: e.m.a.c.g1.c0.f$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/f$a.class */
    public static final class C24329a {

        /* renamed from: a */
        public final C24332i f67609a;

        /* renamed from: b */
        public final C24335l f67610b;

        /* renamed from: c */
        public final AbstractC24422s f67611c;

        /* renamed from: d */
        public int f67612d;

        public C24329a(C24332i c24332i, C24335l c24335l, AbstractC24422s abstractC24422s) {
            this.f67609a = c24332i;
            this.f67610b = c24335l;
            this.f67611c = abstractC24422s;
        }
    }

    public C24328f(int i) {
    }

    /* renamed from: k */
    public static long m5239k(C24335l c24335l, long j, long j2) {
        int m5233a = c24335l.m5233a(j);
        int i = m5233a;
        if (m5233a == -1) {
            i = c24335l.m5232b(j);
        }
        return i == -1 ? j2 : Math.min(c24335l.f67651c[i], j2);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        this.f67593e.clear();
        this.f67597i = 0;
        this.f67599k = -1;
        this.f67600l = 0;
        this.f67601m = 0;
        this.f67602n = 0;
        if (j == 0) {
            m5240j();
            return;
        }
        C24329a[] c24329aArr = this.f67604p;
        if (c24329aArr == null) {
            return;
        }
        for (C24329a c24329a : c24329aArr) {
            C24335l c24335l = c24329a.f67610b;
            int m5233a = c24335l.m5233a(j2);
            int i = m5233a;
            if (m5233a == -1) {
                i = c24335l.m5232b(j2);
            }
            c24329a.f67612d = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v67 */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: b */
    public AbstractC24418q.C24419a mo5144b(long j) {
        char c;
        char c2;
        char c3;
        int m5232b;
        char c4 = j;
        C24421r c24421r = C24421r.f68121c;
        C24329a[] c24329aArr = this.f67604p;
        if (c24329aArr.length == 0) {
            return new AbstractC24418q.C24419a(c24421r);
        }
        char c5 = 65535;
        int i = this.f67606r;
        if (i != -1) {
            C24335l c24335l = c24329aArr[i].f67610b;
            int m5233a = c24335l.m5233a(c4);
            int i2 = m5233a;
            if (m5233a == -1) {
                i2 = c24335l.m5232b(c4);
            }
            if (i2 == -1) {
                return new AbstractC24418q.C24419a(c24421r);
            }
            ?? r0 = c24335l.f67654f[i2];
            ?? r02 = c24335l.f67651c[i2];
            if (r0 >= c4 || i2 >= c24335l.f67650b - 1 || (m5232b = c24335l.m5232b(c4)) == -1 || m5232b == i2) {
                c3 = 1;
            } else {
                c3 = c24335l.f67654f[m5232b];
                c5 = c24335l.f67651c[m5232b];
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
            C24329a[] c24329aArr2 = this.f67604p;
            if (i3 >= c24329aArr2.length) {
                break;
            }
            char c6 = c5;
            char c7 = c;
            if (i3 != this.f67606r) {
                C24335l c24335l2 = c24329aArr2[i3].f67610b;
                c7 = m5239k(c24335l2, c4, c);
                char c8 = c5;
                if (c2 != -9223372036854775807L) {
                    c8 = m5239k(c24335l2, c2, c5);
                }
                c6 = c8;
            }
            i3++;
            c5 = c6;
            c = c7;
        }
        C24421r c24421r2 = new C24421r(c4, c);
        return c2 == -9223372036854775807L ? new AbstractC24418q.C24419a(c24421r2) : new AbstractC24418q.C24419a(c24421r2, new C24421r(c2, c5));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: c */
    public boolean mo5143c() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e1, code lost:
        if (r0 < r23) goto L30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0483 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0747 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010f  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v341, types: [long] */
    /* JADX WARN: Type inference failed for: r0v356, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo5128d(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r9, p193e.p1577m.p1578a.p1596c.p1602g1.C24417p r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24328f.mo5128d(e.m.a.c.g1.e, e.m.a.c.g1.p):int");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: g */
    public long mo5142g() {
        return this.f67607s;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f67603o = abstractC24409i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        return C24331h.m5236a(c24353e, false);
    }

    /* renamed from: j */
    public final void m5240j() {
        this.f67594f = 0;
        this.f67597i = 0;
    }

    /* renamed from: l */
    public final void m5238l(long j) throws C24560m0 {
        while (!this.f67593e.isEmpty() && this.f67593e.peek().f67525b == j) {
            AbstractC24316a.C24317a pop = this.f67593e.pop();
            if (pop.f67524a == 1836019574) {
                m5237m(pop);
                this.f67593e.clear();
                this.f67594f = 2;
            } else if (!this.f67593e.isEmpty()) {
                this.f67593e.peek().f67527d.add(pop);
            }
        }
        if (this.f67594f != 2) {
            m5240j();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0745  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x094d  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0c18  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0125 A[Catch: all -> 0x0420, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0420, blocks: (B:26:0x00f8, B:28:0x0104, B:35:0x0125, B:38:0x013f, B:41:0x0156, B:44:0x016d, B:47:0x0186, B:50:0x019f, B:52:0x01b1, B:62:0x01e5, B:63:0x01ee, B:66:0x022d, B:69:0x0244, B:72:0x025b, B:75:0x0272, B:78:0x0289, B:81:0x02a0, B:84:0x02b7, B:87:0x02d0, B:90:0x02e9, B:93:0x0300, B:97:0x0324, B:100:0x0332, B:103:0x034e, B:106:0x0365, B:110:0x0384, B:118:0x03a4, B:121:0x03dc, B:123:0x03ee, B:124:0x0414, B:138:0x0452, B:141:0x0469, B:144:0x0480, B:147:0x0497, B:150:0x04ae, B:153:0x04c5, B:156:0x04dc, B:157:0x04eb, B:159:0x04fe, B:160:0x050d), top: B:510:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0dee  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0e15  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x1298  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x145c A[LOOP:22: B:489:0x1455->B:491:0x145c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:495:0x1490  */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v259, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v391, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v431, types: [long] */
    /* JADX WARN: Type inference failed for: r0v438 */
    /* JADX WARN: Type inference failed for: r0v454, types: [long] */
    /* JADX WARN: Type inference failed for: r0v483, types: [long] */
    /* JADX WARN: Type inference failed for: r0v485, types: [long] */
    /* JADX WARN: Type inference failed for: r0v515, types: [long] */
    /* JADX WARN: Type inference failed for: r0v561, types: [long] */
    /* JADX WARN: Type inference failed for: r0v573, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v651, types: [long] */
    /* JADX WARN: Type inference failed for: r0v653, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v868, types: [com.google.android.exoplayer2.metadata.id3.CommentFrame] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v911, types: [com.google.android.exoplayer2.metadata.id3.InternalFrame] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Type inference failed for: r0v932, types: [com.google.android.exoplayer2.metadata.id3.Id3Frame] */
    /* JADX WARN: Type inference failed for: r0v934, types: [com.google.android.exoplayer2.metadata.id3.Id3Frame] */
    /* JADX WARN: Type inference failed for: r0v962, types: [com.google.android.exoplayer2.metadata.id3.ApicFrame] */
    /* JADX WARN: Type inference failed for: r0v968, types: [com.google.android.exoplayer2.metadata.id3.Id3Frame] */
    /* JADX WARN: Type inference failed for: r0v970, types: [com.google.android.exoplayer2.metadata.id3.Id3Frame] */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5237m(p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.AbstractC24316a.C24317a r34) throws p193e.p1577m.p1578a.p1596c.C24560m0 {
        /*
            Method dump skipped, instructions count: 5453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24328f.m5237m(e.m.a.c.g1.c0.a$a):void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
