package com.esotericsoftware.a;

import okhttp3.internal.http2.Settings;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    byte[] f18887a;

    /* renamed from: b  reason: collision with root package name */
    int f18888b;

    public d() {
        this.f18887a = new byte[64];
    }

    public d(int i) {
        this.f18887a = new byte[i];
    }

    private void d(int i) {
        byte[] bArr = this.f18887a;
        int length = bArr.length * 2;
        int i2 = this.f18888b;
        int i3 = i + i2;
        if (length > i3) {
            i3 = length;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        this.f18887a = bArr2;
    }

    public final d a(int i) {
        int i2 = this.f18888b;
        int i3 = i2 + 1;
        if (i3 > this.f18887a.length) {
            d(1);
        }
        this.f18887a[i2] = (byte) i;
        this.f18888b = i3;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final d a(int i, int i2) {
        int i3 = this.f18888b;
        if (i3 + 2 > this.f18887a.length) {
            d(2);
        }
        byte[] bArr = this.f18887a;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        bArr[i4] = (byte) i2;
        this.f18888b = i4 + 1;
        return this;
    }

    public final d a(long j) {
        int i = this.f18888b;
        if (i + 8 > this.f18887a.length) {
            d(8);
        }
        byte[] bArr = this.f18887a;
        int i2 = (int) (j >>> 32);
        int i3 = i + 1;
        bArr[i] = (byte) (i2 >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i2 >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        int i6 = i5 + 1;
        bArr[i5] = (byte) i2;
        int i7 = (int) j;
        int i8 = i6 + 1;
        bArr[i6] = (byte) (i7 >>> 24);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (i7 >>> 16);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i7 >>> 8);
        bArr[i10] = (byte) i7;
        this.f18888b = i10 + 1;
        return this;
    }

    public final d a(String str) {
        int length = str.length();
        if (length <= 65535) {
            int i = this.f18888b;
            if (i + 2 + length > this.f18887a.length) {
                d(length + 2);
            }
            byte[] bArr = this.f18887a;
            int i2 = i + 1;
            bArr[i] = (byte) (length >>> 8);
            int i3 = i2 + 1;
            bArr[i2] = (byte) length;
            int i4 = 0;
            while (i4 < length) {
                char charAt = str.charAt(i4);
                if (charAt <= 0 || charAt > 127) {
                    this.f18888b = i3;
                    return a(str, i4, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                }
                bArr[i3] = (byte) charAt;
                i4++;
                i3++;
            }
            this.f18888b = i3;
            return this;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final d a(String str, int i, int i2) {
        int i3;
        int i4;
        int length = str.length();
        int i5 = i;
        for (int i6 = i; i6 < length; i6++) {
            char charAt = str.charAt(i6);
            if (charAt > 0 && charAt <= 127) {
                i4 = i5;
                i3 = 1;
            } else if (charAt > 2047) {
                i4 = i5;
                i3 = 3;
            } else {
                i4 = i5;
                i3 = 2;
            }
            i5 = i4 + i3;
        }
        if (i5 <= i2) {
            int i7 = this.f18888b;
            int i8 = (i7 - i) - 2;
            if (i8 >= 0) {
                byte[] bArr = this.f18887a;
                bArr[i8] = (byte) (i5 >>> 8);
                bArr[i8 + 1] = (byte) i5;
            }
            if ((i7 + i5) - i > this.f18887a.length) {
                d(i5 - i);
            }
            int i9 = this.f18888b;
            for (int i10 = i; i10 < length; i10++) {
                char charAt2 = str.charAt(i10);
                if (charAt2 <= 0 || charAt2 > 127) {
                    byte[] bArr2 = this.f18887a;
                    int i11 = i9 + 1;
                    if (charAt2 > 2047) {
                        bArr2[i9] = (byte) (((charAt2 >> '\f') & 15) | 224);
                        int i12 = i11 + 1;
                        bArr2[i11] = (byte) (((charAt2 >> 6) & 63) | 128);
                        i9 = i12 + 1;
                        bArr2[i12] = (byte) ((charAt2 & '?') | 128);
                    } else {
                        bArr2[i9] = (byte) (((charAt2 >> 6) & 31) | 192);
                        i9 = i11 + 1;
                        bArr2[i11] = (byte) ((charAt2 & '?') | 128);
                    }
                } else {
                    i9++;
                    this.f18887a[i9] = (byte) charAt2;
                }
            }
            this.f18888b = i9;
            return this;
        }
        throw new IllegalArgumentException();
    }

    public final d a(byte[] bArr, int i, int i2) {
        if (this.f18888b + i2 > this.f18887a.length) {
            d(i2);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i, this.f18887a, this.f18888b, i2);
        }
        this.f18888b += i2;
        return this;
    }

    public final d b(int i) {
        int i2 = this.f18888b;
        if (i2 + 2 > this.f18887a.length) {
            d(2);
        }
        byte[] bArr = this.f18887a;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 8);
        bArr[i3] = (byte) i;
        this.f18888b = i3 + 1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final d b(int i, int i2) {
        int i3 = this.f18888b;
        if (i3 + 3 > this.f18887a.length) {
            d(3);
        }
        byte[] bArr = this.f18887a;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        bArr[i5] = (byte) i2;
        this.f18888b = i5 + 1;
        return this;
    }

    public final d c(int i) {
        int i2 = this.f18888b;
        if (i2 + 4 > this.f18887a.length) {
            d(4);
        }
        byte[] bArr = this.f18887a;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i >>> 8);
        bArr[i5] = (byte) i;
        this.f18888b = i5 + 1;
        return this;
    }
}
