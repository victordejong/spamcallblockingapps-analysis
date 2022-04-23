package com.mixpanel.android.viewcrawler;

import android.view.View;
import com.mixpanel.android.util.MPLog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/Caller.class */
class Caller {
    private static final String LOGTAG = "MixpanelABTest.Caller";
    private final Object[] mMethodArgs;
    private final String mMethodName;
    private final Class<?> mMethodResultType;
    private final Class<?> mTargetClass;
    private final Method mTargetMethod;

    public Caller(Class<?> cls, String str, Object[] objArr, Class<?> cls2) throws NoSuchMethodException {
        this.mMethodName = str;
        this.mMethodArgs = objArr;
        this.mMethodResultType = cls2;
        this.mTargetMethod = pickMethod(cls);
        if (this.mTargetMethod == null) {
            throw new NoSuchMethodException("Method " + cls.getName() + "." + this.mMethodName + " doesn't exit");
        }
        this.mTargetClass = this.mTargetMethod.getDeclaringClass();
    }

    private static Class<?> assignableArgType(Class<?> cls) {
        Class<?> cls2;
        if (cls == Byte.class) {
            cls2 = Byte.TYPE;
        } else if (cls == Short.class) {
            cls2 = Short.TYPE;
        } else if (cls == Integer.class) {
            cls2 = Integer.TYPE;
        } else if (cls == Long.class) {
            cls2 = Long.TYPE;
        } else if (cls == Float.class) {
            cls2 = Float.TYPE;
        } else if (cls == Double.class) {
            cls2 = Double.TYPE;
        } else if (cls == Boolean.class) {
            cls2 = Boolean.TYPE;
        } else {
            cls2 = cls;
            if (cls == Character.class) {
                cls2 = Character.TYPE;
            }
        }
        return cls2;
    }

    private Method pickMethod(Class<?> cls) {
        Method[] methods;
        Class[] clsArr = new Class[this.mMethodArgs.length];
        for (int i = 0; i < this.mMethodArgs.length; i++) {
            clsArr[i] = this.mMethodArgs[i].getClass();
        }
        for (Method method : cls.getMethods()) {
            String name = method.getName();
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (name.equals(this.mMethodName) && parameterTypes.length == this.mMethodArgs.length && assignableArgType(this.mMethodResultType).isAssignableFrom(assignableArgType(method.getReturnType()))) {
                boolean z = true;
                for (int i2 = 0; i2 < parameterTypes.length && z; i2++) {
                    z = assignableArgType(parameterTypes[i2]).isAssignableFrom(assignableArgType(clsArr[i2]));
                }
                if (z) {
                    return method;
                }
            }
        }
        return null;
    }

    public Object applyMethod(View view) {
        return applyMethodWithArguments(view, this.mMethodArgs);
    }

    public Object applyMethodWithArguments(View view, Object[] objArr) {
        if (!this.mTargetClass.isAssignableFrom(view.getClass())) {
            return null;
        }
        try {
            return this.mTargetMethod.invoke(view, objArr);
        } catch (IllegalAccessException e) {
            MPLog.m310e(LOGTAG, "Method " + this.mTargetMethod.getName() + " appears not to be public", e);
            return null;
        } catch (IllegalArgumentException e2) {
            MPLog.m310e(LOGTAG, "Method " + this.mTargetMethod.getName() + " called with arguments of the wrong type", e2);
            return null;
        } catch (InvocationTargetException e3) {
            MPLog.m310e(LOGTAG, "Method " + this.mTargetMethod.getName() + " threw an exception", e3);
            return null;
        }
    }

    public boolean argsAreApplicable(Object[] objArr) {
        Class<?>[] parameterTypes = this.mTargetMethod.getParameterTypes();
        if (objArr.length != parameterTypes.length) {
            return false;
        }
        for (int i = 0; i < objArr.length; i++) {
            Class<?> assignableArgType = assignableArgType(parameterTypes[i]);
            if (objArr[i] == null) {
                if (assignableArgType == Byte.TYPE || assignableArgType == Short.TYPE || assignableArgType == Integer.TYPE || assignableArgType == Long.TYPE || assignableArgType == Float.TYPE || assignableArgType == Double.TYPE || assignableArgType == Boolean.TYPE || assignableArgType == Character.TYPE) {
                    return false;
                }
            } else if (!assignableArgType.isAssignableFrom(assignableArgType(objArr[i].getClass()))) {
                return false;
            }
        }
        return true;
    }

    public Object[] getArgs() {
        return this.mMethodArgs;
    }

    public String toString() {
        return "[Caller " + this.mMethodName + "(" + this.mMethodArgs + ")]";
    }
}
