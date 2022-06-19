package androidx.transition;

import android.animation.LayoutTransition;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.f0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/f0.class */
class C1133f0 {

    /* renamed from: a */
    private static LayoutTransition f4910a;

    /* renamed from: b */
    private static Field f4911b;

    /* renamed from: c */
    private static boolean f4912c;

    /* renamed from: d */
    private static Method f4913d;

    /* renamed from: e */
    private static boolean f4914e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.f0$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/f0$a.class */
    public static final class C1134a extends LayoutTransition {
        C1134a() {
        }

        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    /* renamed from: a */
    private static void m30909a(LayoutTransition layoutTransition) {
        if (!f4914e) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f4913d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f4914e = true;
        }
        Method method = f4913d;
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

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m30908b(android.view.ViewGroup r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.C1133f0.m30908b(android.view.ViewGroup, boolean):void");
    }
}
