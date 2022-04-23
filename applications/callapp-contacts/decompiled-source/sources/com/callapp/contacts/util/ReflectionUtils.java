package com.callapp.contacts.util;

import com.callapp.common.util.SerializablePair;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ReflectionUtils.class */
public class ReflectionUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<SerializablePair<Class<?>, String>, Field> f15937a = new ConcurrentHashMap();

    public static Object a(Class<?> cls) throws ClassNotFoundException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchMethodException {
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        declaredConstructors[0].getName();
        declaredConstructors[0].setAccessible(true);
        return declaredConstructors[0].newInstance(new Object[0]);
    }

    private static Object a(Object obj, Class<?> cls, String str, List<Class<?>> list, List<Object> list2) throws ClassNotFoundException, InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        Class<?>[] clsArr;
        Method declaredMethod;
        if (list != null) {
            Class<?>[] clsArr2 = new Class[list.size()];
            int i = 0;
            while (true) {
                clsArr = clsArr2;
                if (i >= list.size()) {
                    break;
                }
                clsArr2[i] = list.get(i);
                i++;
            }
        } else {
            clsArr = null;
        }
        if (clsArr != null) {
            try {
                declaredMethod = cls.getMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
                declaredMethod.setAccessible(true);
            }
        } else {
            try {
                declaredMethod = cls.getMethod(str, new Class[0]);
            } catch (NoSuchMethodException e2) {
                declaredMethod = cls.getDeclaredMethod(str, new Class[0]);
                declaredMethod.setAccessible(true);
            }
        }
        if (clsArr == null) {
            return declaredMethod.invoke(obj, new Object[0]);
        }
        Object[] objArr = new Object[list2.size()];
        for (int i2 = 0; i2 < list2.size(); i2++) {
            objArr[i2] = list2.get(i2);
        }
        return declaredMethod.invoke(obj, objArr);
    }

    public static <T> T a(Object obj, String str) {
        Class<?> cls = obj.getClass();
        try {
            Field a2 = a(cls, str);
            if (a2 != null) {
                return (T) a2.get(obj);
            }
            throw new IllegalArgumentException(String.format("No such field %s.%s", cls, str));
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(String.format("Error getting value for %s.%s", cls, str), e);
        }
    }

    public static Object a(Object obj, String str, List<Class<?>> list, List<Object> list2) throws ClassNotFoundException, InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        return a(obj, obj.getClass(), str, list, list2);
    }

    public static Object a(Object obj, String str, Class<?>[] clsArr, Object... objArr) throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Method method = (Method) Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class).invoke(Class.forName(obj.getClass().getName()), str, clsArr);
        method.setAccessible(true);
        return method.invoke(obj, objArr);
    }

    public static Object a(String str, String str2, List<Class<?>> list, List<Object> list2) throws ClassNotFoundException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchMethodException {
        return a(a(Class.forName(str)), str2, list, list2);
    }

    private static Field a(Class<?> cls, String str) {
        SerializablePair<Class<?>, String> serializablePair = new SerializablePair<>(cls, str);
        Field field = f15937a.get(serializablePair);
        if (field != null) {
            return field;
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            field = declaredField;
            declaredField.setAccessible(true);
            field = declaredField;
        } catch (NoSuchFieldException e) {
            Class<? super Object> superclass = cls.getSuperclass();
            if (superclass != null) {
                field = a((Class<?>) superclass, str);
            }
        }
        if (field != null) {
            f15937a.put(serializablePair, field);
        }
        return field;
    }

    public static void a(Object obj, String str, Object obj2) {
        Class<?> cls = obj.getClass();
        try {
            Field a2 = a(cls, str);
            if (a2 != null) {
                a2.set(obj, obj2);
                return;
            }
            throw new IllegalArgumentException(String.format("No such field %s.%s", cls, str));
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(String.format("Error setting field %s.%s", cls, str), e);
        }
    }

    public static boolean a(Object obj, String str, Class... clsArr) {
        try {
            obj.getClass().getMethod(str, clsArr);
            return true;
        } catch (NoSuchMethodException e) {
            return false;
        }
    }

    public static boolean a(String str) {
        boolean z;
        try {
            Class.forName(str);
            z = true;
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    public static Object b(Object obj, String str) throws ClassNotFoundException, InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        return a(obj, str, (List<Class<?>>) null, (List<Object>) null);
    }

    public static void b(Class<?> cls) throws ClassNotFoundException, IllegalAccessException {
        Constructor<?>[] declaredConstructors;
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            constructor.getName();
            constructor.setAccessible(true);
        }
    }
}
