package androidx.core.p026h.p027a;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: androidx.core.h.a.b */
/* loaded from: classes-dex2jar.jar:androidx/core/h/a/b.class */
public final class C0552b {
    /* renamed from: a */
    public static int m20528a(AccessibilityEvent accessibilityEvent) {
        return Build.VERSION.SDK_INT >= 19 ? accessibilityEvent.getContentChangeTypes() : 0;
    }

    /* renamed from: a */
    public static void m20527a(AccessibilityEvent accessibilityEvent, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }
}
