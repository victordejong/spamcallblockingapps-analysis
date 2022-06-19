package org.xutils.p343db.table;

import android.database.Cursor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.xutils.common.util.LogUtil;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.converter.ColumnConverter;
import org.xutils.p343db.converter.ColumnConverterFactory;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.table.ColumnEntity */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/table/ColumnEntity.class */
public final class ColumnEntity {

    /* renamed from: a */
    private final String f40639a;

    /* renamed from: b */
    private final boolean f40640b;

    /* renamed from: c */
    private final boolean f40641c;
    protected final ColumnConverter columnConverter;
    protected final Field columnField;
    protected final Method getMethod;
    protected final String name;
    protected final Method setMethod;

    public ColumnEntity(Class<?> cls, Field field, Column column) {
        field.setAccessible(true);
        this.columnField = field;
        this.name = column.name();
        this.f40639a = column.property();
        boolean isId = column.isId();
        this.f40640b = isId;
        Class<?> type = field.getType();
        this.f40641c = isId && column.autoGen() && ColumnUtils.isAutoIdType(type);
        this.columnConverter = ColumnConverterFactory.getColumnConverter(type);
        Method m223c = ColumnUtils.m223c(cls, field);
        this.getMethod = m223c;
        if (m223c != null && !m223c.isAccessible()) {
            m223c.setAccessible(true);
        }
        Method m222d = ColumnUtils.m222d(cls, field);
        this.setMethod = m222d;
        if (m222d == null || m222d.isAccessible()) {
            return;
        }
        m222d.setAccessible(true);
    }

    public ColumnConverter getColumnConverter() {
        return this.columnConverter;
    }

    public ColumnDbType getColumnDbType() {
        return this.columnConverter.getColumnDbType();
    }

    public Field getColumnField() {
        return this.columnField;
    }

    public Object getColumnValue(Object obj) {
        Object fieldValue = getFieldValue(obj);
        if (!this.f40641c || (!fieldValue.equals(0L) && !fieldValue.equals(0))) {
            return this.columnConverter.fieldValue2DbValue(fieldValue);
        }
        return null;
    }

    public Object getFieldValue(Object obj) {
        Object obj2;
        if (obj != null) {
            Method method = this.getMethod;
            if (method != null) {
                try {
                    obj2 = method.invoke(obj, new Object[0]);
                } catch (Throwable th) {
                    LogUtil.m258e(th.getMessage(), th);
                }
            } else {
                try {
                    obj2 = this.columnField.get(obj);
                } catch (Throwable th2) {
                    LogUtil.m258e(th2.getMessage(), th2);
                }
            }
            return obj2;
        }
        obj2 = null;
        return obj2;
    }

    public String getName() {
        return this.name;
    }

    public String getProperty() {
        return this.f40639a;
    }

    public boolean isAutoId() {
        return this.f40641c;
    }

    public boolean isId() {
        return this.f40640b;
    }

    public void setAutoIdValue(Object obj, long j) {
        Object valueOf = Long.valueOf(j);
        if (ColumnUtils.isInteger(this.columnField.getType())) {
            valueOf = Integer.valueOf((int) j);
        }
        Method method = this.setMethod;
        if (method != null) {
            try {
                method.invoke(obj, valueOf);
                return;
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
                return;
            }
        }
        try {
            this.columnField.set(obj, valueOf);
        } catch (Throwable th2) {
            LogUtil.m258e(th2.getMessage(), th2);
        }
    }

    public void setValueFromCursor(Object obj, Cursor cursor, int i) {
        Object fieldValue = this.columnConverter.getFieldValue(cursor, i);
        if (fieldValue == null) {
            return;
        }
        Method method = this.setMethod;
        if (method != null) {
            try {
                method.invoke(obj, fieldValue);
                return;
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
                return;
            }
        }
        try {
            this.columnField.set(obj, fieldValue);
        } catch (Throwable th2) {
            LogUtil.m258e(th2.getMessage(), th2);
        }
    }

    public String toString() {
        return this.name;
    }
}
