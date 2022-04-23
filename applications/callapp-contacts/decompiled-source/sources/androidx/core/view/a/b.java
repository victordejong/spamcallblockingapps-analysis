package androidx.core.view.a;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/b.class */
public final class b {
    private b() {
    }

    public static void a(AccessibilityEvent accessibilityEvent, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }
}
