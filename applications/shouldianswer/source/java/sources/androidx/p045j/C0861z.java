package androidx.p045j;

import android.animation.LayoutTransition;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.j.z */
/* loaded from: classes-dex2jar.jar:androidx/j/z.class */
class C0861z {

    /* renamed from: a */
    private static LayoutTransition f2705a;

    /* renamed from: b */
    private static Field f2706b;

    /* renamed from: c */
    private static boolean f2707c;

    /* renamed from: d */
    private static Method f2708d;

    /* renamed from: e */
    private static boolean f2709e;

    /* renamed from: a */
    private static void m5212a(LayoutTransition layoutTransition) {
        if (!f2709e) {
            try {
                f2708d = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f2708d.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f2709e = true;
        }
        Method method = f2708d;
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
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m5211a(android.view.ViewGroup r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.C0861z.m5211a(android.view.ViewGroup, boolean):void");
    }
}
