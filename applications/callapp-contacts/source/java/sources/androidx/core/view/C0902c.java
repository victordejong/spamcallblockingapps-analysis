package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import java.util.List;
/* renamed from: androidx.core.view.c */
/* loaded from: classes-dex2jar.jar:androidx/core/view/c.class */
public final class C0902c {

    /* renamed from: a */
    private final Object f3715a;

    public C0902c(Rect rect, List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? new DisplayCutout(rect, list) : null);
    }

    public C0902c(Object obj) {
        this.f3715a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0902c c0902c = (C0902c) obj;
        Object obj2 = this.f3715a;
        return obj2 == null ? c0902c.f3715a == null : obj2.equals(c0902c.f3715a);
    }

    public final int hashCode() {
        Object obj = this.f3715a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f3715a + "}";
    }
}
