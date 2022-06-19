package com.huawei.hms.hatool;
/* renamed from: com.huawei.hms.hatool.p0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/p0.class */
public class C2382p0 {

    /* renamed from: a */
    public byte[] f7596a;

    /* renamed from: b */
    public int f7597b = 0;

    public C2382p0(int i) {
        this.f7596a = null;
        this.f7596a = new byte[i];
    }

    /* renamed from: a */
    public void m37547a(byte[] bArr, int i) {
        if (i <= 0) {
            return;
        }
        byte[] bArr2 = this.f7596a;
        int length = bArr2.length;
        int i2 = this.f7597b;
        if (length - i2 >= i) {
            System.arraycopy(bArr, 0, bArr2, i2, i);
        } else {
            byte[] bArr3 = new byte[(bArr2.length + i) << 1];
            System.arraycopy(bArr2, 0, bArr3, 0, i2);
            System.arraycopy(bArr, 0, bArr3, this.f7597b, i);
            this.f7596a = bArr3;
        }
        this.f7597b += i;
    }

    /* renamed from: a */
    public byte[] m37548a() {
        int i = this.f7597b;
        if (i <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f7596a, 0, bArr, 0, i);
        return bArr;
    }

    /* renamed from: b */
    public int m37546b() {
        return this.f7597b;
    }
}
