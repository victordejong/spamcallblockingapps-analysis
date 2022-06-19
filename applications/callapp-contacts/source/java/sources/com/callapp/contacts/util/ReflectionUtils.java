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

    /* renamed from: a */
    private static final Map<SerializablePair<Class<?>, String>, Field> f27782a = new ConcurrentHashMap();

    /* renamed from: a */
    public static Object m27426a(Class<?> cls) throws ClassNotFoundException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchMethodException {
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        declaredConstructors[0].getName();
        declaredConstructors[0].setAccessible(true);
        return declaredConstructors[0].newInstance(new Object[0]);
    }

    /* renamed from: a */
    private static Object m27424a(Object obj, Class<?> cls, String str, List<Class<?>> list, List<Object> list2) throws ClassNotFoundException, InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
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
        if (clsArr != null) {
            Object[] objArr = new Object[list2.size()];
            for (int i2 = 0; i2 < list2.size(); i2++) {
                objArr[i2] = list2.get(i2);
            }
            return declaredMethod.invoke(obj, objArr);
        }
        return declaredMethod.invoke(obj, new Object[0]);
    }

    /* renamed from: a */
    public static <T> T m27423a(Object obj, String str) {
        Class<?> cls = obj.getClass();
        try {
            Field m27425a = m27425a(cls, str);
            if (m27425a == null) {
                throw new IllegalArgumentException(String.format("No such field %s.%s", cls, str));
            }
            return (T) m27425a.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(String.format("Error getting value for %s.%s", cls, str), e);
        }
    }

    /* renamed from: a */
    public static Object m27421a(Object obj, String str, List<Class<?>> list, List<Object> list2) throws ClassNotFoundException, InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        return m27424a(obj, obj.getClass(), str, list, list2);
    }

    /* renamed from: a */
    public static Object m27419a(Object obj, String str, Class<?>[] clsArr, Object... objArr) throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Method method = (Method) Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class).invoke(Class.forName(obj.getClass().getName()), str, clsArr);
        method.setAccessible(true);
        return method.invoke(obj, objArr);
    }

    /* renamed from: a */
    public static Object m27417a(String str, String str2, List<Class<?>> list, List<Object> list2) throws ClassNotFoundException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchMethodException {
        return m27421a(m27426a(Class.forName(str)), str2, list, list2);
    }

    /* renamed from: a */
    private static Field m27425a(Class<?> cls, String str) {
        SerializablePair<Class<?>, String> serializablePair = new SerializablePair<>(cls, str);
        Field field = f27782a.get(serializablePair);
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
                field = m27425a((Class<?>) superclass, str);
            }
        }
        if (field != null) {
            f27782a.put(serializablePair, field);
        }
        return field;
    }

    /* renamed from: a */
    public static void m27422a(Object obj, String str, Object obj2) {
        Class<?> cls = obj.getClass();
        try {
            Field m27425a = m27425a(cls, str);
            if (m27425a == null) {
                throw new IllegalArgumentException(String.format("No such field %s.%s", cls, str));
            }
            m27425a.set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(String.format("Error setting field %s.%s", cls, str), e);
        }
    }

    /* renamed from: a */
    public static boolean m27420a(Object obj, String str, Class... clsArr) {
        try {
            obj.getClass().getMethod(str, clsArr);
            return true;
        } catch (NoSuchMethodException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m27418a(String str) {
        boolean z;
        try {
            Class.forName(str);
            z = true;
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static Object m27415b(Object obj, String str) throws ClassNotFoundException, InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        return m27421a(obj, str, (List<Class<?>>) null, (List<Object>) null);
    }

    /* renamed from: b */
    public static void m27416b(Class<?> cls) throws ClassNotFoundException, IllegalAccessException {
        Constructor<?>[] declaredConstructors;
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            constructor.getName();
            constructor.setAccessible(true);
        }
    }
}
