package androidx.core.p023g.p024a;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: androidx.core.g.a.b */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/b.class */
public final class C0506b {
    /* renamed from: a */
    public static int m6460a(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return accessibilityEvent.getContentChangeTypes();
        }
        return 0;
    }

    /* renamed from: a */
    public static void m6459a(AccessibilityEvent accessibilityEvent, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }
}
