package p020b.p041h.p050l;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: b.h.l.z */
/* loaded from: classes-dex2jar.jar:b/h/l/z.class */
public final class C1695z {
    /* renamed from: a */
    public static boolean m29212a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(viewParent instanceof AbstractC1671o)) {
                return false;
            }
            return ((AbstractC1671o) viewParent).onNestedFling(view, f, f2, z);
        }
        try {
            return viewParent.onNestedFling(view, f, f2, z);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m29211b(ViewParent viewParent, View view, float f, float f2) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(viewParent instanceof AbstractC1671o)) {
                return false;
            }
            return ((AbstractC1671o) viewParent).onNestedPreFling(view, f, f2);
        }
        try {
            return viewParent.onNestedPreFling(view, f, f2);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
            return false;
        }
    }

    /* renamed from: c */
    public static void m29210c(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof AbstractC1669m) {
            ((AbstractC1669m) viewParent).mo29362m(view, i, i2, iArr, i3);
        } else if (i3 != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC1671o)) {
                    return;
                }
                ((AbstractC1671o) viewParent).onNestedPreScroll(view, i, i2, iArr);
                return;
            }
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
            }
        }
    }

    /* renamed from: d */
    public static void m29209d(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof AbstractC1670n) {
            ((AbstractC1670n) viewParent).mo29361h(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof AbstractC1669m) {
            ((AbstractC1669m) viewParent).mo29366i(view, i, i2, i3, i4, i5);
        } else if (i5 != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC1671o)) {
                    return;
                }
                ((AbstractC1671o) viewParent).onNestedScroll(view, i, i2, i3, i4);
                return;
            }
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
            }
        }
    }

    /* renamed from: e */
    public static void m29208e(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof AbstractC1669m) {
            ((AbstractC1669m) viewParent).mo29364k(view, view2, i, i2);
        } else if (i2 != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC1671o)) {
                    return;
                }
                ((AbstractC1671o) viewParent).onNestedScrollAccepted(view, view2, i);
                return;
            }
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
            }
        }
    }

    /* renamed from: f */
    public static boolean m29207f(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof AbstractC1669m) {
            return ((AbstractC1669m) viewParent).mo29365j(view, view2, i, i2);
        }
        if (i2 != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 21) {
            if (!(viewParent instanceof AbstractC1671o)) {
                return false;
            }
            return ((AbstractC1671o) viewParent).onStartNestedScroll(view, view2, i);
        }
        try {
            return viewParent.onStartNestedScroll(view, view2, i);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
            return false;
        }
    }

    /* renamed from: g */
    public static void m29206g(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof AbstractC1669m) {
            ((AbstractC1669m) viewParent).mo29363l(view, i);
        } else if (i != 0) {
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                if (!(viewParent instanceof AbstractC1671o)) {
                    return;
                }
                ((AbstractC1671o) viewParent).onStopNestedScroll(view);
                return;
            }
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
            }
        }
    }

    @Deprecated
    /* renamed from: h */
    public static boolean m29205h(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }
}
