package com.google.zxing.p177e.p179b;

import java.util.Arrays;
/* renamed from: com.google.zxing.e.b.b */
/* loaded from: classes-dex2jar.jar:com/google/zxing/e/b/b.class */
public final class C5141b {

    /* renamed from: a */
    private final byte[][] f21721a;

    /* renamed from: b */
    private final int f21722b;

    /* renamed from: c */
    private final int f21723c;

    public C5141b(int i, int i2) {
        this.f21721a = new byte[i2][i];
        this.f21722b = i;
        this.f21723c = i2;
    }

    /* renamed from: a */
    public byte m1374a(int i, int i2) {
        return this.f21721a[i2][i];
    }

    /* renamed from: a */
    public int m1376a() {
        return this.f21723c;
    }

    /* renamed from: a */
    public void m1375a(byte b) {
        for (byte[] bArr : this.f21721a) {
            Arrays.fill(bArr, b);
        }
    }

    /* renamed from: a */
    public void m1373a(int i, int i2, int i3) {
        this.f21721a[i2][i] = (byte) i3;
    }

    /* renamed from: a */
    public void m1372a(int i, int i2, boolean z) {
        this.f21721a[i2][i] = (byte) (z ? 1 : 0);
    }

    /* renamed from: b */
    public int m1371b() {
        return this.f21722b;
    }

    /* renamed from: c */
    public byte[][] m1370c() {
        return this.f21721a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.f21722b * 2 * this.f21723c) + 2);
        for (int i = 0; i < this.f21723c; i++) {
            byte[] bArr = this.f21721a[i];
            for (int i2 = 0; i2 < this.f21722b; i2++) {
                switch (bArr[i2]) {
                    case 0:
                        sb.append(" 0");
                        break;
                    case 1:
                        sb.append(" 1");
                        break;
                    default:
                        sb.append("  ");
                        break;
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
