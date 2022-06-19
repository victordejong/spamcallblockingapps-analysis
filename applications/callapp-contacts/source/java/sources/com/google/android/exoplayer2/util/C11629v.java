package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.v */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/v.class */
public final class C11629v {

    /* renamed from: a */
    private byte[] f38736a;

    /* renamed from: b */
    private int f38737b;

    /* renamed from: c */
    private int f38738c;

    /* renamed from: d */
    private int f38739d;

    public C11629v(byte[] bArr, int i, int i2) {
        m19778a(bArr, i, i2);
    }

    /* renamed from: d */
    private boolean m19772d(int i) {
        if (2 > i || i >= this.f38737b) {
            return false;
        }
        byte[] bArr = this.f38736a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: g */
    private void m19769g() {
        int i;
        int i2 = this.f38738c;
        C11593a.m20019b(i2 >= 0 && (i2 < (i = this.f38737b) || (i2 == i && this.f38739d == 0)));
    }

    /* renamed from: a */
    public final void m19780a() {
        int i = 1;
        int i2 = this.f38739d + 1;
        this.f38739d = i2;
        if (i2 == 8) {
            this.f38739d = 0;
            int i3 = this.f38738c;
            if (m19772d(i3 + 1)) {
                i = 2;
            }
            this.f38738c = i3 + i;
        }
        m19769g();
    }

    /* renamed from: a */
    public final void m19779a(int i) {
        int i2 = this.f38738c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f38738c = i4;
        int i5 = this.f38739d + (i - (i3 * 8));
        this.f38739d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f38738c = i4 + 1;
            this.f38739d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 > this.f38738c) {
                m19769g();
                return;
            }
            i6 = i7;
            if (m19772d(i7)) {
                this.f38738c++;
                i6 = i7 + 2;
            }
        }
    }

    /* renamed from: a */
    public final void m19778a(byte[] bArr, int i, int i2) {
        this.f38736a = bArr;
        this.f38738c = i;
        this.f38737b = i2;
        this.f38739d = 0;
        m19769g();
    }

    /* renamed from: b */
    public final boolean m19777b() {
        boolean z = (this.f38736a[this.f38738c] & (128 >> this.f38739d)) != 0;
        m19780a();
        return z;
    }

    /* renamed from: b */
    public final boolean m19776b(int i) {
        int i2 = this.f38738c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f38739d + i) - (i3 * 8);
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
            if (i10 > i8 || i8 >= this.f38737b) {
                break;
            }
            i9 = i10;
            if (m19772d(i10)) {
                i8++;
                i9 = i10 + 2;
            }
        }
        int i11 = this.f38737b;
        boolean z = true;
        if (i8 >= i11) {
            z = i8 == i11 && i7 == 0;
        }
        return z;
    }

    /* renamed from: c */
    public final int m19774c(int i) {
        int i2;
        int i3;
        this.f38739d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f38739d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f38739d = i5;
            byte[] bArr = this.f38736a;
            int i6 = this.f38738c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!m19772d(i6 + 1)) {
                i3 = 1;
            }
            this.f38738c = i6 + i3;
        }
        byte[] bArr2 = this.f38736a;
        int i7 = this.f38738c;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.f38739d = 0;
            if (!m19772d(i7 + 1)) {
                i3 = 1;
            }
            this.f38738c = i7 + i3;
        }
        m19769g();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: c */
    public final boolean m19775c() {
        int i = this.f38738c;
        int i2 = this.f38739d;
        int i3 = 0;
        while (this.f38738c < this.f38737b && !m19777b()) {
            i3++;
        }
        boolean z = this.f38738c == this.f38737b;
        this.f38738c = i;
        this.f38739d = i2;
        return !z && m19776b((i3 * 2) + 1);
    }

    /* renamed from: d */
    public final int m19773d() {
        return m19770f();
    }

    /* renamed from: e */
    public final int m19771e() {
        int m19770f = m19770f();
        return (m19770f % 2 == 0 ? -1 : 1) * ((m19770f + 1) / 2);
    }

    /* renamed from: f */
    public final int m19770f() {
        int i = 0;
        int i2 = 0;
        while (!m19777b()) {
            i2++;
        }
        if (i2 > 0) {
            i = m19774c(i2);
        }
        return ((1 << i2) - 1) + i;
    }
}
