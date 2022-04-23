package p012b.p042i.p046j;

import android.graphics.Insets;
/* renamed from: b.i.j.c */
/* loaded from: classes-dex2jar.jar:b/i/j/c.class */
public final class C0892c {

    /* renamed from: e */
    public static final C0892c f4084e = new C0892c(0, 0, 0, 0);

    /* renamed from: a */
    public final int f4085a;

    /* renamed from: b */
    public final int f4086b;

    /* renamed from: c */
    public final int f4087c;

    /* renamed from: d */
    public final int f4088d;

    public C0892c(int i, int i2, int i3, int i4) {
        this.f4085a = i;
        this.f4086b = i2;
        this.f4087c = i3;
        this.f4088d = i4;
    }

    /* renamed from: a */
    public static C0892c m35599a(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f4084e : new C0892c(i, i2, i3, i4);
    }

    /* renamed from: a */
    public Insets m35600a() {
        return Insets.of(this.f4085a, this.f4086b, this.f4087c, this.f4088d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0892c.class != obj.getClass()) {
            return false;
        }
        C0892c cVar = (C0892c) obj;
        return this.f4088d == cVar.f4088d && this.f4085a == cVar.f4085a && this.f4087c == cVar.f4087c && this.f4086b == cVar.f4086b;
    }

    public int hashCode() {
        return (((((this.f4085a * 31) + this.f4086b) * 31) + this.f4087c) * 31) + this.f4088d;
    }

    public String toString() {
        return "Insets{left=" + this.f4085a + ", top=" + this.f4086b + ", right=" + this.f4087c + ", bottom=" + this.f4088d + '}';
    }
}
