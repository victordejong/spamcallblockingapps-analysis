package com.google.zxing.p175d.p176a;
/* renamed from: com.google.zxing.d.a.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/d/a/a.class */
public final class C5125a {

    /* renamed from: a */
    private final C5126b[] f21658a;

    /* renamed from: b */
    private int f21659b;

    /* renamed from: c */
    private final int f21660c;

    /* renamed from: d */
    private final int f21661d;

    public C5125a(int i, int i2) {
        this.f21658a = new C5126b[i];
        int length = this.f21658a.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f21658a[i3] = new C5126b(((i2 + 4) * 17) + 1);
        }
        this.f21661d = i2 * 17;
        this.f21660c = i;
        this.f21659b = -1;
    }

    /* renamed from: a */
    public void m1432a() {
        this.f21659b++;
    }

    /* renamed from: a */
    public byte[][] m1431a(int i, int i2) {
        byte[][] bArr = new byte[this.f21660c * i2][this.f21661d * i];
        int i3 = this.f21660c * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i3 - i4) - 1] = this.f21658a[i4 / i2].m1429a(i);
        }
        return bArr;
    }

    /* renamed from: b */
    public C5126b m1430b() {
        return this.f21658a[this.f21659b];
    }
}
