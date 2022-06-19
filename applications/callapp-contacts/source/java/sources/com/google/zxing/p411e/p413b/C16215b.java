package com.google.zxing.p411e.p413b;
/* renamed from: com.google.zxing.e.b.b */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/b.class */
public final class C16215b {

    /* renamed from: a */
    final byte[][] f57223a;

    /* renamed from: b */
    public final int f57224b;

    /* renamed from: c */
    public final int f57225c;

    public C16215b(int i, int i2) {
        this.f57223a = new byte[i2][i];
        this.f57224b = i;
        this.f57225c = i2;
    }

    /* renamed from: a */
    public final byte m7636a(int i, int i2) {
        return this.f57223a[i2][i];
    }

    /* renamed from: a */
    public final void m7635a(int i, int i2, int i3) {
        this.f57223a[i2][i] = (byte) i3;
    }

    /* renamed from: a */
    public final void m7634a(int i, int i2, boolean z) {
        this.f57223a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f57224b * 2 * this.f57225c) + 2);
        for (int i = 0; i < this.f57225c; i++) {
            byte[] bArr = this.f57223a[i];
            for (int i2 = 0; i2 < this.f57224b; i2++) {
                byte b = bArr[i2];
                if (b == 0) {
                    sb.append(" 0");
                } else if (b != 1) {
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
