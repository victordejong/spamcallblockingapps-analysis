package p012b.p042i.p054p;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
/* renamed from: b.i.p.x */
/* loaded from: classes-dex2jar.jar:b/i/p/x.class */
public final class C1016x {
    /* renamed from: a */
    public static void m35170a(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof AbstractC0995n) {
            ((AbstractC0995n) viewParent).mo35270a(view, i);
        } else if (i != 0) {
        } else {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onStopNestedScroll(view);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
                }
            } else if (viewParent instanceof AbstractC0997p) {
                ((AbstractC0997p) viewParent).onStopNestedScroll(view);
            }
        }
    }

    /* renamed from: a */
    public static void m35169a(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof AbstractC0996o) {
            ((AbstractC0996o) viewParent).mo35265a(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof AbstractC0995n) {
            ((AbstractC0995n) viewParent).mo35269a(view, i, i2, i3, i4, i5);
        } else if (i5 != 0) {
        } else {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScroll(view, i, i2, i3, i4);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
                }
            } else if (viewParent instanceof AbstractC0997p) {
                ((AbstractC0997p) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }
    }

    /* renamed from: a */
    public static void m35168a(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof AbstractC0995n) {
            ((AbstractC0995n) viewParent).mo35268a(view, i, i2, iArr, i3);
        } else if (i3 != 0) {
        } else {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedPreScroll(view, i, i2, iArr);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
                }
            } else if (viewParent instanceof AbstractC0997p) {
                ((AbstractC0997p) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }
    }

    /* renamed from: a */
    public static void m35167a(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof AbstractC0995n) {
            ((AbstractC0995n) viewParent).mo35266b(view, view2, i, i2);
        } else if (i2 != 0) {
        } else {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScrollAccepted(view, view2, i);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
                }
            } else if (viewParent instanceof AbstractC0997p) {
                ((AbstractC0997p) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }
    }

    /* renamed from: a */
    public static boolean m35172a(ViewParent viewParent, View view, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedPreFling(view, f, f2);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
                return false;
            }
        } else if (viewParent instanceof AbstractC0997p) {
            return ((AbstractC0997p) viewParent).onNestedPreFling(view, f, f2);
        } else {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m35171a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedFling(view, f, f2, z);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
                return false;
            }
        } else if (viewParent instanceof AbstractC0997p) {
            return ((AbstractC0997p) viewParent).onNestedFling(view, f, f2, z);
        } else {
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m35166b(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof AbstractC0995n) {
            return ((AbstractC0995n) viewParent).mo35267a(view, view2, i, i2);
        }
        if (i2 != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onStartNestedScroll(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
                return false;
            }
        } else if (viewParent instanceof AbstractC0997p) {
            return ((AbstractC0997p) viewParent).onStartNestedScroll(view, view2, i);
        } else {
            return false;
        }
    }
}
