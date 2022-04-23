package androidx.transition;

import android.animation.LayoutTransition;
import android.os.Build;
import android.view.ViewGroup;
import androidx.transition.o;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/transition/ad.class */
final class ad {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f5759a = true;

    /* renamed from: b  reason: collision with root package name */
    private static Method f5760b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f5761c;

    private ad() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i);
        }
        if (!f5761c) {
            try {
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", Integer.TYPE, Integer.TYPE);
                f5760b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f5761c = true;
        }
        Method method = f5760b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i))).intValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ac a(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new ab(viewGroup) : (aa) af.c(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else if (Build.VERSION.SDK_INT < 18) {
            if (ae.f5762a == null) {
                LayoutTransition layoutTransition = new LayoutTransition() { // from class: androidx.transition.ae.1
                    @Override // android.animation.LayoutTransition
                    public final boolean isChangingLayout() {
                        return true;
                    }
                };
                ae.f5762a = layoutTransition;
                layoutTransition.setAnimator(2, null);
                ae.f5762a.setAnimator(0, null);
                ae.f5762a.setAnimator(1, null);
                ae.f5762a.setAnimator(3, null);
                ae.f5762a.setAnimator(4, null);
            }
            if (z) {
                LayoutTransition layoutTransition2 = viewGroup.getLayoutTransition();
                if (layoutTransition2 != null) {
                    if (layoutTransition2.isRunning()) {
                        if (!ae.e) {
                            try {
                                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                                ae.f5765d = declaredMethod;
                                declaredMethod.setAccessible(true);
                            } catch (NoSuchMethodException e) {
                            }
                            ae.e = true;
                        }
                        if (ae.f5765d != null) {
                            try {
                                ae.f5765d.invoke(layoutTransition2, new Object[0]);
                            } catch (IllegalAccessException | InvocationTargetException e2) {
                            }
                        }
                    }
                    if (layoutTransition2 != ae.f5762a) {
                        viewGroup.setTag(o.a.transition_layout_save, layoutTransition2);
                    }
                }
                viewGroup.setLayoutTransition(ae.f5762a);
                return;
            }
            viewGroup.setLayoutTransition(null);
            if (!ae.f5764c) {
                try {
                    Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                    ae.f5763b = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e3) {
                }
                ae.f5764c = true;
            }
            boolean z2 = false;
            if (ae.f5763b != null) {
                try {
                    z2 = ae.f5763b.getBoolean(viewGroup);
                    if (z2) {
                        try {
                            ae.f5763b.setBoolean(viewGroup, false);
                        } catch (IllegalAccessException e4) {
                        }
                    }
                } catch (IllegalAccessException e5) {
                    z2 = false;
                }
            }
            if (z2) {
                viewGroup.requestLayout();
            }
            LayoutTransition layoutTransition3 = (LayoutTransition) viewGroup.getTag(o.a.transition_layout_save);
            if (layoutTransition3 != null) {
                viewGroup.setTag(o.a.transition_layout_save, null);
                viewGroup.setLayoutTransition(layoutTransition3);
            }
        } else if (f5759a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e6) {
                f5759a = false;
            }
        }
    }
}
