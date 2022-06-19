package org.xutils.p343db.table;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.LinkedHashMap;
import org.xutils.common.util.LogUtil;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.converter.ColumnConverterFactory;
/* renamed from: org.xutils.db.table.a */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/table/a.class */
public final class C9643a {
    /* renamed from: a */
    private static void m220a(Class<?> cls, HashMap<String, ColumnEntity> hashMap) {
        Field[] declaredFields;
        Column column;
        if (Object.class.equals(cls)) {
            return;
        }
        try {
            for (Field field : cls.getDeclaredFields()) {
                int modifiers = field.getModifiers();
                if (!Modifier.isStatic(modifiers) && !Modifier.isTransient(modifiers) && (column = (Column) field.getAnnotation(Column.class)) != null && ColumnConverterFactory.isSupportColumnConverter(field.getType())) {
                    ColumnEntity columnEntity = new ColumnEntity(cls, field, column);
                    if (!hashMap.containsKey(columnEntity.getName())) {
                        hashMap.put(columnEntity.getName(), columnEntity);
                    }
                }
            }
            m220a(cls.getSuperclass(), hashMap);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    /* renamed from: b */
    public static LinkedHashMap<String, ColumnEntity> m219b(Class<?> cls) {
        LinkedHashMap<String, ColumnEntity> linkedHashMap = new LinkedHashMap<>();
        m220a(cls, linkedHashMap);
        return linkedHashMap;
    }
}
