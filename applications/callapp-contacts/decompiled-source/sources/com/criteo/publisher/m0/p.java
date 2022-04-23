package com.criteo.publisher.m0;

import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/p.class */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static final g f17520a = h.a(p.class);

    public static Object a(Object obj, String str, Object... objArr) {
        try {
            int length = objArr.length;
            Class<?>[] clsArr = new Class[length];
            for (int i = 0; i < length; i++) {
                clsArr[i] = objArr[i].getClass();
            }
            return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
        } catch (IllegalAccessException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            f17520a.a("Failed to call ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    public static boolean a(Object obj, String str) {
        try {
            return Class.forName(str, false, p.class.getClassLoader()).isAssignableFrom(obj.getClass());
        } catch (ClassNotFoundException | LinkageError e) {
            f17520a.a("Failed to load class by name to check if instanceof", e);
            return false;
        }
    }
}
