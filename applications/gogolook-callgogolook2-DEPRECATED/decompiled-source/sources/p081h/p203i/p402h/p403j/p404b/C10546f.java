package p081h.p203i.p402h.p403j.p404b;

import java.util.LinkedList;
import p081h.p203i.p402h.p405k.C10548a;
/* renamed from: h.i.h.j.b.f */
/* loaded from: classes2-dex2jar.jar:h/i/h/j/b/f.class */
public final class C10546f {

    /* renamed from: e */
    public static final C10546f f23971e = new C10546f(AbstractC10547g.f23976b, 0, 0, 0);

    /* renamed from: a */
    public final int f23972a;

    /* renamed from: b */
    public final AbstractC10547g f23973b;

    /* renamed from: c */
    public final int f23974c;

    /* renamed from: d */
    public final int f23975d;

    public C10546f(AbstractC10547g gVar, int i, int i2, int i3) {
        this.f23973b = gVar;
        this.f23972a = i;
        this.f23974c = i2;
        this.f23975d = i3;
    }

    /* renamed from: a */
    public int m11471a() {
        return this.f23974c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r0 == 2) goto L_0x0024;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p081h.p203i.p402h.p403j.p404b.C10546f m11470a(int r9) {
        /*
            r8 = this;
            r0 = r8
            h.i.h.j.b.g r0 = r0.f23973b
            r10 = r0
            r0 = r8
            int r0 = r0.f23972a
            r11 = r0
            r0 = r8
            int r0 = r0.f23975d
            r12 = r0
            r0 = r11
            r1 = 4
            if (r0 == r1) goto L_0x0024
            r0 = r10
            r13 = r0
            r0 = r11
            r14 = r0
            r0 = r12
            r15 = r0
            r0 = r11
            r1 = 2
            if (r0 != r1) goto L_0x004b
        L_0x0024:
            int[][] r0 = p081h.p203i.p402h.p403j.p404b.C10543d.f23965c
            r1 = r11
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r15 = r0
            r0 = r15
            r1 = 16
            int r0 = r0 >> r1
            r14 = r0
            r0 = r10
            r1 = 65535(0xffff, float:9.1834E-41)
            r2 = r15
            r1 = r1 & r2
            r2 = r14
            h.i.h.j.b.g r0 = r0.m11461a(r1, r2)
            r13 = r0
            r0 = r12
            r1 = r14
            int r0 = r0 + r1
            r15 = r0
            r0 = 0
            r14 = r0
        L_0x004b:
            r0 = r8
            int r0 = r0.f23974c
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0075
            r0 = r12
            r1 = 31
            if (r0 != r1) goto L_0x0060
            goto L_0x0075
        L_0x0060:
            r0 = r12
            r1 = 62
            if (r0 != r1) goto L_0x006e
            r0 = 9
            r12 = r0
            goto L_0x0079
        L_0x006e:
            r0 = 8
            r12 = r0
            goto L_0x0079
        L_0x0075:
            r0 = 18
            r12 = r0
        L_0x0079:
            h.i.h.j.b.f r0 = new h.i.h.j.b.f
            r1 = r0
            r2 = r13
            r3 = r14
            r4 = r8
            int r4 = r4.f23974c
            r5 = 1
            int r4 = r4 + r5
            r5 = r15
            r6 = r12
            int r5 = r5 + r6
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            r0 = r10
            r13 = r0
            r0 = r10
            int r0 = r0.f23974c
            r1 = 2078(0x81e, float:2.912E-42)
            if (r0 != r1) goto L_0x00a6
            r0 = r10
            r1 = r9
            r2 = 1
            int r1 = r1 + r2
            h.i.h.j.b.f r0 = r0.m11465b(r1)
            r13 = r0
        L_0x00a6:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p403j.p404b.C10546f.m11470a(int):h.i.h.j.b.f");
    }

    /* renamed from: a */
    public C10546f m11469a(int i, int i2) {
        int i3 = this.f23975d;
        AbstractC10547g gVar = this.f23973b;
        int i4 = this.f23972a;
        int i5 = i3;
        AbstractC10547g gVar2 = gVar;
        if (i != i4) {
            int i6 = C10543d.f23965c[i4][i];
            int i7 = i6 >> 16;
            gVar2 = gVar.m11461a(65535 & i6, i7);
            i5 = i3 + i7;
        }
        int i8 = i == 2 ? 4 : 5;
        return new C10546f(gVar2.m11461a(i2, i8), i, 0, i5 + i8);
    }

    /* renamed from: a */
    public C10548a m11467a(byte[] bArr) {
        LinkedList<AbstractC10547g> linkedList = new LinkedList();
        for (AbstractC10547g gVar = m11465b(bArr.length).f23973b; gVar != null; gVar = gVar.m11462a()) {
            linkedList.addFirst(gVar);
        }
        C10548a aVar = new C10548a();
        for (AbstractC10547g gVar2 : linkedList) {
            gVar2.mo11460a(aVar, bArr);
        }
        return aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
        if (r0 > r0) goto L_0x0036;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m11468a(p081h.p203i.p402h.p403j.p404b.C10546f r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f23975d
            int[][] r1 = p081h.p203i.p402h.p403j.p404b.C10543d.f23965c
            r2 = r4
            int r2 = r2.f23972a
            r1 = r1[r2]
            r2 = r5
            int r2 = r2.f23972a
            r1 = r1[r2]
            r2 = 16
            int r1 = r1 >> r2
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            int r0 = r0.f23974c
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x003c
            r0 = r4
            int r0 = r0.f23974c
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0036
            r0 = r6
            r8 = r0
            r0 = r9
            r1 = r7
            if (r0 <= r1) goto L_0x003c
        L_0x0036:
            r0 = r6
            r1 = 10
            int r0 = r0 + r1
            r8 = r0
        L_0x003c:
            r0 = r8
            r1 = r5
            int r1 = r1.f23975d
            if (r0 > r1) goto L_0x0047
            r0 = 1
            return r0
        L_0x0047:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p403j.p404b.C10546f.m11468a(h.i.h.j.b.f):boolean");
    }

    /* renamed from: b */
    public int m11466b() {
        return this.f23975d;
    }

    /* renamed from: b */
    public C10546f m11465b(int i) {
        int i2 = this.f23974c;
        return i2 == 0 ? this : new C10546f(this.f23973b.m11459b(i - i2, i2), this.f23972a, 0, this.f23975d);
    }

    /* renamed from: b */
    public C10546f m11464b(int i, int i2) {
        AbstractC10547g gVar = this.f23973b;
        int i3 = this.f23972a == 2 ? 4 : 5;
        return new C10546f(gVar.m11461a(C10543d.f23967e[this.f23972a][i], i3).m11461a(i2, 5), this.f23972a, 0, this.f23975d + i3 + 5);
    }

    /* renamed from: c */
    public int m11463c() {
        return this.f23972a;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", C10543d.f23964b[this.f23972a], Integer.valueOf(this.f23975d), Integer.valueOf(this.f23974c));
    }
}
