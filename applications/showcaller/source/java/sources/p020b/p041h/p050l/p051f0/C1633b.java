package p020b.p041h.p050l.p051f0;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: b.h.l.f0.b */
/* loaded from: classes-dex2jar.jar:b/h/l/f0/b.class */
public final class C1633b {
    /* renamed from: a */
    public static int m29530a(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return accessibilityEvent.getContentChangeTypes();
        }
        return 0;
    }

    /* renamed from: b */
    public static void m29529b(AccessibilityEvent accessibilityEvent, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }
}
