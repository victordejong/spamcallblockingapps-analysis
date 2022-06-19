package androidx.transition;

import android.animation.LayoutTransition;
import android.os.Build;
import android.view.ViewGroup;
import androidx.transition.C2901o;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.ad */
/* loaded from: classes-dex2jar.jar:androidx/transition/ad.class */
final class C2860ad {

    /* renamed from: a */
    private static boolean f10816a = true;

    /* renamed from: b */
    private static Method f10817b;

    /* renamed from: c */
    private static boolean f10818c;

    private C2860ad() {
    }

    /* renamed from: a */
    public static int m39754a(ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i);
        }
        if (!f10818c) {
            try {
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", Integer.TYPE, Integer.TYPE);
                f10817b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f10818c = true;
        }
        Method method = f10817b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i))).intValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC2859ac m39755a(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new C2858ab(viewGroup) : (C2857aa) C2863af.m39751c(viewGroup);
    }

    /* renamed from: a */
    public static void m39753a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else if (Build.VERSION.SDK_INT >= 18) {
            if (!f10816a) {
                return;
            }
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                f10816a = false;
            }
        } else {
            if (C2861ae.f10819a == null) {
                LayoutTransition layoutTransition = new LayoutTransition() { // from class: androidx.transition.ae.1
                    @Override // android.animation.LayoutTransition
                    public final boolean isChangingLayout() {
                        return true;
                    }
                };
                C2861ae.f10819a = layoutTransition;
                layoutTransition.setAnimator(2, null);
                C2861ae.f10819a.setAnimator(0, null);
                C2861ae.f10819a.setAnimator(1, null);
                C2861ae.f10819a.setAnimator(3, null);
                C2861ae.f10819a.setAnimator(4, null);
            }
            if (z) {
                LayoutTransition layoutTransition2 = viewGroup.getLayoutTransition();
                if (layoutTransition2 != null) {
                    if (layoutTransition2.isRunning()) {
                        if (!C2861ae.f10823e) {
                            try {
                                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                                C2861ae.f10822d = declaredMethod;
                                declaredMethod.setAccessible(true);
                            } catch (NoSuchMethodException e2) {
                            }
                            C2861ae.f10823e = true;
                        }
                        if (C2861ae.f10822d != null) {
                            try {
                                C2861ae.f10822d.invoke(layoutTransition2, new Object[0]);
                            } catch (IllegalAccessException | InvocationTargetException e3) {
                            }
                        }
                    }
                    if (layoutTransition2 != C2861ae.f10819a) {
                        viewGroup.setTag(C2901o.C2902a.transition_layout_save, layoutTransition2);
                    }
                }
                viewGroup.setLayoutTransition(C2861ae.f10819a);
                return;
            }
            viewGroup.setLayoutTransition(null);
            if (!C2861ae.f10821c) {
                try {
                    Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                    C2861ae.f10820b = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e4) {
                }
                C2861ae.f10821c = true;
            }
            boolean z2 = false;
            if (C2861ae.f10820b != null) {
                try {
                    z2 = C2861ae.f10820b.getBoolean(viewGroup);
                    if (z2) {
                        try {
                            C2861ae.f10820b.setBoolean(viewGroup, false);
                        } catch (IllegalAccessException e5) {
                        }
                    }
                } catch (IllegalAccessException e6) {
                    z2 = false;
                }
            }
            if (z2) {
                viewGroup.requestLayout();
            }
            LayoutTransition layoutTransition3 = (LayoutTransition) viewGroup.getTag(C2901o.C2902a.transition_layout_save);
            if (layoutTransition3 == null) {
                return;
            }
            viewGroup.setTag(C2901o.C2902a.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition3);
        }
    }
}
