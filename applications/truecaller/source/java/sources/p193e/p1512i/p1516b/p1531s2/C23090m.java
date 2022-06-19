package p193e.p1512i.p1516b.p1531s2;

import java.lang.reflect.InvocationTargetException;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
/* renamed from: e.i.b.s2.m */
/* loaded from: classes-dex2jar.jar:e/i/b/s2/m.class */
public class C23090m {

    /* renamed from: a */
    public static final C23021h f63916a = C23023i.m7583a(C23090m.class);

    /* renamed from: a */
    public static Object m7559a(Object obj, String str, Object... objArr) {
        try {
            int length = objArr.length;
            Class<?>[] clsArr = new Class[length];
            for (int i = 0; i < length; i++) {
                clsArr[i] = objArr[i].getClass();
            }
            return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
        } catch (IllegalAccessException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            f63916a.m7585b("Failed to call " + str, e);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m7558b(Object obj, String str) {
        try {
            return Class.forName(str, false, C23090m.class.getClassLoader()).isAssignableFrom(obj.getClass());
        } catch (ClassNotFoundException | LinkageError e) {
            f63916a.m7586a(new C23019f(3, "Failed to load class by name to check if instanceof", e, null));
            return false;
        }
    }
}
