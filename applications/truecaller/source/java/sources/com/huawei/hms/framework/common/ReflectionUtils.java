package com.huawei.hms.framework.common;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/ReflectionUtils.class */
public class ReflectionUtils {
    private static final String TAG = "ReflectionUtils";

    public static boolean checkCompatible(String str) {
        try {
            tryLoadClass(str);
            return true;
        } catch (Exception e) {
            Logger.m38040w(TAG, str + "ClassNotFoundException");
            return false;
        }
    }

    private static Class<?> getClass(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static Field getField(Object obj, String str) {
        if (obj == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final Field declaredField = obj.getClass().getDeclaredField(str);
            AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.framework.common.ReflectionUtils.2
                @Override // java.security.PrivilegedAction
                public Object run() {
                    declaredField.setAccessible(true);
                    return null;
                }
            });
            return declaredField;
        } catch (IllegalArgumentException e) {
            Logger.m38046e(TAG, "Exception in getField :: IllegalArgumentException:", e);
            return null;
        } catch (NoSuchFieldException e2) {
            Logger.m38046e(TAG, "Exception in getField :: NoSuchFieldException:", e2);
            return null;
        } catch (SecurityException e3) {
            Logger.m38046e(TAG, "not security int method getField,SecurityException:", e3);
            return null;
        }
    }

    public static Object getFieldObj(Object obj, String str) {
        Object obj2 = null;
        if (obj != null) {
            if (TextUtils.isEmpty(str)) {
                obj2 = null;
            } else {
                try {
                    final Field declaredField = obj.getClass().getDeclaredField(str);
                    AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.framework.common.ReflectionUtils.1
                        @Override // java.security.PrivilegedAction
                        public Object run() {
                            declaredField.setAccessible(true);
                            return null;
                        }
                    });
                    obj2 = declaredField.get(obj);
                } catch (IllegalAccessException e) {
                    Logger.m38046e(TAG, "Exception in getFieldObj :: IllegalAccessException:", e);
                    obj2 = null;
                } catch (IllegalArgumentException e2) {
                    Logger.m38046e(TAG, "Exception in getFieldObj :: IllegalArgumentException:", e2);
                    obj2 = null;
                } catch (NoSuchFieldException e3) {
                    Logger.m38046e(TAG, "Exception in getFieldObj :: NoSuchFieldException:", e3);
                    obj2 = null;
                } catch (SecurityException e4) {
                    Logger.m38046e(TAG, "not security int method getFieldObj,SecurityException:", e4);
                    obj2 = null;
                }
            }
        }
        return obj2;
    }

    public static Method getMethod(Class<?> cls, String str, Class<?>... clsArr) {
        if (cls == null || str == null) {
            Logger.m38040w(TAG, "targetClass is  null pr name is null:");
            return null;
        }
        try {
            return cls.getDeclaredMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            Logger.m38046e(TAG, "NoSuchMethodException:", e);
            return null;
        } catch (SecurityException e2) {
            Logger.m38046e(TAG, "SecurityException:", e2);
            return null;
        }
    }

    public static Object getStaticFieldObj(String str, String str2) {
        if (str == null) {
            return null;
        }
        Class<?> cls = getClass(str);
        Object obj = null;
        if (cls != null) {
            if (TextUtils.isEmpty(str2)) {
                obj = null;
            } else {
                try {
                    final Field declaredField = cls.getDeclaredField(str2);
                    AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.framework.common.ReflectionUtils.3
                        @Override // java.security.PrivilegedAction
                        public Object run() {
                            declaredField.setAccessible(true);
                            return null;
                        }
                    });
                    obj = declaredField.get(cls);
                } catch (IllegalAccessException e) {
                    Logger.m38046e(TAG, "Exception in getFieldObj :: IllegalAccessException:", e);
                    obj = null;
                } catch (IllegalArgumentException e2) {
                    Logger.m38046e(TAG, "Exception in getFieldObj :: IllegalArgumentException:", e2);
                    obj = null;
                } catch (NoSuchFieldException e3) {
                    Logger.m38046e(TAG, "Exception in getFieldObj :: NoSuchFieldException:", e3);
                    obj = null;
                } catch (SecurityException e4) {
                    Logger.m38046e(TAG, "not security int method getStaticFieldObj,SecurityException:", e4);
                    obj = null;
                }
            }
        }
        return obj;
    }

    private static Object invoke(Object obj, Method method, Object... objArr) throws UnsupportedOperationException {
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(obj, objArr);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "RuntimeException in invoke:", e);
            return null;
        } catch (Exception e2) {
            Logger.m38046e(TAG, "Exception in invoke:", e2);
            return null;
        }
    }

    public static Object invokeStaticMethod(String str, String str2, Class<?>[] clsArr, Object... objArr) {
        Method method = getMethod(getClass(str), str2, clsArr);
        if (method == null) {
            return null;
        }
        return invoke(null, method, objArr);
    }

    public static Object invokeStaticMethod(String str, String str2, Object... objArr) {
        Class[] clsArr;
        if (str == null) {
            return null;
        }
        if (objArr != null) {
            int length = objArr.length;
            Class[] clsArr2 = new Class[length];
            int i = 0;
            while (true) {
                clsArr = clsArr2;
                if (i >= length) {
                    break;
                }
                setClassType(clsArr2, objArr[i], i);
                i++;
            }
        } else {
            clsArr = null;
        }
        Method method = getMethod(getClass(str), str2, clsArr);
        if (method != null) {
            return invoke(null, method, objArr);
        }
        return null;
    }

    private static void setClassType(Class<?>[] clsArr, Object obj, int i) {
        if (obj instanceof Integer) {
            clsArr[i] = Integer.TYPE;
        } else if (obj instanceof Long) {
            clsArr[i] = Long.TYPE;
        } else if (obj instanceof Double) {
            clsArr[i] = Double.TYPE;
        } else if (obj instanceof Float) {
            clsArr[i] = Float.TYPE;
        } else if (obj instanceof Boolean) {
            clsArr[i] = Boolean.TYPE;
        } else if (obj instanceof Character) {
            clsArr[i] = Character.TYPE;
        } else if (obj instanceof Byte) {
            clsArr[i] = Byte.TYPE;
        } else if (obj instanceof Void) {
            clsArr[i] = Void.TYPE;
        } else if (obj instanceof Short) {
            clsArr[i] = Short.TYPE;
        } else {
            clsArr[i] = obj.getClass();
        }
    }

    private static void tryLoadClass(String str) throws ClassNotFoundException {
        ClassLoader classLoader = ReflectionUtils.class.getClassLoader();
        if (classLoader != null) {
            classLoader.loadClass(str);
            return;
        }
        throw new ClassNotFoundException("not found classloader");
    }
}
