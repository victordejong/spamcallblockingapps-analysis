package com.lidroid.xutils.p086db.table;

import android.text.TextUtils;
import com.lidroid.xutils.db.annotation.Check;
import com.lidroid.xutils.db.annotation.Column;
import com.lidroid.xutils.db.annotation.Finder;
import com.lidroid.xutils.db.annotation.Foreign;
import com.lidroid.xutils.db.annotation.Id;
import com.lidroid.xutils.db.annotation.NotNull;
import com.lidroid.xutils.db.annotation.Transient;
import com.lidroid.xutils.db.annotation.Unique;
import com.lidroid.xutils.p086db.converter.ColumnConverter;
import com.lidroid.xutils.p086db.converter.ColumnConverterFactory;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
/* renamed from: com.lidroid.xutils.db.table.ColumnUtils */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/table/ColumnUtils.class */
public class ColumnUtils {
    private static final HashSet<String> DB_PRIMITIVE_TYPES;

    static {
        HashSet<String> hashSet = new HashSet<>(14);
        DB_PRIMITIVE_TYPES = hashSet;
        hashSet.add(Integer.TYPE.getName());
        hashSet.add(Long.TYPE.getName());
        hashSet.add(Short.TYPE.getName());
        hashSet.add(Byte.TYPE.getName());
        hashSet.add(Float.TYPE.getName());
        hashSet.add(Double.TYPE.getName());
        hashSet.add(Integer.class.getName());
        hashSet.add(Long.class.getName());
        hashSet.add(Short.class.getName());
        hashSet.add(Byte.class.getName());
        hashSet.add(Float.class.getName());
        hashSet.add(Double.class.getName());
        hashSet.add(String.class.getName());
        hashSet.add(byte[].class.getName());
    }

    private ColumnUtils() {
    }

    public static Object convert2DbColumnValueIfNeeded(Object obj) {
        Object obj2 = obj;
        if (obj != null) {
            Class<?> cls = obj.getClass();
            obj2 = obj;
            if (!isDbPrimitiveType(cls)) {
                ColumnConverter columnConverter = ColumnConverterFactory.getColumnConverter(cls);
                obj2 = obj;
                if (columnConverter != null) {
                    obj2 = columnConverter.fieldValue2ColumnValue(obj);
                }
            }
        }
        return obj2;
    }

    private static Method getBooleanColumnGetMethod(Class<?> cls, String str) {
        String str2 = "is" + str.substring(0, 1).toUpperCase() + str.substring(1);
        if (!isStartWithIs(str)) {
            str = str2;
        }
        try {
            return cls.getDeclaredMethod(str, new Class[0]);
        } catch (NoSuchMethodException e) {
            LogUtils.m2011d(str + " not exist");
            return null;
        }
    }

    private static Method getBooleanColumnSetMethod(Class<?> cls, Field field) {
        StringBuilder sb;
        String str;
        String name = field.getName();
        if (isStartWithIs(field.getName())) {
            sb = new StringBuilder();
            sb.append("set");
            sb.append(name.substring(2, 3).toUpperCase());
            str = name.substring(3);
        } else {
            sb = new StringBuilder();
            sb.append("set");
            sb.append(name.substring(0, 1).toUpperCase());
            str = name.substring(1);
        }
        sb.append(str);
        String sb2 = sb.toString();
        try {
            return cls.getDeclaredMethod(sb2, field.getType());
        } catch (NoSuchMethodException e) {
            LogUtils.m2011d(sb2 + " not exist");
            return null;
        }
    }

    public static String getCheck(Field field) {
        Check annotation = field.getAnnotation(Check.class);
        if (annotation != null) {
            return annotation.value();
        }
        return null;
    }

    public static String getColumnDefaultValue(Field field) {
        Column annotation = field.getAnnotation(Column.class);
        if (annotation == null || TextUtils.isEmpty(annotation.defaultValue())) {
            return null;
        }
        return annotation.defaultValue();
    }

    public static Method getColumnGetMethod(Class<?> cls, Field field) {
        String name;
        Method booleanColumnGetMethod = field.getType() == Boolean.TYPE ? getBooleanColumnGetMethod(cls, field.getName()) : null;
        Method method = booleanColumnGetMethod;
        if (booleanColumnGetMethod == null) {
            String str = "get" + name.substring(0, 1).toUpperCase() + name.substring(1);
            try {
                method = cls.getDeclaredMethod(str, new Class[0]);
            } catch (NoSuchMethodException e) {
                LogUtils.m2011d(str + " not exist");
                method = booleanColumnGetMethod;
            }
        }
        return (method != null || Object.class.equals(cls.getSuperclass())) ? method : getColumnGetMethod(cls.getSuperclass(), field);
    }

    public static String getColumnNameByField(Field field) {
        Column annotation = field.getAnnotation(Column.class);
        if (annotation == null || TextUtils.isEmpty(annotation.column())) {
            Id annotation2 = field.getAnnotation(Id.class);
            if (annotation2 != null && !TextUtils.isEmpty(annotation2.column())) {
                return annotation2.column();
            }
            Foreign annotation3 = field.getAnnotation(Foreign.class);
            if (annotation3 != null && !TextUtils.isEmpty(annotation3.column())) {
                return annotation3.column();
            }
            field.getAnnotation(Finder.class);
            return field.getName();
        }
        return annotation.column();
    }

    public static Method getColumnSetMethod(Class<?> cls, Field field) {
        String name = field.getName();
        Method booleanColumnSetMethod = field.getType() == Boolean.TYPE ? getBooleanColumnSetMethod(cls, field) : null;
        Method method = booleanColumnSetMethod;
        if (booleanColumnSetMethod == null) {
            String str = "set" + name.substring(0, 1).toUpperCase() + name.substring(1);
            try {
                method = cls.getDeclaredMethod(str, field.getType());
            } catch (NoSuchMethodException e) {
                LogUtils.m2011d(str + " not exist");
                method = booleanColumnSetMethod;
            }
        }
        return (method != null || Object.class.equals(cls.getSuperclass())) ? method : getColumnSetMethod(cls.getSuperclass(), field);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r0.equals(java.util.List.class) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Class<?> getFinderTargetEntityType(com.lidroid.xutils.p086db.table.Finder r3) {
        /*
            r0 = r3
            java.lang.reflect.Field r0 = r0.getColumnField()
            java.lang.Class r0 = r0.getType()
            r4 = r0
            r0 = r4
            java.lang.Class<com.lidroid.xutils.db.sqlite.FinderLazyLoader> r1 = com.lidroid.xutils.p086db.sqlite.FinderLazyLoader.class
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1c
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.Class<java.util.List> r1 = java.util.List.class
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L31
        L1c:
            r0 = r3
            java.lang.reflect.Field r0 = r0.getColumnField()
            java.lang.reflect.Type r0 = r0.getGenericType()
            java.lang.reflect.ParameterizedType r0 = (java.lang.reflect.ParameterizedType) r0
            java.lang.reflect.Type[] r0 = r0.getActualTypeArguments()
            r1 = 0
            r0 = r0[r1]
            java.lang.Class r0 = (java.lang.Class) r0
            r5 = r0
        L31:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.p086db.table.ColumnUtils.getFinderTargetEntityType(com.lidroid.xutils.db.table.Finder):java.lang.Class");
    }

    public static String getForeignColumnNameByField(Field field) {
        Foreign annotation = field.getAnnotation(Foreign.class);
        return annotation != null ? annotation.foreign() : field.getName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r0.equals(java.util.List.class) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Class<?> getForeignEntityType(com.lidroid.xutils.p086db.table.Foreign r3) {
        /*
            r0 = r3
            java.lang.reflect.Field r0 = r0.getColumnField()
            java.lang.Class r0 = r0.getType()
            r4 = r0
            r0 = r4
            java.lang.Class<com.lidroid.xutils.db.sqlite.ForeignLazyLoader> r1 = com.lidroid.xutils.p086db.sqlite.ForeignLazyLoader.class
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1c
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.Class<java.util.List> r1 = java.util.List.class
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L31
        L1c:
            r0 = r3
            java.lang.reflect.Field r0 = r0.getColumnField()
            java.lang.reflect.Type r0 = r0.getGenericType()
            java.lang.reflect.ParameterizedType r0 = (java.lang.reflect.ParameterizedType) r0
            java.lang.reflect.Type[] r0 = r0.getActualTypeArguments()
            r1 = 0
            r0 = r0[r1]
            java.lang.Class r0 = (java.lang.Class) r0
            r5 = r0
        L31:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.p086db.table.ColumnUtils.getForeignEntityType(com.lidroid.xutils.db.table.Foreign):java.lang.Class");
    }

    public static boolean isDbPrimitiveType(Class<?> cls) {
        return DB_PRIMITIVE_TYPES.contains(cls.getName());
    }

    public static boolean isFinder(Field field) {
        return field.getAnnotation(Finder.class) != null;
    }

    public static boolean isForeign(Field field) {
        return field.getAnnotation(Foreign.class) != null;
    }

    public static boolean isNotNull(Field field) {
        return field.getAnnotation(NotNull.class) != null;
    }

    private static boolean isStartWithIs(String str) {
        return str != null && str.startsWith("is");
    }

    public static boolean isTransient(Field field) {
        return field.getAnnotation(Transient.class) != null;
    }

    public static boolean isUnique(Field field) {
        return field.getAnnotation(Unique.class) != null;
    }
}
