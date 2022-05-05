package p081h.p093b.p099c.p103c.p108j;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.accessibility.AccessibilityEventCompat;
/* renamed from: h.b.c.c.j.e */
/* loaded from: classes-dex2jar.jar:h/b/c/c/j/e.class */
public class C5661e {
    /* renamed from: a */
    public static void m24860a(View view, AccessibilityManager accessibilityManager, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.announceForAccessibility(charSequence);
            return;
        }
        Context applicationContext = view.getContext().getApplicationContext();
        AccessibilityManager accessibilityManager2 = accessibilityManager;
        if (accessibilityManager == null) {
            accessibilityManager2 = (AccessibilityManager) applicationContext.getSystemService("accessibility");
        }
        if (accessibilityManager2.isEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(8);
            obtain.getText().add(charSequence);
            obtain.setEnabled(view.isEnabled());
            obtain.setClassName(view.getClass().getName());
            obtain.setPackageName(applicationContext.getPackageName());
            AccessibilityEventCompat.asRecord(obtain).setSource(view);
            if (Build.VERSION.SDK_INT >= 14) {
                view.getParent().requestSendAccessibilityEvent(view, obtain);
            } else {
                accessibilityManager2.sendAccessibilityEvent(obtain);
            }
        }
    }

    /* renamed from: a */
    public static boolean m24859a(AccessibilityManager accessibilityManager) {
        if (Build.VERSION.SDK_INT >= 14) {
            return accessibilityManager.isTouchExplorationEnabled();
        }
        return false;
    }
}
