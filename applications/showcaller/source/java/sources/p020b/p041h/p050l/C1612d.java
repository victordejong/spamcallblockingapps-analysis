package p020b.p041h.p050l;

import android.os.Build;
import android.view.DisplayCutout;
import p020b.p041h.p049k.C1592c;
/* renamed from: b.h.l.d */
/* loaded from: classes-dex2jar.jar:b/h/l/d.class */
public final class C1612d {

    /* renamed from: a */
    private final Object f6223a;

    private C1612d(Object obj) {
        this.f6223a = obj;
    }

    /* renamed from: e */
    public static C1612d m29603e(Object obj) {
        return obj == null ? null : new C1612d(obj);
    }

    /* renamed from: a */
    public int m29607a() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.f6223a).getSafeInsetBottom();
        }
        return 0;
    }

    /* renamed from: b */
    public int m29606b() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.f6223a).getSafeInsetLeft();
        }
        return 0;
    }

    /* renamed from: c */
    public int m29605c() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.f6223a).getSafeInsetRight();
        }
        return 0;
    }

    /* renamed from: d */
    public int m29604d() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.f6223a).getSafeInsetTop();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1612d.class == obj.getClass()) {
            return C1592c.m29668a(this.f6223a, ((C1612d) obj).f6223a);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f6223a;
        return obj == null ? 0 : obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f6223a + "}";
    }
}
