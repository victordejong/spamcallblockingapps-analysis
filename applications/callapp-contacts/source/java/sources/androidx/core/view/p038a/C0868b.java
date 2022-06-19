package androidx.core.view.p038a;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: androidx.core.view.a.b */
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/b.class */
public final class C0868b {
    private C0868b() {
    }

    /* renamed from: a */
    public static void m44286a(AccessibilityEvent accessibilityEvent, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }
}
