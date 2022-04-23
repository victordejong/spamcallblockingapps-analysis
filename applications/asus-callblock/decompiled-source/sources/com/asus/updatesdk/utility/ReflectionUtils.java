package com.asus.updatesdk.utility;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/utility/ReflectionUtils.class */
final class ReflectionUtils {
    ReflectionUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> a(String str) {
        Class<?> cls;
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException e) {
            a("Class: " + str, e);
            cls = null;
        }
        return cls;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(String str, Object obj, Class<?>[] clsArr, Object[] objArr) {
        T t;
        if (obj == null) {
            t = null;
        } else {
            Class<?> cls = obj instanceof Class ? obj : obj.getClass();
            if (Object.class.isAssignableFrom(cls)) {
                try {
                    t = (T) cls.getMethod(str, clsArr).invoke(obj, objArr);
                } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
                    a("Method: " + str, e);
                }
            }
            t = null;
        }
        return t;
    }

    private static void a(String str, Throwable th) {
        Log.v("ReflectionUtils", str, th);
    }
}
