package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/core/view/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Object f1990a;

    public c(Rect rect, List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? new DisplayCutout(rect, list) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Object obj) {
        this.f1990a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        Object obj2 = this.f1990a;
        return obj2 == null ? cVar.f1990a == null : obj2.equals(cVar.f1990a);
    }

    public final int hashCode() {
        Object obj = this.f1990a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f1990a + "}";
    }
}
