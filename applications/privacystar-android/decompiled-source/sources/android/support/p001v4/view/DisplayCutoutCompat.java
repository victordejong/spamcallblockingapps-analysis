package android.support.p001v4.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import java.util.List;
/* renamed from: android.support.v4.view.DisplayCutoutCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/view/DisplayCutoutCompat.class */
public final class DisplayCutoutCompat {
    private final Object mDisplayCutout;

    public DisplayCutoutCompat(Rect rect, List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? new DisplayCutout(rect, list) : null);
    }

    private DisplayCutoutCompat(Object obj) {
        this.mDisplayCutout = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DisplayCutoutCompat wrap(Object obj) {
        return obj == null ? null : new DisplayCutoutCompat(obj);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DisplayCutoutCompat displayCutoutCompat = (DisplayCutoutCompat) obj;
        if (this.mDisplayCutout != null) {
            z = this.mDisplayCutout.equals(displayCutoutCompat.mDisplayCutout);
        } else if (displayCutoutCompat.mDisplayCutout != null) {
            z = false;
        }
        return z;
    }

    public List<Rect> getBoundingRects() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getBoundingRects();
        }
        return null;
    }

    public int getSafeInsetBottom() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetBottom();
        }
        return 0;
    }

    public int getSafeInsetLeft() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetLeft();
        }
        return 0;
    }

    public int getSafeInsetRight() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetRight();
        }
        return 0;
    }

    public int getSafeInsetTop() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetTop();
        }
        return 0;
    }

    public int hashCode() {
        return this.mDisplayCutout == null ? 0 : this.mDisplayCutout.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.mDisplayCutout + "}";
    }
}
