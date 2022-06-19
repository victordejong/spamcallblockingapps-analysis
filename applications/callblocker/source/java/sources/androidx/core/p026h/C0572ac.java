package androidx.core.p026h;

import android.os.Build;
import android.view.WindowInsets;
/* renamed from: androidx.core.h.ac */
/* loaded from: classes-dex2jar.jar:androidx/core/h/ac.class */
public class C0572ac {

    /* renamed from: a */
    private final Object f2069a;

    private C0572ac(Object obj) {
        this.f2069a = obj;
    }

    /* renamed from: a */
    public static C0572ac m20439a(Object obj) {
        return obj == null ? null : new C0572ac(obj);
    }

    /* renamed from: a */
    public static Object m20440a(C0572ac c0572ac) {
        return c0572ac == null ? null : c0572ac.f2069a;
    }

    /* renamed from: a */
    public int m20442a() {
        return Build.VERSION.SDK_INT >= 20 ? ((WindowInsets) this.f2069a).getSystemWindowInsetLeft() : 0;
    }

    /* renamed from: a */
    public C0572ac m20441a(int i, int i2, int i3, int i4) {
        return Build.VERSION.SDK_INT >= 20 ? new C0572ac(((WindowInsets) this.f2069a).replaceSystemWindowInsets(i, i2, i3, i4)) : null;
    }

    /* renamed from: b */
    public int m20438b() {
        return Build.VERSION.SDK_INT >= 20 ? ((WindowInsets) this.f2069a).getSystemWindowInsetTop() : 0;
    }

    /* renamed from: c */
    public int m20437c() {
        return Build.VERSION.SDK_INT >= 20 ? ((WindowInsets) this.f2069a).getSystemWindowInsetRight() : 0;
    }

    /* renamed from: d */
    public int m20436d() {
        return Build.VERSION.SDK_INT >= 20 ? ((WindowInsets) this.f2069a).getSystemWindowInsetBottom() : 0;
    }

    /* renamed from: e */
    public boolean m20435e() {
        return Build.VERSION.SDK_INT >= 21 ? ((WindowInsets) this.f2069a).isConsumed() : false;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                C0572ac c0572ac = (C0572ac) obj;
                if (this.f2069a != null) {
                    z = this.f2069a.equals(c0572ac.f2069a);
                } else if (c0572ac.f2069a != null) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f2069a == null ? 0 : this.f2069a.hashCode();
    }
}
