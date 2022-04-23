package android.support.v4.view;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    static final b f248a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/z$a.class */
    static class a extends e {
        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/z$b.class */
    interface b {
        void a(ViewParent viewParent, View view);

        void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4);

        void a(ViewParent viewParent, View view, int i, int i2, int[] iArr);

        boolean a(ViewParent viewParent, View view, float f, float f2);

        boolean a(ViewParent viewParent, View view, float f, float f2, boolean z);

        boolean a(ViewParent viewParent, View view, View view2, int i);

        void b(ViewParent viewParent, View view, View view2, int i);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/z$c.class */
    static class c extends a {
        c() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/z$d.class */
    static final class d extends c {
        d() {
        }

        @Override // android.support.v4.view.z.e, android.support.v4.view.z.b
        public final void a(ViewParent viewParent, View view) {
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
            }
        }

        @Override // android.support.v4.view.z.e, android.support.v4.view.z.b
        public final void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
            }
        }

        @Override // android.support.v4.view.z.e, android.support.v4.view.z.b
        public final void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
            }
        }

        @Override // android.support.v4.view.z.e, android.support.v4.view.z.b
        public final boolean a(ViewParent viewParent, View view, float f, float f2) {
            return aa.a(viewParent, view, f, f2);
        }

        @Override // android.support.v4.view.z.e, android.support.v4.view.z.b
        public final boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            return aa.a(viewParent, view, f, f2, z);
        }

        @Override // android.support.v4.view.z.e, android.support.v4.view.z.b
        public final boolean a(ViewParent viewParent, View view, View view2, int i) {
            return aa.a(viewParent, view, view2, i);
        }

        @Override // android.support.v4.view.z.e, android.support.v4.view.z.b
        public final void b(ViewParent viewParent, View view, View view2, int i) {
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/z$e.class */
    static class e implements b {
        e() {
        }

        @Override // android.support.v4.view.z.b
        public void a(ViewParent viewParent, View view) {
            if (viewParent instanceof m) {
                ((m) viewParent).onStopNestedScroll(view);
            }
        }

        @Override // android.support.v4.view.z.b
        public void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            if (viewParent instanceof m) {
                ((m) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }

        @Override // android.support.v4.view.z.b
        public void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            if (viewParent instanceof m) {
                ((m) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }

        @Override // android.support.v4.view.z.b
        public boolean a(ViewParent viewParent, View view, float f, float f2) {
            return viewParent instanceof m ? ((m) viewParent).onNestedPreFling(view, f, f2) : false;
        }

        @Override // android.support.v4.view.z.b
        public boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            return viewParent instanceof m ? ((m) viewParent).onNestedFling(view, f, f2, z) : false;
        }

        @Override // android.support.v4.view.z.b
        public boolean a(ViewParent viewParent, View view, View view2, int i) {
            return viewParent instanceof m ? ((m) viewParent).onStartNestedScroll(view, view2, i) : false;
        }

        @Override // android.support.v4.view.z.b
        public void b(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof m) {
                ((m) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f248a = new d();
        } else if (i >= 19) {
            f248a = new c();
        } else if (i >= 14) {
            f248a = new a();
        } else {
            f248a = new e();
        }
    }

    public static void a(ViewParent viewParent, View view) {
        f248a.a(viewParent, view);
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        f248a.a(viewParent, view, i, i2, i3, i4);
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        f248a.a(viewParent, view, i, i2, iArr);
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2) {
        return f248a.a(viewParent, view, f, f2);
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return f248a.a(viewParent, view, f, f2, z);
    }

    public static boolean a(ViewParent viewParent, View view, View view2, int i) {
        return f248a.a(viewParent, view, view2, i);
    }

    public static void b(ViewParent viewParent, View view, View view2, int i) {
        f248a.b(viewParent, view, view2, i);
    }
}
