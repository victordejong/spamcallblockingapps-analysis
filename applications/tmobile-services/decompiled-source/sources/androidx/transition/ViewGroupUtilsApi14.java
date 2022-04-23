package androidx.transition;

import android.animation.LayoutTransition;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewGroupUtilsApi14.class */
class ViewGroupUtilsApi14 {

    /* renamed from: a */
    private static LayoutTransition f5291a;

    /* renamed from: b */
    private static Field f5292b;

    /* renamed from: c */
    private static boolean f5293c;

    /* renamed from: d */
    private static Method f5294d;

    /* renamed from: e */
    private static boolean f5295e;

    private ViewGroupUtilsApi14() {
    }

    /* renamed from: a */
    private static void m16704a(LayoutTransition layoutTransition) {
        if (!f5295e) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f5294d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f5295e = true;
        }
        Method method = f5294d;
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
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m16703b(@androidx.annotation.NonNull android.view.ViewGroup r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ViewGroupUtilsApi14.m16703b(android.view.ViewGroup, boolean):void");
    }
}
