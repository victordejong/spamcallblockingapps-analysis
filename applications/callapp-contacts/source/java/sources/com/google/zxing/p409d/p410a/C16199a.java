package com.google.zxing.p409d.p410a;
/* renamed from: com.google.zxing.d.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a/a.class */
public final class C16199a {

    /* renamed from: a */
    int f57181a;

    /* renamed from: b */
    private final C16200b[] f57182b;

    /* renamed from: c */
    private final int f57183c;

    /* renamed from: d */
    private final int f57184d;

    public C16199a(int i, int i2) {
        C16200b[] c16200bArr = new C16200b[i];
        this.f57182b = c16200bArr;
        int length = c16200bArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f57182b[i3] = new C16200b(((i2 + 4) * 17) + 1);
        }
        this.f57184d = i2 * 17;
        this.f57183c = i;
        this.f57181a = -1;
    }

    /* renamed from: a */
    public final C16200b m7664a() {
        return this.f57182b[this.f57181a];
    }

    /* renamed from: a */
    public final byte[][] m7663a(int i, int i2) {
        C16200b c16200b;
        byte[][] bArr = new byte[this.f57183c * i2][this.f57184d * i];
        int i3 = this.f57183c * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            int length = this.f57182b[i4 / i2].f57185a.length * i;
            byte[] bArr2 = new byte[length];
            for (int i5 = 0; i5 < length; i5++) {
                bArr2[i5] = c16200b.f57185a[i5 / i];
            }
            bArr[(i3 - i4) - 1] = bArr2;
        }
        return bArr;
    }
}
