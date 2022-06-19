package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.w */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/w.class */
public final class C5537w {

    /* renamed from: a */
    private byte[] f17944a;

    /* renamed from: b */
    private int f17945b;

    /* renamed from: c */
    private int f17946c;

    /* renamed from: d */
    private int f17947d;

    public C5537w(byte[] bArr, int i, int i2) {
        m18644i(bArr, i, i2);
    }

    /* renamed from: a */
    private void m18652a() {
        int i;
        int i2 = this.f17946c;
        C5508e.m18910f(i2 >= 0 && (i2 < (i = this.f17945b) || (i2 == i && this.f17947d == 0)));
    }

    /* renamed from: f */
    private int m18647f() {
        int i = 0;
        int i2 = 0;
        while (!m18649d()) {
            i2++;
        }
        if (i2 > 0) {
            i = m18648e(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r0[r5 - 1] == 0) goto L13;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m18643j(int r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = 2
            r1 = r5
            if (r0 > r1) goto L2e
            r0 = r5
            r1 = r4
            int r1 = r1.f17945b
            if (r0 >= r1) goto L2e
            r0 = r4
            byte[] r0 = r0.f17944a
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C5537w.m18643j(int):boolean");
    }

    /* renamed from: b */
    public boolean m18651b(int i) {
        int i2 = this.f17946c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f17947d + i) - (i3 * 8);
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
            if (i10 > i8 || i8 >= this.f17945b) {
                break;
            }
            i9 = i10;
            if (m18643j(i10)) {
                i8++;
                i9 = i10 + 2;
            }
        }
        int i11 = this.f17945b;
        boolean z = true;
        if (i8 >= i11) {
            z = i8 == i11 && i7 == 0;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m18650c() {
        int i = this.f17946c;
        int i2 = this.f17947d;
        int i3 = 0;
        while (this.f17946c < this.f17945b && !m18649d()) {
            i3++;
        }
        boolean z = this.f17946c == this.f17945b;
        this.f17946c = i;
        this.f17947d = i2;
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (m18651b((i3 * 2) + 1)) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: d */
    public boolean m18649d() {
        boolean z = (this.f17944a[this.f17946c] & (128 >> this.f17947d)) != 0;
        m18642k();
        return z;
    }

    /* renamed from: e */
    public int m18648e(int i) {
        int i2;
        int i3;
        this.f17947d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f17947d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f17947d = i5;
            byte[] bArr = this.f17944a;
            int i6 = this.f17946c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!m18643j(i6 + 1)) {
                i3 = 1;
            }
            this.f17946c = i6 + i3;
        }
        byte[] bArr2 = this.f17944a;
        int i7 = this.f17946c;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.f17947d = 0;
            if (!m18643j(i7 + 1)) {
                i3 = 1;
            }
            this.f17946c = i7 + i3;
        }
        m18652a();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: g */
    public int m18646g() {
        int m18647f = m18647f();
        return (m18647f % 2 == 0 ? -1 : 1) * ((m18647f + 1) / 2);
    }

    /* renamed from: h */
    public int m18645h() {
        return m18647f();
    }

    /* renamed from: i */
    public void m18644i(byte[] bArr, int i, int i2) {
        this.f17944a = bArr;
        this.f17946c = i;
        this.f17945b = i2;
        this.f17947d = 0;
        m18652a();
    }

    /* renamed from: k */
    public void m18642k() {
        int i = 1;
        int i2 = this.f17947d + 1;
        this.f17947d = i2;
        if (i2 == 8) {
            this.f17947d = 0;
            int i3 = this.f17946c;
            if (m18643j(i3 + 1)) {
                i = 2;
            }
            this.f17946c = i3 + i;
        }
        m18652a();
    }

    /* renamed from: l */
    public void m18641l(int i) {
        int i2 = this.f17946c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f17946c = i4;
        int i5 = this.f17947d + (i - (i3 * 8));
        this.f17947d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f17946c = i4 + 1;
            this.f17947d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 > this.f17946c) {
                m18652a();
                return;
            }
            i6 = i7;
            if (m18643j(i7)) {
                this.f17946c++;
                i6 = i7 + 2;
            }
        }
    }
}
