package p1727n3.p1807k.p1812c;

import android.graphics.Insets;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.c.b */
/* loaded from: classes-dex2jar.jar:n3/k/c/b.class */
public final class C26494b {

    /* renamed from: e */
    public static final C26494b f74276e = new C26494b(0, 0, 0, 0);

    /* renamed from: a */
    public final int f74277a;

    /* renamed from: b */
    public final int f74278b;

    /* renamed from: c */
    public final int f74279c;

    /* renamed from: d */
    public final int f74280d;

    public C26494b(int i, int i2, int i3, int i4) {
        this.f74277a = i;
        this.f74278b = i2;
        this.f74279c = i3;
        this.f74280d = i4;
    }

    /* renamed from: a */
    public static C26494b m1746a(C26494b c26494b, C26494b c26494b2) {
        return m1745b(Math.max(c26494b.f74277a, c26494b2.f74277a), Math.max(c26494b.f74278b, c26494b2.f74278b), Math.max(c26494b.f74279c, c26494b2.f74279c), Math.max(c26494b.f74280d, c26494b2.f74280d));
    }

    /* renamed from: b */
    public static C26494b m1745b(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f74276e : new C26494b(i, i2, i3, i4);
    }

    /* renamed from: c */
    public static C26494b m1744c(Insets insets) {
        return m1745b(insets.left, insets.top, insets.right, insets.bottom);
    }

    /* renamed from: d */
    public Insets m1743d() {
        return Insets.of(this.f74277a, this.f74278b, this.f74279c, this.f74280d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C26494b.class != obj.getClass()) {
            return false;
        }
        C26494b c26494b = (C26494b) obj;
        return this.f74280d == c26494b.f74280d && this.f74277a == c26494b.f74277a && this.f74279c == c26494b.f74279c && this.f74278b == c26494b.f74278b;
    }

    public int hashCode() {
        return (((((this.f74277a * 31) + this.f74278b) * 31) + this.f74279c) * 31) + this.f74280d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Insets{left=");
        m8728C.append(this.f74277a);
        m8728C.append(", top=");
        m8728C.append(this.f74278b);
        m8728C.append(", right=");
        m8728C.append(this.f74279c);
        m8728C.append(", bottom=");
        return C22128a.m8701I2(m8728C, this.f74280d, '}');
    }
}
