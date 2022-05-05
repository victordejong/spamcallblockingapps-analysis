package p081h.p203i.p402h.p410n.p411b;
/* renamed from: h.i.h.n.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/h/n/b/a.class */
public final class C10590a {

    /* renamed from: a */
    public final C10591b[] f24087a;

    /* renamed from: b */
    public int f24088b;

    /* renamed from: c */
    public final int f24089c;

    /* renamed from: d */
    public final int f24090d;

    public C10590a(int i, int i2) {
        this.f24087a = new C10591b[i];
        int length = this.f24087a.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f24087a[i3] = new C10591b(((i2 + 4) * 17) + 1);
        }
        this.f24090d = i2 * 17;
        this.f24089c = i;
        this.f24088b = -1;
    }

    /* renamed from: a */
    public C10591b m11326a() {
        return this.f24087a[this.f24088b];
    }

    /* renamed from: a */
    public byte[][] m11325a(int i, int i2) {
        byte[][] bArr = new byte[this.f24089c * i2][this.f24090d * i];
        int i3 = this.f24089c * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i3 - i4) - 1] = this.f24087a[i4 / i2].m11323a(i);
        }
        return bArr;
    }

    /* renamed from: b */
    public void m11324b() {
        this.f24088b++;
    }
}
