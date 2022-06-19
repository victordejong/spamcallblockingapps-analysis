package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: n3.y.b.a.x0.n */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/n.class */
public final class C27435n {

    /* renamed from: a */
    public byte[] f77203a;

    /* renamed from: b */
    public int f77204b;

    /* renamed from: c */
    public int f77205c;

    /* renamed from: d */
    public int f77206d = 0;

    public C27435n(byte[] bArr, int i, int i2) {
        this.f77203a = bArr;
        this.f77205c = i;
        this.f77204b = i2;
        m314a();
    }

    /* renamed from: a */
    public final void m314a() {
        int i;
        int i2 = this.f77205c;
        MediaSessionCompat.m43184y(i2 >= 0 && (i2 < (i = this.f77204b) || (i2 == i && this.f77206d == 0)));
    }

    /* renamed from: b */
    public boolean m313b(int i) {
        int i2 = this.f77205c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f77206d + i) - (i3 * 8);
        int i6 = i4;
        int i7 = i5;
        if (i5 > 7) {
            i6 = i4 + 1;
            i7 = i5 - 8;
        }
        int i8 = i6;
        int i9 = i2;
        while (true) {
            int i10 = i9 + 1;
            if (i10 > i8 || i8 >= this.f77204b) {
                break;
            }
            i9 = i10;
            if (m307h(i10)) {
                i8++;
                i9 = i10 + 2;
            }
        }
        int i11 = this.f77204b;
        boolean z = true;
        if (i8 >= i11) {
            z = i8 == i11 && i7 == 0;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m312c() {
        int i = this.f77205c;
        int i2 = this.f77206d;
        int i3 = 0;
        while (this.f77205c < this.f77204b && !m311d()) {
            i3++;
        }
        boolean z = this.f77205c == this.f77204b;
        this.f77205c = i;
        this.f77206d = i2;
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (m313b((i3 * 2) + 1)) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: d */
    public boolean m311d() {
        boolean z = (this.f77203a[this.f77205c] & (128 >> this.f77206d)) != 0;
        m306i();
        return z;
    }

    /* renamed from: e */
    public int m310e(int i) {
        int i2;
        int i3;
        this.f77206d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f77206d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f77206d = i5;
            byte[] bArr = this.f77203a;
            int i6 = this.f77205c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!m307h(i6 + 1)) {
                i3 = 1;
            }
            this.f77205c = i6 + i3;
        }
        byte[] bArr2 = this.f77203a;
        int i7 = this.f77205c;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.f77206d = 0;
            if (!m307h(i7 + 1)) {
                i3 = 1;
            }
            this.f77205c = i7 + i3;
        }
        m314a();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: f */
    public final int m309f() {
        int i = 0;
        int i2 = 0;
        while (!m311d()) {
            i2++;
        }
        if (i2 > 0) {
            i = m310e(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: g */
    public int m308g() {
        int m309f = m309f();
        return ((m309f + 1) / 2) * (m309f % 2 == 0 ? -1 : 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r0[r5 - 1] == 0) goto L13;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m307h(int r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = 2
            r1 = r5
            if (r0 > r1) goto L2e
            r0 = r5
            r1 = r4
            int r1 = r1.f77204b
            if (r0 >= r1) goto L2e
            r0 = r4
            byte[] r0 = r0.f77203a
            r7 = r0
            r0 = r7
            r1 = r5
            r0 = r0[r1]
            r1 = 3
            if (r0 != r1) goto L2e
            r0 = r7
            r1 = r5
            r2 = 2
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L2e
            r0 = r7
            r1 = r5
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L2e
            goto L30
        L2e:
            r0 = 0
            r6 = r0
        L30:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1904x0.C27435n.m307h(int):boolean");
    }

    /* renamed from: i */
    public void m306i() {
        int i = 1;
        int i2 = this.f77206d + 1;
        this.f77206d = i2;
        if (i2 == 8) {
            this.f77206d = 0;
            int i3 = this.f77205c;
            if (m307h(i3 + 1)) {
                i = 2;
            }
            this.f77205c = i3 + i;
        }
        m314a();
    }

    /* renamed from: j */
    public void m305j(int i) {
        int i2 = this.f77205c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f77205c = i4;
        int i5 = (i - (i3 * 8)) + this.f77206d;
        this.f77206d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f77205c = i4 + 1;
            this.f77206d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 > this.f77205c) {
                m314a();
                return;
            }
            i6 = i7;
            if (m307h(i7)) {
                this.f77205c++;
                i6 = i7 + 2;
            }
        }
    }
}
