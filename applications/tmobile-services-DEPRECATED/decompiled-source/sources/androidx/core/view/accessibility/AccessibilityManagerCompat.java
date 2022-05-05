package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityManager;
import androidx.annotation.RequiresApi;
/* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityManagerCompat.class */
public final class AccessibilityManagerCompat {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener.class */
    public interface AccessibilityStateChangeListener {
        @Deprecated
        void onAccessibilityStateChanged(boolean z);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat.class */
    public static abstract class AccessibilityStateChangeListenerCompat implements AccessibilityStateChangeListener {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper.class */
    private static class AccessibilityStateChangeListenerWrapper implements AccessibilityManager.AccessibilityStateChangeListener {

        /* renamed from: a */
        AccessibilityStateChangeListener f3324a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AccessibilityStateChangeListenerWrapper)) {
                return false;
            }
            return this.f3324a.equals(((AccessibilityStateChangeListenerWrapper) obj).f3324a);
        }

        public int hashCode() {
            return this.f3324a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z) {
            this.f3324a.onAccessibilityStateChanged(z);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener.class */
    public interface TouchExplorationStateChangeListener {
        void onTouchExplorationStateChanged(boolean z);
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper.class */
    private static final class TouchExplorationStateChangeListenerWrapper implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* renamed from: a */
        final TouchExplorationStateChangeListener f3325a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TouchExplorationStateChangeListenerWrapper)) {
                return false;
            }
            return this.f3325a.equals(((TouchExplorationStateChangeListenerWrapper) obj).f3325a);
        }

        public int hashCode() {
            return this.f3325a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            this.f3325a.onTouchExplorationStateChanged(z);
        }
    }

    private AccessibilityManagerCompat() {
    }
}
