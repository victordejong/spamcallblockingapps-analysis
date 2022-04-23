package com.google.android.exoplayer2.util;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f22338a;

    /* renamed from: b  reason: collision with root package name */
    private int f22339b;

    /* renamed from: c  reason: collision with root package name */
    private int f22340c;

    /* renamed from: d  reason: collision with root package name */
    private int f22341d;

    public v(byte[] bArr, int i, int i2) {
        a(bArr, i, i2);
    }

    private boolean d(int i) {
        if (2 > i || i >= this.f22339b) {
            return false;
        }
        byte[] bArr = this.f22338a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    private void g() {
        int i;
        int i2 = this.f22340c;
        a.b(i2 >= 0 && (i2 < (i = this.f22339b) || (i2 == i && this.f22341d == 0)));
    }

    public final void a() {
        int i = 1;
        int i2 = this.f22341d + 1;
        this.f22341d = i2;
        if (i2 == 8) {
            this.f22341d = 0;
            int i3 = this.f22340c;
            if (d(i3 + 1)) {
                i = 2;
            }
            this.f22340c = i3 + i;
        }
        g();
    }

    public final void a(int i) {
        int i2 = this.f22340c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f22340c = i4;
        int i5 = this.f22341d + (i - (i3 * 8));
        this.f22341d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f22340c = i4 + 1;
            this.f22341d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 <= this.f22340c) {
                i6 = i7;
                if (d(i7)) {
                    this.f22340c++;
                    i6 = i7 + 2;
                }
            } else {
                g();
                return;
            }
        }
    }

    public final void a(byte[] bArr, int i, int i2) {
        this.f22338a = bArr;
        this.f22340c = i;
        this.f22339b = i2;
        this.f22341d = 0;
        g();
    }

    public final boolean b() {
        boolean z = (this.f22338a[this.f22340c] & (128 >> this.f22341d)) != 0;
        a();
        return z;
    }

    public final boolean b(int i) {
        int i2 = this.f22340c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f22341d + i) - (i3 * 8);
        int i6 = i4;
        int i7 = i5;
        if (i5 > 7) {
            i6 = i4 + 1;
            i7 = i5 - 8;
        }
        int i8 = i2;
        while (true) {
            int i9 = i8 + 1;
            if (i9 > i6 || i6 >= this.f22339b) {
                break;
            }
            i8 = i9;
            if (d(i9)) {
                i6++;
                i8 = i9 + 2;
            }
        }
        int i10 = this.f22339b;
        boolean z = true;
        if (i6 >= i10) {
            z = i6 == i10 && i7 == 0;
        }
        return z;
    }

    public final int c(int i) {
        int i2;
        int i3;
        this.f22341d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f22341d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f22341d = i5;
            byte[] bArr = this.f22338a;
            int i6 = this.f22340c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!d(i6 + 1)) {
                i3 = 1;
            }
            this.f22340c = i6 + i3;
        }
        byte[] bArr2 = this.f22338a;
        int i7 = this.f22340c;
        byte b2 = bArr2[i7];
        if (i2 == 8) {
            this.f22341d = 0;
            if (!d(i7 + 1)) {
                i3 = 1;
            }
            this.f22340c = i7 + i3;
        }
        g();
        return ((-1) >>> (32 - i)) & (i4 | ((b2 & 255) >> (8 - i2)));
    }

    public final boolean c() {
        int i = this.f22340c;
        int i2 = this.f22341d;
        int i3 = 0;
        while (this.f22340c < this.f22339b && !b()) {
            i3++;
        }
        boolean z = this.f22340c == this.f22339b;
        this.f22340c = i;
        this.f22341d = i2;
        return !z && b((i3 * 2) + 1);
    }

    public final int d() {
        return f();
    }

    public final int e() {
        int f = f();
        return (f % 2 == 0 ? -1 : 1) * ((f + 1) / 2);
    }

    public final int f() {
        int i = 0;
        int i2 = 0;
        while (!b()) {
            i2++;
        }
        if (i2 > 0) {
            i = c(i2);
        }
        return ((1 << i2) - 1) + i;
    }
}
