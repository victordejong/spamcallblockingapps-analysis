package p011aa;

import java.util.Arrays;
/* renamed from: aa.w */
/* loaded from: classes2-dex2jar.jar:aa/w.class */
public final class C0072w extends C0056i {

    /* renamed from: f */
    public final transient byte[][] f160f;

    /* renamed from: g */
    public final transient int[] f161g;

    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    public C0072w(C0053f c0053f, int i) {
        super(null);
        C0047a0.m8868b(c0053f.f120b, 0L, i);
        C0070u c0070u = c0053f.f119a;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = c0070u.f153c;
            int i5 = c0070u.f152b;
            if (i4 == i5) {
                throw new AssertionError("s.limit == s.pos");
            }
            i2 += i4 - i5;
            i3++;
            c0070u = c0070u.f156f;
        }
        this.f160f = new byte[i3];
        this.f161g = new int[i3 * 2];
        C0070u c0070u2 = c0053f.f119a;
        int i6 = 0;
        int i7 = 0;
        while (i7 < i) {
            byte[][] bArr = this.f160f;
            bArr[i6] = c0070u2.f151a;
            int i8 = c0070u2.f153c;
            int i9 = c0070u2.f152b;
            i7 = (i8 - i9) + i7;
            if (i7 > i) {
                i7 = i;
            }
            int[] iArr = this.f161g;
            iArr[i6] = i7;
            iArr[bArr.length + i6] = i9;
            c0070u2.f154d = true;
            i6++;
            c0070u2 = c0070u2.f156f;
        }
    }

    @Override // p011aa.C0056i
    /* renamed from: a */
    public String mo8790a() {
        return m8778s().mo8790a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
        if (mo8787j(0, r0, 0, mo8785l()) != false) goto L12;
     */
    @Override // p011aa.C0056i
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
            boolean r0 = r0 instanceof p011aa.C0056i
            if (r0 == 0) goto L31
            r0 = r7
            aa.i r0 = (p011aa.C0056i) r0
            r7 = r0
            r0 = r7
            int r0 = r0.mo8785l()
            r1 = r6
            int r1 = r1.mo8785l()
            if (r0 != r1) goto L31
            r0 = r6
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.mo8785l()
            boolean r0 = r0.mo8787j(r1, r2, r3, r4)
            if (r0 == 0) goto L31
            goto L33
        L31:
            r0 = 0
            r8 = r0
        L33:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p011aa.C0072w.equals(java.lang.Object):boolean");
    }

    @Override // p011aa.C0056i
    /* renamed from: g */
    public byte mo8789g(int i) {
        C0047a0.m8868b(this.f161g[this.f160f.length - 1], i, 1L);
        int m8780q = m8780q(i);
        int i2 = m8780q == 0 ? 0 : this.f161g[m8780q - 1];
        int[] iArr = this.f161g;
        byte[][] bArr = this.f160f;
        return bArr[m8780q][(i - i2) + iArr[bArr.length + m8780q]];
    }

    @Override // p011aa.C0056i
    /* renamed from: h */
    public String mo8788h() {
        return m8778s().mo8788h();
    }

    @Override // p011aa.C0056i
    public int hashCode() {
        int i = this.f124b;
        if (i != 0) {
            return i;
        }
        int length = this.f160f.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f160f[i2];
            int[] iArr = this.f161g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            for (int i7 = i5; i7 < (i6 - i3) + i5; i7++) {
                i4 = (i4 * 31) + bArr[i7];
            }
            i2++;
            i3 = i6;
        }
        this.f124b = i4;
        return i4;
    }

    @Override // p011aa.C0056i
    /* renamed from: j */
    public boolean mo8787j(int i, C0056i c0056i, int i2, int i3) {
        if (i < 0 || i > mo8785l() - i3) {
            return false;
        }
        int m8780q = m8780q(i);
        while (i3 > 0) {
            int i4 = m8780q == 0 ? 0 : this.f161g[m8780q - 1];
            int min = Math.min(i3, ((this.f161g[m8780q] - i4) + i4) - i);
            int[] iArr = this.f161g;
            byte[][] bArr = this.f160f;
            if (!c0056i.mo8786k(i2, bArr[m8780q], (i - i4) + iArr[bArr.length + m8780q], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m8780q++;
        }
        return true;
    }

    @Override // p011aa.C0056i
    /* renamed from: k */
    public boolean mo8786k(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > mo8785l() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i;
        int m8780q = m8780q(i);
        while (i3 > 0) {
            int i5 = m8780q == 0 ? 0 : this.f161g[m8780q - 1];
            int min = Math.min(i3, ((this.f161g[m8780q] - i5) + i5) - i4);
            int[] iArr = this.f161g;
            byte[][] bArr2 = this.f160f;
            if (!C0047a0.m8869a(bArr2[m8780q], (i4 - i5) + iArr[bArr2.length + m8780q], bArr, i2, min)) {
                return false;
            }
            i4 += min;
            i2 += min;
            i3 -= min;
            m8780q++;
        }
        return true;
    }

    @Override // p011aa.C0056i
    /* renamed from: l */
    public int mo8785l() {
        return this.f161g[this.f160f.length - 1];
    }

    @Override // p011aa.C0056i
    /* renamed from: m */
    public C0056i mo8784m(int i, int i2) {
        return m8778s().mo8784m(i, i2);
    }

    @Override // p011aa.C0056i
    /* renamed from: n */
    public C0056i mo8783n() {
        return m8778s().mo8783n();
    }

    @Override // p011aa.C0056i
    /* renamed from: o */
    public String mo8782o() {
        return m8778s().mo8782o();
    }

    @Override // p011aa.C0056i
    /* renamed from: p */
    public void mo8781p(C0053f c0053f) {
        int length = this.f160f.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                c0053f.f120b += i3;
                return;
            }
            int[] iArr = this.f161g;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            C0070u c0070u = new C0070u(this.f160f[i], i4, (i4 + i5) - i3, true, false);
            C0070u c0070u2 = c0053f.f119a;
            if (c0070u2 == null) {
                c0070u.f157g = c0070u;
                c0070u.f156f = c0070u;
                c0053f.f119a = c0070u;
            } else {
                c0070u2.f157g.m8795b(c0070u);
            }
            i++;
            i2 = i5;
        }
    }

    /* renamed from: q */
    public final int m8780q(int i) {
        int binarySearch = Arrays.binarySearch(this.f161g, 0, this.f160f.length, i + 1);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        }
        return binarySearch;
    }

    /* renamed from: r */
    public byte[] m8779r() {
        int[] iArr = this.f161g;
        byte[][] bArr = this.f160f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                int[] iArr2 = this.f161g;
                int i4 = iArr2[length + i];
                int i5 = iArr2[i];
                System.arraycopy(this.f160f[i], i4, bArr2, i3, i5 - i3);
                i++;
                i2 = i5;
            } else {
                return bArr2;
            }
        }
    }

    /* renamed from: s */
    public final C0056i m8778s() {
        return new C0056i(m8779r());
    }

    @Override // p011aa.C0056i
    public String toString() {
        return m8778s().toString();
    }
}
