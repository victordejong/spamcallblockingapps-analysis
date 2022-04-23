package androidx.transition;

import android.animation.LayoutTransition;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.f0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/f0.class */
class C0492f0 {

    /* renamed from: a */
    private static LayoutTransition f2723a;

    /* renamed from: b */
    private static Field f2724b;

    /* renamed from: c */
    private static boolean f2725c;

    /* renamed from: d */
    private static Method f2726d;

    /* renamed from: e */
    private static boolean f2727e;

    /* renamed from: androidx.transition.f0$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/f0$a.class */
    static final class C0493a extends LayoutTransition {
        C0493a() {
        }

        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    /* renamed from: a */
    private static void m12043a(LayoutTransition layoutTransition) {
        if (!f2727e) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f2726d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f2727e = true;
        }
        Method method = f2726d;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException e2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            } catch (InvocationTargetException e3) {
                Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m12042b(android.view.ViewGroup r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.C0492f0.m12042b(android.view.ViewGroup, boolean):void");
    }
}
