package com.lidroid.xutils.p086db.table;

import android.text.TextUtils;
import com.callerid.block.bean.EZBlackList;
import com.lidroid.xutils.db.annotation.Id;
import com.lidroid.xutils.db.annotation.Table;
import com.lidroid.xutils.p086db.converter.ColumnConverterFactory;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.lidroid.xutils.db.table.TableUtils */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/table/TableUtils.class */
public class TableUtils {
    private static ConcurrentHashMap<String, HashMap<String, Column>> entityColumnsMap = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C2728Id> entityIdMap = new ConcurrentHashMap<>();

    private TableUtils() {
    }

    private static void addColumns2Map(Class<?> cls, String str, HashMap<String, Column> hashMap) {
        Field[] declaredFields;
        Column finder;
        String columnName;
        if (Object.class.equals(cls)) {
            return;
        }
        try {
            for (Field field : cls.getDeclaredFields()) {
                if (!ColumnUtils.isTransient(field) && !Modifier.isStatic(field.getModifiers())) {
                    if (ColumnConverterFactory.isSupportColumnConverter(field.getType())) {
                        if (!field.getName().equals(str)) {
                            finder = new Column(cls, field);
                            if (!hashMap.containsKey(finder.getColumnName())) {
                                columnName = finder.getColumnName();
                                hashMap.put(columnName, finder);
                            }
                        }
                    } else if (ColumnUtils.isForeign(field)) {
                        finder = new Foreign(cls, field);
                        if (!hashMap.containsKey(finder.getColumnName())) {
                            columnName = finder.getColumnName();
                            hashMap.put(columnName, finder);
                        }
                    } else if (ColumnUtils.isFinder(field)) {
                        finder = new Finder(cls, field);
                        if (!hashMap.containsKey(finder.getColumnName())) {
                            columnName = finder.getColumnName();
                            hashMap.put(columnName, finder);
                        }
                    }
                }
            }
            if (Object.class.equals(cls.getSuperclass())) {
                return;
            }
            addColumns2Map(cls.getSuperclass(), str, hashMap);
        } catch (Throwable th) {
            LogUtils.m2008e(th.getMessage(), th);
        }
    }

    public static HashMap<String, Column> getColumnMap(Class<?> cls) {
        synchronized (TableUtils.class) {
            try {
                if (entityColumnsMap.containsKey(cls.getName())) {
                    return entityColumnsMap.get(cls.getName());
                }
                HashMap<String, Column> hashMap = new HashMap<>();
                addColumns2Map(cls, getPrimaryKeyFieldName(cls), hashMap);
                entityColumnsMap.put(cls.getName(), hashMap);
                return hashMap;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Column getColumnOrId(Class<?> cls, String str) {
        return getPrimaryKeyColumnName(cls).equals(str) ? getId(cls) : getColumnMap(cls).get(str);
    }

    public static String getExecAfterTableCreated(Class<?> cls) {
        Table annotation = cls.getAnnotation(Table.class);
        if (annotation != null) {
            return annotation.execAfterTableCreated();
        }
        return null;
    }

    public static C2728Id getId(Class<?> cls) {
        Field field;
        synchronized (TableUtils.class) {
            try {
                if (Object.class.equals(cls)) {
                    throw new RuntimeException("field 'id' not found");
                }
                if (entityIdMap.containsKey(cls.getName())) {
                    return entityIdMap.get(cls.getName());
                }
                Field field2 = null;
                Field[] declaredFields = cls.getDeclaredFields();
                if (declaredFields != null) {
                    int length = declaredFields.length;
                    int i = 0;
                    while (true) {
                        field = null;
                        if (i >= length) {
                            break;
                        }
                        field = declaredFields[i];
                        if (field.getAnnotation(Id.class) != null) {
                            break;
                        }
                        i++;
                    }
                    field2 = field;
                    if (field == null) {
                        int length2 = declaredFields.length;
                        int i2 = 0;
                        while (true) {
                            field2 = field;
                            if (i2 >= length2) {
                                break;
                            }
                            field2 = declaredFields[i2];
                            if ("id".equals(field2.getName()) || EZBlackList.f4115ID.equals(field2.getName())) {
                                break;
                            }
                            i2++;
                        }
                    }
                }
                if (field2 == null) {
                    return getId(cls.getSuperclass());
                }
                C2728Id c2728Id = new C2728Id(cls, field2);
                entityIdMap.put(cls.getName(), c2728Id);
                return c2728Id;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String getPrimaryKeyColumnName(Class<?> cls) {
        C2728Id id = getId(cls);
        return id == null ? null : id.getColumnName();
    }

    private static String getPrimaryKeyFieldName(Class<?> cls) {
        C2728Id id = getId(cls);
        return id == null ? null : id.getColumnField().getName();
    }

    public static String getTableName(Class<?> cls) {
        Table annotation = cls.getAnnotation(Table.class);
        return (annotation == null || TextUtils.isEmpty(annotation.name())) ? cls.getName().replace('.', '_') : annotation.name();
    }
}
