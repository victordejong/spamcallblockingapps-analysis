package androidx.core.p026h;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: androidx.core.h.x */
/* loaded from: classes-dex2jar.jar:androidx/core/h/x.class */
public final class C0606x {
    /* renamed from: a */
    public static void m20262a(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof AbstractC0588n) {
            ((AbstractC0588n) viewParent).mo20226a(view, i);
        } else if (i != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC0587m)) {
                    return;
                }
                ((AbstractC0587m) viewParent).onStopNestedScroll(view);
                return;
            }
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
            }
        }
    }

    /* renamed from: a */
    public static void m20261a(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof AbstractC0589o) {
            ((AbstractC0589o) viewParent).mo20223a(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof AbstractC0588n) {
            ((AbstractC0588n) viewParent).mo20224a(view, i, i2, i3, i4, i5);
        } else if (i5 != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC0587m)) {
                    return;
                }
                ((AbstractC0587m) viewParent).onNestedScroll(view, i, i2, i3, i4);
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
    public static void m20260a(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof AbstractC0588n) {
            ((AbstractC0588n) viewParent).mo20222a(view, i, i2, iArr, i3);
        } else if (i3 != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC0587m)) {
                    return;
                }
                ((AbstractC0587m) viewParent).onNestedPreScroll(view, i, i2, iArr);
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
    public static boolean m20264a(ViewParent viewParent, View view, float f, float f2) {
        boolean onNestedPreFling;
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                onNestedPreFling = viewParent.onNestedPreFling(view, f, f2);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
            }
        } else {
            if (viewParent instanceof AbstractC0587m) {
                onNestedPreFling = ((AbstractC0587m) viewParent).onNestedPreFling(view, f, f2);
            }
            onNestedPreFling = false;
        }
        return onNestedPreFling;
    }

    /* renamed from: a */
    public static boolean m20263a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        boolean onNestedFling;
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                onNestedFling = viewParent.onNestedFling(view, f, f2, z);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
            }
        } else {
            if (viewParent instanceof AbstractC0587m) {
                onNestedFling = ((AbstractC0587m) viewParent).onNestedFling(view, f, f2, z);
            }
            onNestedFling = false;
        }
        return onNestedFling;
    }

    /* renamed from: a */
    public static boolean m20259a(ViewParent viewParent, View view, View view2, int i, int i2) {
        boolean z;
        if (viewParent instanceof AbstractC0588n) {
            z = ((AbstractC0588n) viewParent).mo20220a(view, view2, i, i2);
        } else {
            if (i2 == 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        z = viewParent.onStartNestedScroll(view, view2, i);
                    } catch (AbstractMethodError e) {
                        Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
                    }
                } else if (viewParent instanceof AbstractC0587m) {
                    z = ((AbstractC0587m) viewParent).onStartNestedScroll(view, view2, i);
                }
            }
            z = false;
        }
        return z;
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m20258a(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: b */
    public static void m20257b(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof AbstractC0588n) {
            ((AbstractC0588n) viewParent).mo20212b(view, view2, i, i2);
        } else if (i2 != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC0587m)) {
                    return;
                }
                ((AbstractC0587m) viewParent).onNestedScrollAccepted(view, view2, i);
                return;
            }
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
            }
        }
    }
}
