package p020b.p041h.p042e;

import android.graphics.Insets;
import android.graphics.Rect;
/* renamed from: b.h.e.b */
/* loaded from: classes-dex2jar.jar:b/h/e/b.class */
public final class C1523b {

    /* renamed from: a */
    public static final C1523b f6050a = new C1523b(0, 0, 0, 0);

    /* renamed from: b */
    public final int f6051b;

    /* renamed from: c */
    public final int f6052c;

    /* renamed from: d */
    public final int f6053d;

    /* renamed from: e */
    public final int f6054e;

    private C1523b(int i, int i2, int i3, int i4) {
        this.f6051b = i;
        this.f6052c = i2;
        this.f6053d = i3;
        this.f6054e = i4;
    }

    /* renamed from: a */
    public static C1523b m29847a(C1523b c1523b, C1523b c1523b2) {
        return m29846b(Math.max(c1523b.f6051b, c1523b2.f6051b), Math.max(c1523b.f6052c, c1523b2.f6052c), Math.max(c1523b.f6053d, c1523b2.f6053d), Math.max(c1523b.f6054e, c1523b2.f6054e));
    }

    /* renamed from: b */
    public static C1523b m29846b(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f6050a : new C1523b(i, i2, i3, i4);
    }

    /* renamed from: c */
    public static C1523b m29845c(Rect rect) {
        return m29846b(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: d */
    public static C1523b m29844d(Insets insets) {
        return m29846b(insets.left, insets.top, insets.right, insets.bottom);
    }

    /* renamed from: e */
    public Insets m29843e() {
        return Insets.of(this.f6051b, this.f6052c, this.f6053d, this.f6054e);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1523b.class != obj.getClass()) {
            return false;
        }
        C1523b c1523b = (C1523b) obj;
        return this.f6054e == c1523b.f6054e && this.f6051b == c1523b.f6051b && this.f6053d == c1523b.f6053d && this.f6052c == c1523b.f6052c;
    }

    public int hashCode() {
        return (((((this.f6051b * 31) + this.f6052c) * 31) + this.f6053d) * 31) + this.f6054e;
    }

    public String toString() {
        return "Insets{left=" + this.f6051b + ", top=" + this.f6052c + ", right=" + this.f6053d + ", bottom=" + this.f6054e + '}';
    }
}
