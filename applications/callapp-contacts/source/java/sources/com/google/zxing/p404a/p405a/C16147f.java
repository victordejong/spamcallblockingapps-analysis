package com.google.zxing.p404a.p405a;

import com.google.zxing.common.C16190a;
import java.util.LinkedList;
/* renamed from: com.google.zxing.a.a.f */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/f.class */
public final class C16147f {

    /* renamed from: a */
    static final C16147f f57066a = new C16147f(AbstractC16148g.f57071a, 0, 0, 0);

    /* renamed from: b */
    final int f57067b;

    /* renamed from: c */
    final int f57068c;

    /* renamed from: d */
    final int f57069d;

    /* renamed from: e */
    private final AbstractC16148g f57070e;

    private C16147f(AbstractC16148g abstractC16148g, int i, int i2, int i3) {
        this.f57070e = abstractC16148g;
        this.f57067b = i;
        this.f57068c = i2;
        this.f57069d = i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r0 == 2) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.zxing.p404a.p405a.C16147f m7753a(int r9) {
        /*
            r8 = this;
            r0 = r8
            com.google.zxing.a.a.g r0 = r0.f57070e
            r10 = r0
            r0 = r8
            int r0 = r0.f57067b
            r11 = r0
            r0 = r8
            int r0 = r0.f57069d
            r12 = r0
            r0 = r11
            r1 = 4
            if (r0 == r1) goto L24
            r0 = r10
            r13 = r0
            r0 = r11
            r14 = r0
            r0 = r12
            r15 = r0
            r0 = r11
            r1 = 2
            if (r0 != r1) goto L4b
        L24:
            int[][] r0 = com.google.zxing.p404a.p405a.C16144d.f57059b
            r1 = r11
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r14 = r0
            r0 = r14
            r1 = 16
            int r0 = r0 >> r1
            r15 = r0
            r0 = r10
            r1 = 65535(0xffff, float:9.1834E-41)
            r2 = r14
            r1 = r1 & r2
            r2 = r15
            com.google.zxing.a.a.g r0 = r0.m7747a(r1, r2)
            r13 = r0
            r0 = r12
            r1 = r15
            int r0 = r0 + r1
            r15 = r0
            r0 = 0
            r14 = r0
        L4b:
            r0 = r8
            int r0 = r0.f57068c
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L75
            r0 = r12
            r1 = 31
            if (r0 != r1) goto L60
            goto L75
        L60:
            r0 = r12
            r1 = 62
            if (r0 != r1) goto L6e
            r0 = 9
            r12 = r0
            goto L79
        L6e:
            r0 = 8
            r12 = r0
            goto L79
        L75:
            r0 = 18
            r12 = r0
        L79:
            com.google.zxing.a.a.f r0 = new com.google.zxing.a.a.f
            r1 = r0
            r2 = r13
            r3 = r14
            r4 = r8
            int r4 = r4.f57068c
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
            int r0 = r0.f57068c
            r1 = 2078(0x81e, float:2.912E-42)
            if (r0 != r1) goto La6
            r0 = r10
            r1 = r9
            r2 = 1
            int r1 = r1 + r2
            com.google.zxing.a.a.f r0 = r0.m7749b(r1)
            r13 = r0
        La6:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p404a.p405a.C16147f.m7753a(int):com.google.zxing.a.a.f");
    }

    /* renamed from: a */
    public final C16147f m7752a(int i, int i2) {
        int i3 = this.f57069d;
        AbstractC16148g abstractC16148g = this.f57070e;
        int i4 = i3;
        AbstractC16148g abstractC16148g2 = abstractC16148g;
        if (i != this.f57067b) {
            int i5 = C16144d.f57059b[this.f57067b][i];
            int i6 = i5 >> 16;
            abstractC16148g2 = abstractC16148g.m7747a(65535 & i5, i6);
            i4 = i3 + i6;
        }
        int i7 = i == 2 ? 4 : 5;
        return new C16147f(abstractC16148g2.m7747a(i2, i7), i, 0, i4 + i7);
    }

    /* renamed from: a */
    public final C16190a m7750a(byte[] bArr) {
        LinkedList<AbstractC16148g> linkedList = new LinkedList();
        AbstractC16148g abstractC16148g = m7749b(bArr.length).f57070e;
        while (true) {
            AbstractC16148g abstractC16148g2 = abstractC16148g;
            if (abstractC16148g2 == null) {
                break;
            }
            linkedList.addFirst(abstractC16148g2);
            abstractC16148g = abstractC16148g2.f57072b;
        }
        C16190a c16190a = new C16190a();
        for (AbstractC16148g abstractC16148g3 : linkedList) {
            abstractC16148g3.mo7746a(c16190a, bArr);
        }
        return c16190a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
        if (r0 > r0) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m7751a(com.google.zxing.p404a.p405a.C16147f r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f57069d
            int[][] r1 = com.google.zxing.p404a.p405a.C16144d.f57059b
            r2 = r4
            int r2 = r2.f57067b
            r1 = r1[r2]
            r2 = r5
            int r2 = r2.f57067b
            r1 = r1[r2]
            r2 = 16
            int r1 = r1 >> r2
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            int r0 = r0.f57068c
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 <= 0) goto L3c
            r0 = r4
            int r0 = r0.f57068c
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L36
            r0 = r6
            r8 = r0
            r0 = r9
            r1 = r7
            if (r0 <= r1) goto L3c
        L36:
            r0 = r6
            r1 = 10
            int r0 = r0 + r1
            r8 = r0
        L3c:
            r0 = r8
            r1 = r5
            int r1 = r1.f57069d
            if (r0 > r1) goto L47
            r0 = 1
            return r0
        L47:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p404a.p405a.C16147f.m7751a(com.google.zxing.a.a.f):boolean");
    }

    /* renamed from: b */
    public final C16147f m7749b(int i) {
        int i2 = this.f57068c;
        return i2 == 0 ? this : new C16147f(this.f57070e.m7745b(i - i2, i2), this.f57067b, 0, this.f57069d);
    }

    /* renamed from: b */
    public final C16147f m7748b(int i, int i2) {
        AbstractC16148g abstractC16148g = this.f57070e;
        int i3 = this.f57067b == 2 ? 4 : 5;
        return new C16147f(abstractC16148g.m7747a(C16144d.f57060c[this.f57067b][i], i3).m7747a(i2, 5), this.f57067b, 0, this.f57069d + i3 + 5);
    }

    public final String toString() {
        return String.format("%s bits=%d bytes=%d", C16144d.f57058a[this.f57067b], Integer.valueOf(this.f57069d), Integer.valueOf(this.f57068c));
    }
}
