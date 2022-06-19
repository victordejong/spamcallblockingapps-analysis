package androidx.core.graphics;

import android.graphics.Insets;
/* renamed from: androidx.core.graphics.b */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/b.class */
public final class C0835b {

    /* renamed from: a */
    public static final C0835b f3562a = new C0835b(0, 0, 0, 0);

    /* renamed from: b */
    public final int f3563b;

    /* renamed from: c */
    public final int f3564c;

    /* renamed from: d */
    public final int f3565d;

    /* renamed from: e */
    public final int f3566e;

    private C0835b(int i, int i2, int i3, int i4) {
        this.f3563b = i;
        this.f3564c = i2;
        this.f3565d = i3;
        this.f3566e = i4;
    }

    /* renamed from: a */
    public static C0835b m44393a(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f3562a : new C0835b(i, i2, i3, i4);
    }

    /* renamed from: a */
    public static C0835b m44392a(Insets insets) {
        return m44393a(insets.left, insets.top, insets.right, insets.bottom);
    }

    /* renamed from: a */
    public final Insets m44394a() {
        return Insets.of(this.f3563b, this.f3564c, this.f3565d, this.f3566e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0835b c0835b = (C0835b) obj;
        return this.f3566e == c0835b.f3566e && this.f3563b == c0835b.f3563b && this.f3565d == c0835b.f3565d && this.f3564c == c0835b.f3564c;
    }

    public final int hashCode() {
        return (((((this.f3563b * 31) + this.f3564c) * 31) + this.f3565d) * 31) + this.f3566e;
    }

    public final String toString() {
        return "Insets{left=" + this.f3563b + ", top=" + this.f3564c + ", right=" + this.f3565d + ", bottom=" + this.f3566e + '}';
    }
}
