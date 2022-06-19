package com.google.zxing.common.reedsolomon;
/* renamed from: com.google.zxing.common.reedsolomon.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/common/reedsolomon/a.class */
public final class C5119a {

    /* renamed from: f */
    public static final C5119a f21643f;

    /* renamed from: g */
    public static final C5119a f21644g;

    /* renamed from: i */
    private final int[] f21646i;

    /* renamed from: j */
    private final int[] f21647j;

    /* renamed from: k */
    private final C5120b f21648k;

    /* renamed from: l */
    private final C5120b f21649l;

    /* renamed from: m */
    private final int f21650m;

    /* renamed from: n */
    private final int f21651n;

    /* renamed from: o */
    private final int f21652o;

    /* renamed from: a */
    public static final C5119a f21638a = new C5119a(4201, 4096, 1);

    /* renamed from: b */
    public static final C5119a f21639b = new C5119a(1033, 1024, 1);

    /* renamed from: c */
    public static final C5119a f21640c = new C5119a(67, 64, 1);

    /* renamed from: d */
    public static final C5119a f21641d = new C5119a(19, 16, 1);

    /* renamed from: e */
    public static final C5119a f21642e = new C5119a(285, 256, 0);

    /* renamed from: h */
    public static final C5119a f21645h = f21640c;

    static {
        C5119a c5119a = new C5119a(301, 256, 1);
        f21643f = c5119a;
        f21644g = c5119a;
    }

    public C5119a(int i, int i2, int i3) {
        this.f21651n = i;
        this.f21650m = i2;
        this.f21652o = i3;
        this.f21646i = new int[i2];
        this.f21647j = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f21646i[i5] = i4;
            int i6 = i4 << 1;
            i4 = i6;
            if (i6 >= i2) {
                i4 = (i6 ^ i) & (i2 - 1);
            }
        }
        for (int i7 = 0; i7 < i2 - 1; i7++) {
            this.f21647j[this.f21646i[i7]] = i7;
        }
        this.f21648k = new C5120b(this, new int[]{0});
        this.f21649l = new C5120b(this, new int[]{1});
    }

    /* renamed from: b */
    public static int m1448b(int i, int i2) {
        return i ^ i2;
    }

    /* renamed from: a */
    public int m1452a(int i) {
        return this.f21646i[i];
    }

    /* renamed from: a */
    public C5120b m1453a() {
        return this.f21648k;
    }

    /* renamed from: a */
    public C5120b m1451a(int i, int i2) {
        C5120b c5120b;
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            c5120b = this.f21648k;
        } else {
            int[] iArr = new int[i + 1];
            iArr[0] = i2;
            c5120b = new C5120b(this, iArr);
        }
        return c5120b;
    }

    /* renamed from: b */
    public int m1450b() {
        return this.f21652o;
    }

    /* renamed from: b */
    public int m1449b(int i) {
        if (i == 0) {
            throw new IllegalArgumentException();
        }
        return this.f21647j[i];
    }

    /* renamed from: c */
    public int m1447c(int i) {
        if (i == 0) {
            throw new ArithmeticException();
        }
        return this.f21646i[(this.f21650m - this.f21647j[i]) - 1];
    }

    /* renamed from: c */
    public int m1446c(int i, int i2) {
        return (i == 0 || i2 == 0) ? 0 : this.f21646i[(this.f21647j[i] + this.f21647j[i2]) % (this.f21650m - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f21651n) + ',' + this.f21650m + ')';
    }
}
