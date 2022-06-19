package p1727n3.p1874y.p1906c;

import java.util.Arrays;
/* renamed from: n3.y.c.b1$b */
/* loaded from: classes-dex2jar.jar:n3/y/c/b1$b.class */
public final class b1$b {

    /* renamed from: a */
    public byte[] f77314a = new byte[3];

    /* renamed from: b */
    public int f77315b;

    /* renamed from: a */
    public void m235a(byte b, byte b2) {
        int i = this.f77315b;
        byte[] bArr = this.f77314a;
        if (i + 2 > bArr.length) {
            this.f77314a = Arrays.copyOf(bArr, bArr.length * 2);
        }
        byte[] bArr2 = this.f77314a;
        int i2 = this.f77315b;
        int i3 = i2 + 1;
        this.f77315b = i3;
        bArr2[i2] = b;
        this.f77315b = i3 + 1;
        bArr2[i3] = b2;
    }

    /* renamed from: b */
    public boolean m234b() {
        return this.f77315b > 0;
    }
}
