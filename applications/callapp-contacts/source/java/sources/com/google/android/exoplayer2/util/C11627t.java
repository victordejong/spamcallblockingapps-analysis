package com.google.android.exoplayer2.util;

import java.nio.charset.Charset;
/* renamed from: com.google.android.exoplayer2.util.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/t.class */
public final class C11627t {

    /* renamed from: a */
    public byte[] f38729a;

    /* renamed from: b */
    public int f38730b;

    /* renamed from: c */
    public int f38731c;

    /* renamed from: d */
    private int f38732d;

    public C11627t() {
        this.f38729a = C11599af.f38653f;
    }

    public C11627t(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public C11627t(byte[] bArr, int i) {
        this.f38729a = bArr;
        this.f38732d = i;
    }

    /* renamed from: a */
    public final int m19827a() {
        return ((this.f38732d - this.f38730b) * 8) - this.f38731c;
    }

    /* renamed from: a */
    public final String m19825a(int i, Charset charset) {
        byte[] bArr = new byte[i];
        m19818c(bArr, i);
        return new String(bArr, charset);
    }

    /* renamed from: a */
    public final void m19826a(int i) {
        int i2 = i / 8;
        this.f38730b = i2;
        this.f38731c = i - (i2 * 8);
        m19813g();
    }

    /* renamed from: a */
    public final void m19824a(byte[] bArr, int i) {
        this.f38729a = bArr;
        this.f38730b = 0;
        this.f38731c = 0;
        this.f38732d = i;
    }

    /* renamed from: b */
    public final int m19823b() {
        return (this.f38730b * 8) + this.f38731c;
    }

    /* renamed from: b */
    public final void m19822b(int i) {
        int i2 = i / 8;
        int i3 = this.f38730b + i2;
        this.f38730b = i3;
        int i4 = this.f38731c + (i - (i2 * 8));
        this.f38731c = i4;
        if (i4 > 7) {
            this.f38730b = i3 + 1;
            this.f38731c = i4 - 8;
        }
        m19813g();
    }

    /* renamed from: b */
    public final void m19821b(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4 = (i >> 3) + 0;
        for (int i5 = 0; i5 < i4; i5++) {
            byte[] bArr2 = this.f38729a;
            int i6 = this.f38730b;
            this.f38730b = i6 + 1;
            byte b = bArr2[i6];
            int i7 = this.f38731c;
            bArr[i5] = (byte) (b << i7);
            bArr[i5] = (byte) (((255 & bArr2[i3]) >> (8 - i7)) | bArr[i5]);
        }
        int i8 = i & 7;
        if (i8 == 0) {
            return;
        }
        bArr[i4] = (byte) (bArr[i4] & (255 >> i8));
        int i9 = this.f38731c;
        if (i9 + i8 > 8) {
            byte b2 = bArr[i4];
            byte[] bArr3 = this.f38729a;
            this.f38730b = this.f38730b + 1;
            bArr[i4] = (byte) (b2 | ((bArr3[i2] & 255) << i9));
            this.f38731c = i9 - 8;
        }
        int i10 = this.f38731c + i8;
        this.f38731c = i10;
        byte[] bArr4 = this.f38729a;
        int i11 = this.f38730b;
        bArr[i4] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i8))) | bArr[i4]);
        if (i10 == 8) {
            this.f38731c = 0;
            this.f38730b = i11 + 1;
        }
        m19813g();
    }

    /* renamed from: c */
    public final int m19820c() {
        C11593a.m20019b(this.f38731c == 0);
        return this.f38730b;
    }

    /* renamed from: c */
    public final int m19819c(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        this.f38731c += i;
        int i4 = 0;
        while (true) {
            i2 = i4;
            i3 = this.f38731c;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f38731c = i5;
            byte[] bArr = this.f38729a;
            int i6 = this.f38730b;
            this.f38730b = i6 + 1;
            i4 = i2 | ((bArr[i6] & 255) << i5);
        }
        byte[] bArr2 = this.f38729a;
        int i7 = this.f38730b;
        byte b = bArr2[i7];
        if (i3 == 8) {
            this.f38731c = 0;
            this.f38730b = i7 + 1;
        }
        m19813g();
        return ((-1) >>> (32 - i)) & (i2 | ((b & 255) >> (8 - i3)));
    }

    /* renamed from: c */
    public final void m19818c(byte[] bArr, int i) {
        C11593a.m20019b(this.f38731c == 0);
        System.arraycopy(this.f38729a, this.f38730b, bArr, 0, i);
        this.f38730b += i;
        m19813g();
    }

    /* renamed from: d */
    public final void m19817d() {
        int i = this.f38731c + 1;
        this.f38731c = i;
        if (i == 8) {
            this.f38731c = 0;
            this.f38730b++;
        }
        m19813g();
    }

    /* renamed from: d */
    public final void m19816d(int i) {
        C11593a.m20019b(this.f38731c == 0);
        this.f38730b += i;
        m19813g();
    }

    /* renamed from: e */
    public final boolean m19815e() {
        boolean z = (this.f38729a[this.f38730b] & (128 >> this.f38731c)) != 0;
        m19817d();
        return z;
    }

    /* renamed from: f */
    public final void m19814f() {
        if (this.f38731c == 0) {
            return;
        }
        this.f38731c = 0;
        this.f38730b++;
        m19813g();
    }

    /* renamed from: g */
    public final void m19813g() {
        int i;
        int i2 = this.f38730b;
        C11593a.m20019b(i2 >= 0 && (i2 < (i = this.f38732d) || (i2 == i && this.f38731c == 0)));
    }
}
