package androidx.core.graphics;

import android.graphics.Insets;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f1895a = new b(0, 0, 0, 0);

    /* renamed from: b  reason: collision with root package name */
    public final int f1896b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1897c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1898d;
    public final int e;

    private b(int i, int i2, int i3, int i4) {
        this.f1896b = i;
        this.f1897c = i2;
        this.f1898d = i3;
        this.e = i4;
    }

    public static b a(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f1895a : new b(i, i2, i3, i4);
    }

    public static b a(Insets insets) {
        return a(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets a() {
        return Insets.of(this.f1896b, this.f1897c, this.f1898d, this.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.e == bVar.e && this.f1896b == bVar.f1896b && this.f1898d == bVar.f1898d && this.f1897c == bVar.f1897c;
    }

    public final int hashCode() {
        return (((((this.f1896b * 31) + this.f1897c) * 31) + this.f1898d) * 31) + this.e;
    }

    public final String toString() {
        return "Insets{left=" + this.f1896b + ", top=" + this.f1897c + ", right=" + this.f1898d + ", bottom=" + this.e + '}';
    }
}
