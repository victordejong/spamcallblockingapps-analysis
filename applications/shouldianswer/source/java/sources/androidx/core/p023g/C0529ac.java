package androidx.core.p023g;

import android.os.Build;
import android.view.WindowInsets;
/* renamed from: androidx.core.g.ac */
/* loaded from: classes-dex2jar.jar:androidx/core/g/ac.class */
public class C0529ac {

    /* renamed from: a */
    private final Object f1860a;

    private C0529ac(Object obj) {
        this.f1860a = obj;
    }

    /* renamed from: a */
    public static C0529ac m6364a(Object obj) {
        return obj == null ? null : new C0529ac(obj);
    }

    /* renamed from: a */
    public static Object m6365a(C0529ac c0529ac) {
        return c0529ac == null ? null : c0529ac.f1860a;
    }

    /* renamed from: a */
    public int m6367a() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1860a).getSystemWindowInsetLeft();
        }
        return 0;
    }

    /* renamed from: a */
    public C0529ac m6366a(int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 20) {
            return new C0529ac(((WindowInsets) this.f1860a).replaceSystemWindowInsets(i, i2, i3, i4));
        }
        return null;
    }

    /* renamed from: b */
    public int m6363b() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1860a).getSystemWindowInsetTop();
        }
        return 0;
    }

    /* renamed from: c */
    public int m6362c() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1860a).getSystemWindowInsetRight();
        }
        return 0;
    }

    /* renamed from: d */
    public int m6361d() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1860a).getSystemWindowInsetBottom();
        }
        return 0;
    }

    /* renamed from: e */
    public boolean m6360e() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1860a).hasSystemWindowInsets();
        }
        return false;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Object obj2 = this.f1860a;
        Object obj3 = ((C0529ac) obj).f1860a;
        if (obj2 != null) {
            z = obj2.equals(obj3);
        } else if (obj3 != null) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public boolean m6359f() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((WindowInsets) this.f1860a).isConsumed();
        }
        return false;
    }

    /* renamed from: g */
    public C0529ac m6358g() {
        if (Build.VERSION.SDK_INT >= 20) {
            return new C0529ac(((WindowInsets) this.f1860a).consumeSystemWindowInsets());
        }
        return null;
    }

    public int hashCode() {
        Object obj = this.f1860a;
        return obj == null ? 0 : obj.hashCode();
    }
}
