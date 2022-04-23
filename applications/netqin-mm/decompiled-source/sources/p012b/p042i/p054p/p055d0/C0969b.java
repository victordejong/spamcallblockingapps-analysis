package p012b.p042i.p054p.p055d0;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: b.i.p.d0.b */
/* loaded from: classes-dex2jar.jar:b/i/p/d0/b.class */
public final class C0969b {
    /* renamed from: a */
    public static int m35386a(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return accessibilityEvent.getContentChangeTypes();
        }
        return 0;
    }

    /* renamed from: a */
    public static void m35385a(AccessibilityEvent accessibilityEvent, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }
}
