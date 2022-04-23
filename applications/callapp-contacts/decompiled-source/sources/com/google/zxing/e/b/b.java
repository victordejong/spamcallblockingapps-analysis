package com.google.zxing.e.b;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final byte[][] f33023a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33024b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33025c;

    public b(int i, int i2) {
        this.f33023a = new byte[i2][i];
        this.f33024b = i;
        this.f33025c = i2;
    }

    public final byte a(int i, int i2) {
        return this.f33023a[i2][i];
    }

    public final void a(int i, int i2, int i3) {
        this.f33023a[i2][i] = (byte) i3;
    }

    public final void a(int i, int i2, boolean z) {
        this.f33023a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f33024b * 2 * this.f33025c) + 2);
        for (int i = 0; i < this.f33025c; i++) {
            byte[] bArr = this.f33023a[i];
            for (int i2 = 0; i2 < this.f33024b; i2++) {
                byte b2 = bArr[i2];
                if (b2 == 0) {
                    sb.append(" 0");
                } else if (b2 != 1) {
                    sb.append("  ");
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
