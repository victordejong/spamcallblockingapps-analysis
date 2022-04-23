package p081h.p203i.p402h.p410n.p411b;
/* renamed from: h.i.h.n.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/h/n/b/b.class */
public final class C10591b {

    /* renamed from: a */
    public final byte[] f24091a;

    /* renamed from: b */
    public int f24092b = 0;

    public C10591b(int i) {
        this.f24091a = new byte[i];
    }

    /* renamed from: a */
    public final void m11322a(int i, boolean z) {
        this.f24091a[i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: a */
    public void m11321a(boolean z, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f24092b;
            this.f24092b = i3 + 1;
            m11322a(i3, z);
        }
    }

    /* renamed from: a */
    public byte[] m11323a(int i) {
        byte[] bArr = new byte[this.f24091a.length * i];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = this.f24091a[i2 / i];
        }
        return bArr;
    }
}
