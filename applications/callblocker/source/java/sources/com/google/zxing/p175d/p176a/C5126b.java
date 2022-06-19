package com.google.zxing.p175d.p176a;
/* renamed from: com.google.zxing.d.a.b */
/* loaded from: classes-dex2jar.jar:com/google/zxing/d/a/b.class */
final class C5126b {

    /* renamed from: a */
    private final byte[] f21662a;

    /* renamed from: b */
    private int f21663b = 0;

    public C5126b(int i) {
        this.f21662a = new byte[i];
    }

    /* renamed from: a */
    private void m1428a(int i, boolean z) {
        this.f21662a[i] = (byte) (z ? 1 : 0);
    }

    /* renamed from: a */
    public void m1427a(boolean z, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f21663b;
            this.f21663b = i3 + 1;
            m1428a(i3, z);
        }
    }

    /* renamed from: a */
    public byte[] m1429a(int i) {
        byte[] bArr = new byte[this.f21662a.length * i];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = this.f21662a[i2 / i];
        }
        return bArr;
    }
}
