package p000;

import java.util.Arrays;
/* renamed from: im1 */
/* loaded from: classes3-dex2jar.jar:im1.class */
public final class im1 extends fm1 {

    /* renamed from: g */
    public final transient byte[][] f6780g;

    /* renamed from: h */
    public final transient int[] f6781h;

    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    public im1(dm1 dm1Var, int i) {
        super(null);
        jm1.m1469b(dm1Var.f6092b, 0L, i);
        gm1 gm1Var = dm1Var.f6091a;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = gm1Var.f6708c;
            int i5 = gm1Var.f6707b;
            if (i4 == i5) {
                throw new AssertionError("s.limit == s.pos");
            }
            i2 += i4 - i5;
            i3++;
            gm1Var = gm1Var.f6711f;
        }
        this.f6780g = new byte[i3];
        this.f6781h = new int[i3 * 2];
        gm1 gm1Var2 = dm1Var.f6091a;
        int i6 = 0;
        int i7 = 0;
        while (i7 < i) {
            byte[][] bArr = this.f6780g;
            bArr[i6] = gm1Var2.f6706a;
            int i8 = gm1Var2.f6708c;
            int i9 = gm1Var2.f6707b;
            int i10 = i7 + (i8 - i9);
            i7 = i10;
            if (i10 > i) {
                i7 = i;
            }
            int[] iArr = this.f6781h;
            iArr[i6] = i7;
            iArr[bArr.length + i6] = i9;
            gm1Var2.f6709d = true;
            i6++;
            gm1Var2 = gm1Var2.f6711f;
        }
    }

    private Object writeReplace() {
        return m1558p();
    }

    @Override // p000.fm1
    /* renamed from: e */
    public byte mo1567e(int i) {
        jm1.m1469b(this.f6781h[this.f6780g.length - 1], i, 1L);
        int m1560n = m1560n(i);
        int i2 = m1560n == 0 ? 0 : this.f6781h[m1560n - 1];
        int[] iArr = this.f6781h;
        byte[][] bArr = this.f6780g;
        return bArr[m1560n][(i - i2) + iArr[bArr.length + m1560n]];
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
        if (m1561m(0, r0, 0, mo1564j()) != false) goto L12;
     */
    @Override // p000.fm1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r7
            boolean r0 = r0 instanceof p000.fm1
            if (r0 == 0) goto L31
            r0 = r7
            fm1 r0 = (p000.fm1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.mo1564j()
            r1 = r6
            int r1 = r1.mo1564j()
            if (r0 != r1) goto L31
            r0 = r6
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.mo1564j()
            boolean r0 = r0.m1561m(r1, r2, r3, r4)
            if (r0 == 0) goto L31
            goto L33
        L31:
            r0 = 0
            r8 = r0
        L33:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.im1.equals(java.lang.Object):boolean");
    }

    @Override // p000.fm1
    /* renamed from: f */
    public String mo1566f() {
        return m1558p().mo1566f();
    }

    @Override // p000.fm1
    /* renamed from: h */
    public boolean mo1565h(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > mo1564j() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int m1560n = m1560n(i);
        while (i3 > 0) {
            int i4 = m1560n == 0 ? 0 : this.f6781h[m1560n - 1];
            int min = Math.min(i3, ((this.f6781h[m1560n] - i4) + i4) - i);
            int[] iArr = this.f6781h;
            byte[][] bArr2 = this.f6780g;
            if (!jm1.m1470a(bArr2[m1560n], (i - i4) + iArr[bArr2.length + m1560n], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m1560n++;
        }
        return true;
    }

    @Override // p000.fm1
    public int hashCode() {
        int i = this.f6658b;
        if (i != 0) {
            return i;
        }
        int length = this.f6780g.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f6780g[i2];
            int[] iArr = this.f6781h;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            for (int i7 = i5; i7 < (i6 - i3) + i5; i7++) {
                i4 = (i4 * 31) + bArr[i7];
            }
            i2++;
            i3 = i6;
        }
        this.f6658b = i4;
        return i4;
    }

    @Override // p000.fm1
    /* renamed from: j */
    public int mo1564j() {
        return this.f6781h[this.f6780g.length - 1];
    }

    @Override // p000.fm1
    /* renamed from: k */
    public fm1 mo1563k(int i, int i2) {
        return m1558p().mo1563k(i, i2);
    }

    @Override // p000.fm1
    /* renamed from: l */
    public String mo1562l() {
        return m1558p().mo1562l();
    }

    /* renamed from: m */
    public boolean m1561m(int i, fm1 fm1Var, int i2, int i3) {
        if (i < 0 || i > mo1564j() - i3) {
            return false;
        }
        int m1560n = m1560n(i);
        while (i3 > 0) {
            int i4 = m1560n == 0 ? 0 : this.f6781h[m1560n - 1];
            int min = Math.min(i3, ((this.f6781h[m1560n] - i4) + i4) - i);
            int[] iArr = this.f6781h;
            byte[][] bArr = this.f6780g;
            if (!fm1Var.mo1565h(i2, bArr[m1560n], (i - i4) + iArr[bArr.length + m1560n], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m1560n++;
        }
        return true;
    }

    /* renamed from: n */
    public final int m1560n(int i) {
        int binarySearch = Arrays.binarySearch(this.f6781h, 0, this.f6780g.length, i + 1);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        }
        return binarySearch;
    }

    /* renamed from: o */
    public byte[] m1559o() {
        int[] iArr = this.f6781h;
        byte[][] bArr = this.f6780g;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                int[] iArr2 = this.f6781h;
                int i4 = iArr2[length + i];
                int i5 = iArr2[i];
                System.arraycopy(this.f6780g[i], i4, bArr2, i3, i5 - i3);
                i++;
                i2 = i5;
            } else {
                return bArr2;
            }
        }
    }

    /* renamed from: p */
    public final fm1 m1558p() {
        return new fm1(m1559o());
    }

    @Override // p000.fm1
    public String toString() {
        return m1558p().toString();
    }
}
