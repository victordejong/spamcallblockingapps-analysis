package androidx.core.view;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: androidx.core.view.x */
/* loaded from: classes-dex2jar.jar:androidx/core/view/x.class */
public final class C0939x {
    private C0939x() {
    }

    /* renamed from: a */
    public static void m44054a(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof AbstractC0920p) {
            ((AbstractC0920p) viewParent).mo44020a(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof AbstractC0919o) {
            ((AbstractC0919o) viewParent).mo44021a(view, i, i2, i3, i4, i5);
        } else if (i5 != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC0918n)) {
                    return;
                }
                ((AbstractC0918n) viewParent).onNestedScroll(view, i, i2, i3, i4);
                return;
            }
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
            }
        }
    }

    /* renamed from: a */
    public static void m44053a(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof AbstractC0919o) {
            ((AbstractC0919o) viewParent).mo44019a(view, i, i2, iArr, i3);
        } else if (i3 != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC0918n)) {
                    return;
                }
                ((AbstractC0918n) viewParent).onNestedPreScroll(view, i, i2, iArr);
                return;
            }
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
            }
        }
    }

    /* renamed from: a */
    public static boolean m44056a(ViewParent viewParent, View view, float f, float f2) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(viewParent instanceof AbstractC0918n)) {
                return false;
            }
            return ((AbstractC0918n) viewParent).onNestedPreFling(view, f, f2);
        }
        try {
            return viewParent.onNestedPreFling(view, f, f2);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m44055a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(viewParent instanceof AbstractC0918n)) {
                return false;
            }
            return ((AbstractC0918n) viewParent).onNestedFling(view, f, f2, z);
        }
        try {
            return viewParent.onNestedFling(view, f, f2, z);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m44052a(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof AbstractC0919o) {
            return ((AbstractC0919o) viewParent).mo44017a(view, view2, i, i2);
        }
        if (i2 != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 21) {
            if (!(viewParent instanceof AbstractC0918n)) {
                return false;
            }
            return ((AbstractC0918n) viewParent).onStartNestedScroll(view, view2, i);
        }
        try {
            return viewParent.onStartNestedScroll(view, view2, i);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
            return false;
        }
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m44051a(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }
}
