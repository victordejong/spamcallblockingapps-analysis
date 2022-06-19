package androidx.p045j;

import android.animation.LayoutTransition;
import android.util.Log;
import android.view.ViewGroup;
import androidx.p045j.C0803j;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.j.y */
/* loaded from: classes-dex2jar.jar:androidx/j/y.class */
class C0829y {

    /* renamed from: a */
    private static LayoutTransition f2831a;

    /* renamed from: b */
    private static Field f2832b;

    /* renamed from: c */
    private static boolean f2833c;

    /* renamed from: d */
    private static Method f2834d;

    /* renamed from: e */
    private static boolean f2835e;

    /* renamed from: a */
    private static void m19336a(LayoutTransition layoutTransition) {
        if (!f2835e) {
            try {
                f2834d = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f2834d.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f2835e = true;
        }
        if (f2834d != null) {
            try {
                f2834d.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException e2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            } catch (InvocationTargetException e3) {
                Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
            }
        }
    }

    /* renamed from: a */
    public static void m19335a(ViewGroup viewGroup, boolean z) {
        if (f2831a == null) {
            f2831a = new LayoutTransition() { // from class: androidx.j.y.1
                @Override // android.animation.LayoutTransition
                public boolean isChangingLayout() {
                    return true;
                }
            };
            f2831a.setAnimator(2, null);
            f2831a.setAnimator(0, null);
            f2831a.setAnimator(1, null);
            f2831a.setAnimator(3, null);
            f2831a.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    m19336a(layoutTransition);
                }
                if (layoutTransition != f2831a) {
                    viewGroup.setTag(C0803j.C0804a.transition_layout_save, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(f2831a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f2833c) {
            try {
                f2832b = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f2832b.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access mLayoutSuppressed field by reflection");
            }
            f2833c = true;
        }
        boolean z2 = false;
        if (f2832b != null) {
            z2 = false;
            try {
                boolean z3 = f2832b.getBoolean(viewGroup);
                z2 = z3;
                if (z3) {
                    z2 = z3;
                    f2832b.setBoolean(viewGroup, false);
                    z2 = z3;
                }
            } catch (IllegalAccessException e2) {
                Log.i("ViewGroupUtilsApi14", "Failed to get mLayoutSuppressed field by reflection");
            }
        }
        if (z2) {
            viewGroup.requestLayout();
        }
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(C0803j.C0804a.transition_layout_save);
        if (layoutTransition2 == null) {
            return;
        }
        viewGroup.setTag(C0803j.C0804a.transition_layout_save, null);
        viewGroup.setLayoutTransition(layoutTransition2);
    }
}
