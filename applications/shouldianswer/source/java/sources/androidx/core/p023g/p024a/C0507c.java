package androidx.core.p023g.p024a;

import android.os.Build;
import android.view.accessibility.AccessibilityManager;
/* renamed from: androidx.core.g.a.c */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/c.class */
public final class C0507c {

    /* renamed from: androidx.core.g.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/c$a.class */
    public interface AbstractC0508a {
        void onTouchExplorationStateChanged(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.g.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/c$b.class */
    public static class accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0509b implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* renamed from: a */
        final AbstractC0508a f1810a;

        accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0509b(AbstractC0508a abstractC0508a) {
            this.f1810a = abstractC0508a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.f1810a.equals(((accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0509b) obj).f1810a);
            }
            return false;
        }

        public int hashCode() {
            return this.f1810a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            this.f1810a.onTouchExplorationStateChanged(z);
        }
    }

    /* renamed from: a */
    public static boolean m6458a(AccessibilityManager accessibilityManager, AbstractC0508a abstractC0508a) {
        if (Build.VERSION.SDK_INT < 19 || abstractC0508a == null) {
            return false;
        }
        return accessibilityManager.addTouchExplorationStateChangeListener(new accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0509b(abstractC0508a));
    }

    /* renamed from: b */
    public static boolean m6457b(AccessibilityManager accessibilityManager, AbstractC0508a abstractC0508a) {
        if (Build.VERSION.SDK_INT < 19 || abstractC0508a == null) {
            return false;
        }
        return accessibilityManager.removeTouchExplorationStateChangeListener(new accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0509b(abstractC0508a));
    }
}
