package com.esotericsoftware.p273a;

import okhttp3.internal.http2.Settings;
/* renamed from: com.esotericsoftware.a.d */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/d.class */
public final class C9348d {

    /* renamed from: a */
    byte[] f31986a;

    /* renamed from: b */
    int f31987b;

    public C9348d() {
        this.f31986a = new byte[64];
    }

    public C9348d(int i) {
        this.f31986a = new byte[i];
    }

    /* renamed from: d */
    private void m24643d(int i) {
        byte[] bArr = this.f31986a;
        int length = bArr.length * 2;
        int i2 = this.f31987b;
        int i3 = i + i2;
        if (length > i3) {
            i3 = length;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        this.f31986a = bArr2;
    }

    /* renamed from: a */
    public final C9348d m24652a(int i) {
        int i2 = this.f31987b;
        int i3 = i2 + 1;
        if (i3 > this.f31986a.length) {
            m24643d(1);
        }
        this.f31986a[i2] = (byte) i;
        this.f31987b = i3;
        return this;
    }

    /* renamed from: a */
    public final C9348d m24651a(int i, int i2) {
        int i3 = this.f31987b;
        if (i3 + 2 > this.f31986a.length) {
            m24643d(2);
        }
        byte[] bArr = this.f31986a;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        bArr[i4] = (byte) i2;
        this.f31987b = i4 + 1;
        return this;
    }

    /* renamed from: a */
    public final C9348d m24650a(long j) {
        int i = this.f31987b;
        if (i + 8 > this.f31986a.length) {
            m24643d(8);
        }
        byte[] bArr = this.f31986a;
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
        this.f31987b = i10 + 1;
        return this;
    }

    /* renamed from: a */
    public final C9348d m24649a(String str) {
        int length = str.length();
        if (length <= 65535) {
            int i = this.f31987b;
            if (i + 2 + length > this.f31986a.length) {
                m24643d(length + 2);
            }
            byte[] bArr = this.f31986a;
            int i2 = i + 1;
            bArr[i] = (byte) (length >>> 8);
            int i3 = i2 + 1;
            bArr[i2] = (byte) length;
            int i4 = 0;
            while (i4 < length) {
                char charAt = str.charAt(i4);
                if (charAt <= 0 || charAt > 127) {
                    this.f31987b = i3;
                    return m24648a(str, i4, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                }
                bArr[i3] = (byte) charAt;
                i4++;
                i3++;
            }
            this.f31987b = i3;
            return this;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final C9348d m24648a(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int length = str.length();
        int i6 = i;
        int i7 = i;
        while (i7 < length) {
            char charAt = str.charAt(i7);
            if (charAt > 0 && charAt <= 127) {
                i5 = i6;
                i4 = 1;
            } else if (charAt > 2047) {
                i5 = i6;
                i4 = 3;
            } else {
                i5 = i6;
                i4 = 2;
            }
            i7++;
            i6 = i5 + i4;
        }
        if (i6 <= i2) {
            int i8 = this.f31987b;
            int i9 = (i8 - i) - 2;
            if (i9 >= 0) {
                byte[] bArr = this.f31986a;
                bArr[i9] = (byte) (i6 >>> 8);
                bArr[i9 + 1] = (byte) i6;
            }
            if ((i8 + i6) - i > this.f31986a.length) {
                m24643d(i6 - i);
            }
            int i10 = this.f31987b;
            int i11 = i;
            while (i11 < length) {
                char charAt2 = str.charAt(i11);
                if (charAt2 <= 0 || charAt2 > 127) {
                    byte[] bArr2 = this.f31986a;
                    int i12 = i10 + 1;
                    if (charAt2 > 2047) {
                        bArr2[i10] = (byte) (((charAt2 >> '\f') & 15) | 224);
                        int i13 = i12 + 1;
                        bArr2[i12] = (byte) (((charAt2 >> 6) & 63) | 128);
                        i3 = i13 + 1;
                        bArr2[i13] = (byte) ((charAt2 & '?') | 128);
                    } else {
                        bArr2[i10] = (byte) (((charAt2 >> 6) & 31) | 192);
                        i3 = i12 + 1;
                        bArr2[i12] = (byte) ((charAt2 & '?') | 128);
                    }
                } else {
                    i3 = i10 + 1;
                    this.f31986a[i10] = (byte) charAt2;
                }
                i11++;
                i10 = i3;
            }
            this.f31987b = i10;
            return this;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final C9348d m24647a(byte[] bArr, int i, int i2) {
        if (this.f31987b + i2 > this.f31986a.length) {
            m24643d(i2);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i, this.f31986a, this.f31987b, i2);
        }
        this.f31987b += i2;
        return this;
    }

    /* renamed from: b */
    public final C9348d m24646b(int i) {
        int i2 = this.f31987b;
        if (i2 + 2 > this.f31986a.length) {
            m24643d(2);
        }
        byte[] bArr = this.f31986a;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 8);
        bArr[i3] = (byte) i;
        this.f31987b = i3 + 1;
        return this;
    }

    /* renamed from: b */
    public final C9348d m24645b(int i, int i2) {
        int i3 = this.f31987b;
        if (i3 + 3 > this.f31986a.length) {
            m24643d(3);
        }
        byte[] bArr = this.f31986a;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        bArr[i5] = (byte) i2;
        this.f31987b = i5 + 1;
        return this;
    }

    /* renamed from: c */
    public final C9348d m24644c(int i) {
        int i2 = this.f31987b;
        if (i2 + 4 > this.f31986a.length) {
            m24643d(4);
        }
        byte[] bArr = this.f31986a;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i >>> 8);
        bArr[i5] = (byte) i;
        this.f31987b = i5 + 1;
        return this;
    }
}
