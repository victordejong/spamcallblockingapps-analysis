package p000a;

import java.util.Arrays;
/* renamed from: a.q */
/* loaded from: classes-dex2jar.jar:a/q.class */
public final class C0024q extends C0009f {

    /* renamed from: f */
    final transient byte[][] f55f;

    /* renamed from: g */
    final transient int[] f56g;

    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    public C0024q(C0005c c0005c, int i) {
        super(null);
        C0029u.m8026a(c0005c.f14b, 0L, i);
        C0022o c0022o = c0005c.f13a;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            if (c0022o.f48c == c0022o.f47b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i2 += c0022o.f48c - c0022o.f47b;
            i3++;
            c0022o = c0022o.f51f;
        }
        this.f55f = new byte[i3];
        this.f56g = new int[i3 * 2];
        C0022o c0022o2 = c0005c.f13a;
        int i4 = 0;
        int i5 = 0;
        while (i5 < i) {
            this.f55f[i4] = c0022o2.f46a;
            int i6 = i5 + (c0022o2.f48c - c0022o2.f47b);
            i5 = i6;
            if (i6 > i) {
                i5 = i;
            }
            int[] iArr = this.f56g;
            iArr[i4] = i5;
            iArr[this.f55f.length + i4] = c0022o2.f47b;
            c0022o2.f49d = true;
            i4++;
            c0022o2 = c0022o2.f51f;
        }
    }

    /* renamed from: b */
    private int m8043b(int i) {
        int binarySearch = Arrays.binarySearch(this.f56g, 0, this.f55f.length, i + 1);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        }
        return binarySearch;
    }

    /* renamed from: i */
    private C0009f m8036i() {
        return new C0009f(mo8037h());
    }

    @Override // p000a.C0009f
    /* renamed from: a */
    public byte mo8049a(int i) {
        C0029u.m8026a(this.f56g[this.f55f.length - 1], i, 1L);
        int m8043b = m8043b(i);
        int i2 = m8043b == 0 ? 0 : this.f56g[m8043b - 1];
        int[] iArr = this.f56g;
        byte[][] bArr = this.f55f;
        return bArr[m8043b][(i - i2) + iArr[bArr.length + m8043b]];
    }

    @Override // p000a.C0009f
    /* renamed from: a */
    public C0009f mo8048a(int i, int i2) {
        return m8036i().mo8048a(i, i2);
    }

    @Override // p000a.C0009f
    /* renamed from: a */
    public String mo8050a() {
        return m8036i().mo8050a();
    }

    @Override // p000a.C0009f
    /* renamed from: a */
    public void mo8045a(C0005c c0005c) {
        int length = this.f55f.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                c0005c.f14b += i3;
                return;
            }
            int[] iArr = this.f56g;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            C0022o c0022o = new C0022o(this.f55f[i], i4, (i4 + i5) - i3, true, false);
            if (c0005c.f13a == null) {
                c0022o.f52g = c0022o;
                c0022o.f51f = c0022o;
                c0005c.f13a = c0022o;
            } else {
                c0005c.f13a.f52g.m8056a(c0022o);
            }
            i++;
            i2 = i5;
        }
    }

    @Override // p000a.C0009f
    /* renamed from: a */
    public boolean mo8047a(int i, C0009f c0009f, int i2, int i3) {
        if (i < 0 || i > mo8038g() - i3) {
            return false;
        }
        int m8043b = m8043b(i);
        while (i3 > 0) {
            int i4 = m8043b == 0 ? 0 : this.f56g[m8043b - 1];
            int min = Math.min(i3, ((this.f56g[m8043b] - i4) + i4) - i);
            int[] iArr = this.f56g;
            byte[][] bArr = this.f55f;
            if (!c0009f.mo8046a(i2, bArr[m8043b], (i - i4) + iArr[bArr.length + m8043b], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m8043b++;
        }
        return true;
    }

    @Override // p000a.C0009f
    /* renamed from: a */
    public boolean mo8046a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > mo8038g() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int m8043b = m8043b(i);
        while (i3 > 0) {
            int i4 = m8043b == 0 ? 0 : this.f56g[m8043b - 1];
            int min = Math.min(i3, ((this.f56g[m8043b] - i4) + i4) - i);
            int[] iArr = this.f56g;
            byte[][] bArr2 = this.f55f;
            if (!C0029u.m8023a(bArr2[m8043b], (i - i4) + iArr[bArr2.length + m8043b], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m8043b++;
        }
        return true;
    }

    @Override // p000a.C0009f
    /* renamed from: b */
    public String mo8044b() {
        return m8036i().mo8044b();
    }

    @Override // p000a.C0009f
    /* renamed from: c */
    public C0009f mo8042c() {
        return m8036i().mo8042c();
    }

    @Override // p000a.C0009f
    /* renamed from: d */
    public C0009f mo8041d() {
        return m8036i().mo8041d();
    }

    @Override // p000a.C0009f
    /* renamed from: e */
    public String mo8040e() {
        return m8036i().mo8040e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
        if (mo8047a(0, r0, 0, mo8038g()) != false) goto L12;
     */
    @Override // p000a.C0009f
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
            boolean r0 = r0 instanceof p000a.C0009f
            if (r0 == 0) goto L31
            r0 = r7
            a.f r0 = (p000a.C0009f) r0
            r7 = r0
            r0 = r7
            int r0 = r0.mo8038g()
            r1 = r6
            int r1 = r1.mo8038g()
            if (r0 != r1) goto L31
            r0 = r6
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.mo8038g()
            boolean r0 = r0.mo8047a(r1, r2, r3, r4)
            if (r0 == 0) goto L31
            goto L33
        L31:
            r0 = 0
            r8 = r0
        L33:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.C0024q.equals(java.lang.Object):boolean");
    }

    @Override // p000a.C0009f
    /* renamed from: f */
    public C0009f mo8039f() {
        return m8036i().mo8039f();
    }

    @Override // p000a.C0009f
    /* renamed from: g */
    public int mo8038g() {
        return this.f56g[this.f55f.length - 1];
    }

    @Override // p000a.C0009f
    /* renamed from: h */
    public byte[] mo8037h() {
        int[] iArr = this.f56g;
        byte[][] bArr = this.f55f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                int[] iArr2 = this.f56g;
                int i4 = iArr2[length + i];
                int i5 = iArr2[i];
                System.arraycopy(this.f55f[i], i4, bArr2, i3, i5 - i3);
                i++;
                i2 = i5;
            } else {
                return bArr2;
            }
        }
    }

    @Override // p000a.C0009f
    public int hashCode() {
        int i = this.f19d;
        if (i != 0) {
            return i;
        }
        int length = this.f55f.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i2 >= length) {
                this.f19d = i3;
                return i3;
            }
            byte[] bArr = this.f55f[i2];
            int[] iArr = this.f56g;
            int i6 = iArr[length + i2];
            int i7 = iArr[i2];
            for (int i8 = i6; i8 < (i7 - i5) + i6; i8++) {
                i3 = (i3 * 31) + bArr[i8];
            }
            i2++;
            i4 = i7;
        }
    }

    @Override // p000a.C0009f
    public String toString() {
        return m8036i().toString();
    }
}
