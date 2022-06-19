package com.google.zxing.p170a.p171a;

import com.google.zxing.common.C5116a;
import java.util.LinkedList;
/* renamed from: com.google.zxing.a.a.f */
/* loaded from: classes-dex2jar.jar:com/google/zxing/a/a/f.class */
public final class C5077f {

    /* renamed from: a */
    static final C5077f f21518a = new C5077f(AbstractC5078g.f21523a, 0, 0, 0);

    /* renamed from: b */
    private final int f21519b;

    /* renamed from: c */
    private final AbstractC5078g f21520c;

    /* renamed from: d */
    private final int f21521d;

    /* renamed from: e */
    private final int f21522e;

    private C5077f(AbstractC5078g abstractC5078g, int i, int i2, int i3) {
        this.f21520c = abstractC5078g;
        this.f21519b = i;
        this.f21521d = i2;
        this.f21522e = i3;
    }

    /* renamed from: a */
    public int m1581a() {
        return this.f21519b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
        if (r8.f21519b == 2) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.p170a.p171a.C5077f m1580a(int r9) {
        /*
            r8 = this;
            r0 = r8
            com.google.zxing.a.a.g r0 = r0.f21520c
            r10 = r0
            r0 = r8
            int r0 = r0.f21519b
            r11 = r0
            r0 = r8
            int r0 = r0.f21522e
            r12 = r0
            r0 = r8
            int r0 = r0.f21519b
            r1 = 4
            if (r0 == r1) goto L2a
            r0 = r12
            r13 = r0
            r0 = r11
            r14 = r0
            r0 = r10
            r15 = r0
            r0 = r8
            int r0 = r0.f21519b
            r1 = 2
            if (r0 != r1) goto L50
        L2a:
            int[][] r0 = com.google.zxing.p170a.p171a.C5074d.f21511b
            r1 = r11
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r14 = r0
            r0 = r10
            r1 = 65535(0xffff, float:9.1834E-41)
            r2 = r14
            r1 = r1 & r2
            r2 = r14
            r3 = 16
            int r2 = r2 >> r3
            com.google.zxing.a.a.g r0 = r0.m1571a(r1, r2)
            r15 = r0
            r0 = r12
            r1 = r14
            r2 = 16
            int r1 = r1 >> r2
            int r0 = r0 + r1
            r13 = r0
            r0 = 0
            r14 = r0
        L50:
            r0 = r8
            int r0 = r0.f21521d
            if (r0 == 0) goto L60
            r0 = r8
            int r0 = r0.f21521d
            r1 = 31
            if (r0 != r1) goto L94
        L60:
            r0 = 18
            r12 = r0
        L64:
            com.google.zxing.a.a.f r0 = new com.google.zxing.a.a.f
            r1 = r0
            r2 = r15
            r3 = r14
            r4 = r8
            int r4 = r4.f21521d
            r5 = 1
            int r4 = r4 + r5
            r5 = r13
            r6 = r12
            int r5 = r5 + r6
            r1.<init>(r2, r3, r4, r5)
            r15 = r0
            r0 = r15
            int r0 = r0.f21521d
            r1 = 2078(0x81e, float:2.912E-42)
            if (r0 != r1) goto Lab
            r0 = r15
            r1 = r9
            r2 = 1
            int r1 = r1 + r2
            com.google.zxing.a.a.f r0 = r0.m1575b(r1)
            r15 = r0
        L91:
            r0 = r15
            return r0
        L94:
            r0 = r8
            int r0 = r0.f21521d
            r1 = 62
            if (r0 != r1) goto La4
            r0 = 9
            r12 = r0
            goto L64
        La4:
            r0 = 8
            r12 = r0
            goto L64
        Lab:
            goto L91
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p170a.p171a.C5077f.m1580a(int):com.google.zxing.a.a.f");
    }

    /* renamed from: a */
    public C5077f m1579a(int i, int i2) {
        int i3 = this.f21522e;
        AbstractC5078g abstractC5078g = this.f21520c;
        if (i != this.f21519b) {
            int i4 = C5074d.f21511b[this.f21519b][i];
            abstractC5078g = abstractC5078g.m1571a(65535 & i4, i4 >> 16);
            i3 += i4 >> 16;
        }
        int i5 = i == 2 ? 4 : 5;
        return new C5077f(abstractC5078g.m1571a(i2, i5), i, 0, i5 + i3);
    }

    /* renamed from: a */
    public C5116a m1577a(byte[] bArr) {
        LinkedList<AbstractC5078g> linkedList = new LinkedList();
        AbstractC5078g abstractC5078g = m1575b(bArr.length).f21520c;
        while (true) {
            AbstractC5078g abstractC5078g2 = abstractC5078g;
            if (abstractC5078g2 == null) {
                break;
            }
            linkedList.addFirst(abstractC5078g2);
            abstractC5078g = abstractC5078g2.m1572a();
        }
        C5116a c5116a = new C5116a();
        for (AbstractC5078g abstractC5078g3 : linkedList) {
            abstractC5078g3.mo1570a(c5116a, bArr);
        }
        return c5116a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
        if (r4.f21521d > r5.f21521d) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1578a(com.google.zxing.p170a.p171a.C5077f r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f21522e
            int[][] r1 = com.google.zxing.p170a.p171a.C5074d.f21511b
            r2 = r4
            int r2 = r2.f21519b
            r1 = r1[r2]
            r2 = r5
            int r2 = r2.f21519b
            r1 = r1[r2]
            r2 = 16
            int r1 = r1 >> r2
            int r0 = r0 + r1
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            int r0 = r0.f21521d
            if (r0 <= 0) goto L38
            r0 = r4
            int r0 = r0.f21521d
            if (r0 == 0) goto L33
            r0 = r6
            r7 = r0
            r0 = r4
            int r0 = r0.f21521d
            r1 = r5
            int r1 = r1.f21521d
            if (r0 <= r1) goto L38
        L33:
            r0 = r6
            r1 = 10
            int r0 = r0 + r1
            r7 = r0
        L38:
            r0 = r7
            r1 = r5
            int r1 = r1.f21522e
            if (r0 > r1) goto L46
            r0 = 1
            r8 = r0
        L43:
            r0 = r8
            return r0
        L46:
            r0 = 0
            r8 = r0
            goto L43
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p170a.p171a.C5077f.m1578a(com.google.zxing.a.a.f):boolean");
    }

    /* renamed from: b */
    public int m1576b() {
        return this.f21521d;
    }

    /* renamed from: b */
    public C5077f m1575b(int i) {
        return this.f21521d == 0 ? this : new C5077f(this.f21520c.m1569b(i - this.f21521d, this.f21521d), this.f21519b, 0, this.f21522e);
    }

    /* renamed from: b */
    public C5077f m1574b(int i, int i2) {
        AbstractC5078g abstractC5078g = this.f21520c;
        int i3 = this.f21519b == 2 ? 4 : 5;
        return new C5077f(abstractC5078g.m1571a(C5074d.f21512c[this.f21519b][i], i3).m1571a(i2, 5), this.f21519b, 0, i3 + this.f21522e + 5);
    }

    /* renamed from: c */
    public int m1573c() {
        return this.f21522e;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", C5074d.f21510a[this.f21519b], Integer.valueOf(this.f21522e), Integer.valueOf(this.f21521d));
    }
}
