package com.criteo.publisher.p256m0;

import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import java.lang.reflect.InvocationTargetException;
/* renamed from: com.criteo.publisher.m0.p */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/p.class */
public class C8445p {

    /* renamed from: a */
    private static final C8402g f30205a = C8404h.m25741a(C8445p.class);

    /* renamed from: a */
    public static Object m25673a(Object obj, String str, Object... objArr) {
        try {
            int length = objArr.length;
            Class<?>[] clsArr = new Class[length];
            for (int i = 0; i < length; i++) {
                clsArr[i] = objArr[i].getClass();
            }
            return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
        } catch (IllegalAccessException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            f30205a.m25743a("Failed to call ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m25674a(Object obj, String str) {
        try {
            return Class.forName(str, false, C8445p.class.getClassLoader()).isAssignableFrom(obj.getClass());
        } catch (ClassNotFoundException | LinkageError e) {
            f30205a.m25743a("Failed to load class by name to check if instanceof", e);
            return false;
        }
    }
}
