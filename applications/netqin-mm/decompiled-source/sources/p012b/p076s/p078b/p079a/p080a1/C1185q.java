package p012b.p076s.p078b.p079a.p080a1;
/* renamed from: b.s.b.a.a1.q */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/q.class */
public final class C1185q {

    /* renamed from: a */
    public byte[] f4741a;

    /* renamed from: b */
    public int f4742b;

    /* renamed from: c */
    public int f4743c;

    /* renamed from: d */
    public int f4744d;

    public C1185q(byte[] bArr, int i, int i2) {
        m34333a(bArr, i, i2);
    }

    /* renamed from: a */
    public final void m34335a() {
        int i;
        int i2 = this.f4743c;
        C1160a.m34518b(i2 >= 0 && (i2 < (i = this.f4742b) || (i2 == i && this.f4744d == 0)));
    }

    /* renamed from: a */
    public void m34333a(byte[] bArr, int i, int i2) {
        this.f4741a = bArr;
        this.f4743c = i;
        this.f4742b = i2;
        this.f4744d = 0;
        m34335a();
    }

    /* renamed from: a */
    public boolean m34334a(int i) {
        int i2 = this.f4743c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f4744d + i) - (i3 * 8);
        int i6 = i4;
        int i7 = i5;
        if (i5 > 7) {
            i6 = i4 + 1;
            i7 = i5 - 8;
        }
        int i8 = i2;
        while (true) {
            int i9 = i8 + 1;
            if (i9 > i6 || i6 >= this.f4742b) {
                break;
            }
            i8 = i9;
            if (m34329c(i9)) {
                i6++;
                i8 = i9 + 2;
            }
        }
        int i10 = this.f4742b;
        boolean z = true;
        if (i6 >= i10) {
            z = i6 == i10 && i7 == 0;
        }
        return z;
    }

    /* renamed from: b */
    public int m34331b(int i) {
        int i2;
        int i3;
        this.f4744d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f4744d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f4744d = i5;
            byte[] bArr = this.f4741a;
            int i6 = this.f4743c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!m34329c(i6 + 1)) {
                i3 = 1;
            }
            this.f4743c = i6 + i3;
        }
        byte[] bArr2 = this.f4741a;
        int i7 = this.f4743c;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.f4744d = 0;
            if (!m34329c(i7 + 1)) {
                i3 = 1;
            }
            this.f4743c = i7 + i3;
        }
        m34335a();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: b */
    public boolean m34332b() {
        int i = this.f4743c;
        int i2 = this.f4744d;
        int i3 = 0;
        while (this.f4743c < this.f4742b && !m34330c()) {
            i3++;
        }
        boolean z = this.f4743c == this.f4742b;
        this.f4743c = i;
        this.f4744d = i2;
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (m34334a((i3 * 2) + 1)) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: c */
    public boolean m34330c() {
        boolean z = (this.f4741a[this.f4743c] & (128 >> this.f4744d)) != 0;
        m34324g();
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r0[r5 - 1] == 0) goto L_0x0030;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m34329c(int r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = 2
            r1 = r5
            if (r0 > r1) goto L_0x002e
            r0 = r5
            r1 = r4
            int r1 = r1.f4742b
            if (r0 >= r1) goto L_0x002e
            r0 = r4
            byte[] r0 = r0.f4741a
            r7 = r0
            r0 = r7
            r1 = r5
            r0 = r0[r1]
            r1 = 3
            if (r0 != r1) goto L_0x002e
            r0 = r7
            r1 = r5
            r2 = 2
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x002e
            r0 = r7
            r1 = r5
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x002e
            goto L_0x0030
        L_0x002e:
            r0 = 0
            r6 = r0
        L_0x0030:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p080a1.C1185q.m34329c(int):boolean");
    }

    /* renamed from: d */
    public final int m34328d() {
        int i = 0;
        int i2 = 0;
        while (!m34330c()) {
            i2++;
        }
        if (i2 > 0) {
            i = m34331b(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: d */
    public void m34327d(int i) {
        int i2 = this.f4743c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f4743c = i4;
        int i5 = this.f4744d + (i - (i3 * 8));
        this.f4744d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f4743c = i4 + 1;
            this.f4744d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 <= this.f4743c) {
                i6 = i7;
                if (m34329c(i7)) {
                    this.f4743c++;
                    i6 = i7 + 2;
                }
            } else {
                m34335a();
                return;
            }
        }
    }

    /* renamed from: e */
    public int m34326e() {
        int d = m34328d();
        return (d % 2 == 0 ? -1 : 1) * ((d + 1) / 2);
    }

    /* renamed from: f */
    public int m34325f() {
        return m34328d();
    }

    /* renamed from: g */
    public void m34324g() {
        int i = 1;
        int i2 = this.f4744d + 1;
        this.f4744d = i2;
        if (i2 == 8) {
            this.f4744d = 0;
            int i3 = this.f4743c;
            if (m34329c(i3 + 1)) {
                i = 2;
            }
            this.f4743c = i3 + i;
        }
        m34335a();
    }
}
