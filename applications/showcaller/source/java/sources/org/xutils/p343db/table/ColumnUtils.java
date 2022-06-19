package org.xutils.p343db.table;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import org.xutils.common.util.LogUtil;
import org.xutils.p343db.converter.ColumnConverter;
import org.xutils.p343db.converter.ColumnConverterFactory;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.table.ColumnUtils */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/table/ColumnUtils.class */
public final class ColumnUtils {

    /* renamed from: a */
    private static final HashSet<Class<?>> f40642a;

    /* renamed from: b */
    private static final HashSet<Class<?>> f40643b;

    /* renamed from: c */
    private static final HashSet<Class<?>> f40644c;

    static {
        HashSet<Class<?>> hashSet = new HashSet<>(2);
        f40642a = hashSet;
        HashSet<Class<?>> hashSet2 = new HashSet<>(2);
        f40643b = hashSet2;
        HashSet<Class<?>> hashSet3 = new HashSet<>(4);
        f40644c = hashSet3;
        hashSet.add(Boolean.TYPE);
        hashSet.add(Boolean.class);
        hashSet2.add(Integer.TYPE);
        hashSet2.add(Integer.class);
        hashSet3.addAll(hashSet2);
        hashSet3.add(Long.TYPE);
        hashSet3.add(Long.class);
    }

    private ColumnUtils() {
    }

    /* renamed from: a */
    private static Method m225a(Class<?> cls, String str) {
        if (!str.startsWith("is")) {
            String str2 = "is" + str.substring(0, 1).toUpperCase();
            if (str.length() > 1) {
                str = str2 + str.substring(1);
            } else {
                str = str2;
            }
        }
        try {
            return cls.getDeclaredMethod(str, new Class[0]);
        } catch (NoSuchMethodException e) {
            LogUtil.m261d(cls.getName() + "#" + str + " not exist");
            return null;
        }
    }

    /* renamed from: b */
    private static Method m224b(Class<?> cls, String str, Class<?> cls2) {
        String str2;
        if (!str.startsWith("is") || str.length() <= 2) {
            String str3 = "set" + str.substring(0, 1).toUpperCase();
            str2 = str3;
            if (str.length() > 1) {
                str2 = str3 + str.substring(1);
            }
        } else {
            String str4 = "set" + str.substring(2, 3).toUpperCase();
            str2 = str4;
            if (str.length() > 3) {
                str2 = str4 + str.substring(3);
            }
        }
        try {
            return cls.getDeclaredMethod(str2, cls2);
        } catch (NoSuchMethodException e) {
            LogUtil.m261d(cls.getName() + "#" + str2 + " not exist");
            return null;
        }
    }

    /* renamed from: c */
    public static Method m223c(Class<?> cls, Field field) {
        Method method = null;
        if (Object.class.equals(cls)) {
            return null;
        }
        String name = field.getName();
        if (isBoolean(field.getType())) {
            method = m225a(cls, name);
        }
        Method method2 = method;
        if (method == null) {
            String str = "get" + name.substring(0, 1).toUpperCase();
            String str2 = str;
            if (name.length() > 1) {
                str2 = str + name.substring(1);
            }
            try {
                method2 = cls.getDeclaredMethod(str2, new Class[0]);
            } catch (NoSuchMethodException e) {
                LogUtil.m261d(cls.getName() + "#" + str2 + " not exist");
                method2 = method;
            }
        }
        return method2 == null ? m223c(cls.getSuperclass(), field) : method2;
    }

    public static Object convert2DbValueIfNeeded(Object obj) {
        Object obj2 = obj;
        if (obj != null) {
            obj2 = ColumnConverterFactory.getColumnConverter(obj.getClass()).fieldValue2DbValue(obj);
        }
        return obj2;
    }

    public static String convert2SafeExpr(Object obj) {
        String valueOf = String.valueOf(obj);
        String str = valueOf;
        if (valueOf.indexOf(39) != -1) {
            str = valueOf.replace("'", "''");
        }
        return str;
    }

    /* renamed from: d */
    public static Method m222d(Class<?> cls, Field field) {
        Method method = null;
        if (Object.class.equals(cls)) {
            return null;
        }
        String name = field.getName();
        Class<?> type = field.getType();
        if (isBoolean(type)) {
            method = m224b(cls, name, type);
        }
        Method method2 = method;
        if (method == null) {
            String str = "set" + name.substring(0, 1).toUpperCase();
            String str2 = str;
            if (name.length() > 1) {
                str2 = str + name.substring(1);
            }
            try {
                method2 = cls.getDeclaredMethod(str2, type);
            } catch (NoSuchMethodException e) {
                LogUtil.m261d(cls.getName() + "#" + str2 + " not exist");
                method2 = method;
            }
        }
        return method2 == null ? m222d(cls.getSuperclass(), field) : method2;
    }

    public static boolean isAutoIdType(Class<?> cls) {
        return f40644c.contains(cls);
    }

    public static boolean isBoolean(Class<?> cls) {
        return f40642a.contains(cls);
    }

    public static boolean isInteger(Class<?> cls) {
        return f40643b.contains(cls);
    }

    public static boolean isTextColumnDbType(Object obj) {
        if (obj == null) {
            return false;
        }
        ColumnConverter columnConverter = ColumnConverterFactory.getColumnConverter(obj.getClass());
        boolean z = false;
        if (columnConverter != null) {
            z = false;
            if (ColumnDbType.TEXT.equals(columnConverter.getColumnDbType())) {
                z = true;
            }
        }
        return z;
    }
}
