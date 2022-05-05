package android.support.v4.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/aa.class */
final class aa {
    public static boolean a(ViewParent viewParent, View view, float f, float f2) {
        boolean z;
        try {
            z = viewParent.onNestedPreFling(view, f, f2);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
            z = false;
        }
        return z;
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        boolean z2;
        try {
            z2 = viewParent.onNestedFling(view, f, f2, z);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
            z2 = false;
        }
        return z2;
    }

    public static boolean a(ViewParent viewParent, View view, View view2, int i) {
        boolean z;
        try {
            z = viewParent.onStartNestedScroll(view, view2, i);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
            z = false;
        }
        return z;
    }
}
