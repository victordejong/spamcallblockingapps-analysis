package com.apptentive.android.sdk.util;

import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/Invocation.class */
public class Invocation {
    private final Class<?> cls;
    private final Object target;
    private static final Class<?>[] EMPTY_PARAMETER_TYPES = new Class[0];
    private static final Object[] EMPTY_ARGS = new Object[0];

    private Invocation(Class<?> cls, Object obj) {
        this.cls = cls;
        this.target = obj;
    }

    public static Invocation fromClass(Class<?> cls) {
        if (cls != null) {
            return new Invocation(cls, null);
        }
        throw new IllegalArgumentException("Class is null");
    }

    public static Invocation fromClass(String str) throws InvocationException {
        if (str == null) {
            throw new IllegalArgumentException("Class name is null");
        }
        Class<?> classForName = RuntimeUtils.classForName(str);
        if (classForName != null) {
            return fromClass(classForName);
        }
        throw new InvocationException("Unable to find class '%s'", str);
    }

    public static Invocation fromObject(Object obj) {
        if (obj != null) {
            return new Invocation(obj.getClass(), obj);
        }
        throw new IllegalArgumentException("Target is null");
    }

    public boolean invokeBooleanMethod(String str) throws InvocationException {
        Boolean bool = (Boolean) invokeMethod(str, Boolean.class);
        if (bool != null) {
            return bool.booleanValue();
        }
        throw new InvocationException("Unable to invoke method '%s' on class '%s': null returned", str, this.cls);
    }

    public <T> T invokeMethod(String str, Class<? extends T> cls) throws InvocationException {
        return (T) invokeMethod(str, EMPTY_PARAMETER_TYPES, EMPTY_ARGS, cls);
    }

    public Object invokeMethod(String str, Class<?>[] clsArr, Object[] objArr) throws InvocationException {
        try {
            Method declaredMethod = this.cls.getDeclaredMethod(str, clsArr);
            if (declaredMethod != null) {
                return declaredMethod.invoke(this.target, objArr);
            }
            throw new InvocationException("Unable to invoke method '%s' on class '%s': method not found", str, this.cls);
        } catch (InvocationException e) {
            throw e;
        } catch (Exception e2) {
            throw new InvocationException(e2, "Unable to invoke method '%s' on class '%s'", str, this.cls);
        }
    }

    public <T> T invokeMethod(String str, Class<?>[] clsArr, Object[] objArr, Class<? extends T> cls) throws InvocationException {
        T t = (T) invokeMethod(str, clsArr, objArr);
        if (t == null || cls.isInstance(t)) {
            return t;
        }
        throw new InvocationException("Unable to invoke method '%s' on class '%s': mismatch return type '%s'", str, cls, t.getClass());
    }

    public String invokeStringMethod(String str) throws InvocationException {
        return (String) invokeMethod(str, String.class);
    }
}
