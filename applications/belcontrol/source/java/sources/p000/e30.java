package p000;

import android.animation.LayoutTransition;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: e30 */
/* loaded from: classes-dex2jar.jar:e30.class */
public class e30 {

    /* renamed from: a */
    public static LayoutTransition f6256a;

    /* renamed from: b */
    public static Field f6257b;

    /* renamed from: c */
    public static boolean f6258c;

    /* renamed from: d */
    public static Method f6259d;

    /* renamed from: e */
    public static boolean f6260e;

    /* renamed from: e30$a */
    /* loaded from: classes-dex2jar.jar:e30$a.class */
    public static final class C1343a extends LayoutTransition {
        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    /* renamed from: a */
    public static void m2262a(LayoutTransition layoutTransition) {
        if (!f6260e) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f6259d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f6260e = true;
        }
        Method method = f6259d;
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
    public static void m2261b(android.view.ViewGroup r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.e30.m2261b(android.view.ViewGroup, boolean):void");
    }
}
