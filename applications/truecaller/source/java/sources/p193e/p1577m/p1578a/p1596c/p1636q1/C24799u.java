package p193e.p1577m.p1578a.p1596c.p1636q1;

import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.q1.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/u.class */
public final class C24799u {

    /* renamed from: a */
    public byte[] f69507a;

    /* renamed from: b */
    public int f69508b;

    /* renamed from: c */
    public int f69509c;

    /* renamed from: d */
    public int f69510d = 0;

    public C24799u(byte[] bArr, int i, int i2) {
        this.f69507a = bArr;
        this.f69509c = i;
        this.f69508b = i2;
        m4519a();
    }

    /* renamed from: a */
    public final void m4519a() {
        int i;
        int i2 = this.f69509c;
        C26232y.m2286x(i2 >= 0 && (i2 < (i = this.f69508b) || (i2 == i && this.f69510d == 0)));
    }

    /* renamed from: b */
    public boolean m4518b(int i) {
        int i2 = this.f69509c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f69510d + i) - (i3 * 8);
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
            if (i10 > i8 || i8 >= this.f69508b) {
                break;
            }
            i9 = i10;
            if (m4512h(i10)) {
                i8++;
                i9 = i10 + 2;
            }
        }
        int i11 = this.f69508b;
        boolean z = true;
        if (i8 >= i11) {
            z = i8 == i11 && i7 == 0;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m4517c() {
        int i = this.f69509c;
        int i2 = this.f69510d;
        int i3 = 0;
        while (this.f69509c < this.f69508b && !m4516d()) {
            i3++;
        }
        boolean z = this.f69509c == this.f69508b;
        this.f69509c = i;
        this.f69510d = i2;
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (m4518b((i3 * 2) + 1)) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: d */
    public boolean m4516d() {
        boolean z = (this.f69507a[this.f69509c] & (128 >> this.f69510d)) != 0;
        m4511i();
        return z;
    }

    /* renamed from: e */
    public int m4515e(int i) {
        int i2;
        int i3;
        this.f69510d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f69510d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f69510d = i5;
            byte[] bArr = this.f69507a;
            int i6 = this.f69509c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!m4512h(i6 + 1)) {
                i3 = 1;
            }
            this.f69509c = i6 + i3;
        }
        byte[] bArr2 = this.f69507a;
        int i7 = this.f69509c;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.f69510d = 0;
            if (!m4512h(i7 + 1)) {
                i3 = 1;
            }
            this.f69509c = i7 + i3;
        }
        m4519a();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: f */
    public final int m4514f() {
        int i = 0;
        int i2 = 0;
        while (!m4516d()) {
            i2++;
        }
        if (i2 > 0) {
            i = m4515e(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: g */
    public int m4513g() {
        int m4514f = m4514f();
        return ((m4514f + 1) / 2) * (m4514f % 2 == 0 ? -1 : 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r0[r5 - 1] == 0) goto L13;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4512h(int r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = 2
            r1 = r5
            if (r0 > r1) goto L2e
            r0 = r5
            r1 = r4
            int r1 = r1.f69508b
            if (r0 >= r1) goto L2e
            r0 = r4
            byte[] r0 = r0.f69507a
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1636q1.C24799u.m4512h(int):boolean");
    }

    /* renamed from: i */
    public void m4511i() {
        int i = 1;
        int i2 = this.f69510d + 1;
        this.f69510d = i2;
        if (i2 == 8) {
            this.f69510d = 0;
            int i3 = this.f69509c;
            if (m4512h(i3 + 1)) {
                i = 2;
            }
            this.f69509c = i3 + i;
        }
        m4519a();
    }

    /* renamed from: j */
    public void m4510j(int i) {
        int i2 = this.f69509c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f69509c = i4;
        int i5 = (i - (i3 * 8)) + this.f69510d;
        this.f69510d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f69509c = i4 + 1;
            this.f69510d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 > this.f69509c) {
                m4519a();
                return;
            }
            i6 = i7;
            if (m4512h(i7)) {
                this.f69509c++;
                i6 = i7 + 2;
            }
        }
    }
}
