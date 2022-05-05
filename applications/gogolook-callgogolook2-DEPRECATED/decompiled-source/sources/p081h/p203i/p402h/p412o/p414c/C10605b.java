package p081h.p203i.p402h.p412o.p414c;

import java.util.Arrays;
/* renamed from: h.i.h.o.c.b */
/* loaded from: classes2-dex2jar.jar:h/i/h/o/c/b.class */
public final class C10605b {

    /* renamed from: a */
    public final byte[][] f24147a;

    /* renamed from: b */
    public final int f24148b;

    /* renamed from: c */
    public final int f24149c;

    public C10605b(int i, int i2) {
        this.f24147a = new byte[i2][i];
        this.f24148b = i;
        this.f24149c = i2;
    }

    /* renamed from: a */
    public byte m11268a(int i, int i2) {
        return this.f24147a[i2][i];
    }

    /* renamed from: a */
    public void m11269a(byte b) {
        for (byte[] bArr : this.f24147a) {
            Arrays.fill(bArr, b);
        }
    }

    /* renamed from: a */
    public void m11267a(int i, int i2, int i3) {
        this.f24147a[i2][i] = (byte) i3;
    }

    /* renamed from: a */
    public void m11266a(int i, int i2, boolean z) {
        this.f24147a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: a */
    public byte[][] m11270a() {
        return this.f24147a;
    }

    /* renamed from: b */
    public int m11265b() {
        return this.f24149c;
    }

    /* renamed from: c */
    public int m11264c() {
        return this.f24148b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.f24148b * 2 * this.f24149c) + 2);
        for (int i = 0; i < this.f24149c; i++) {
            byte[] bArr = this.f24147a[i];
            for (int i2 = 0; i2 < this.f24148b; i2++) {
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
