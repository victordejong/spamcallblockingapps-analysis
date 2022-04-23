package com.lidroid.xutils.p086db.table;

import android.database.Cursor;
import com.lidroid.xutils.p086db.converter.ColumnConverter;
import com.lidroid.xutils.p086db.converter.ColumnConverterFactory;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: com.lidroid.xutils.db.table.Column */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/table/Column.class */
public class Column {
    protected final ColumnConverter columnConverter;
    protected final Field columnField;
    protected final String columnName;
    private final Object defaultValue;
    protected final Method getMethod;
    private int index = -1;
    protected final Method setMethod;
    private Table table;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Column(Class<?> cls, Field field) {
        this.columnField = field;
        ColumnConverter columnConverter = ColumnConverterFactory.getColumnConverter(field.getType());
        this.columnConverter = columnConverter;
        this.columnName = ColumnUtils.getColumnNameByField(field);
        this.defaultValue = columnConverter != null ? columnConverter.getFieldValue(ColumnUtils.getColumnDefaultValue(field)) : null;
        this.getMethod = ColumnUtils.getColumnGetMethod(cls, field);
        this.setMethod = ColumnUtils.getColumnSetMethod(cls, field);
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

    public String getColumnName() {
        return this.columnName;
    }

    public Object getColumnValue(Object obj) {
        return this.columnConverter.fieldValue2ColumnValue(getFieldValue(obj));
    }

    public Object getDefaultValue() {
        return this.defaultValue;
    }

    public Object getFieldValue(Object obj) {
        Object obj2;
        if (obj != null) {
            Method method = this.getMethod;
            try {
                if (method != null) {
                    obj2 = method.invoke(obj, new Object[0]);
                } else {
                    this.columnField.setAccessible(true);
                    obj2 = this.columnField.get(obj);
                }
            } catch (Throwable th) {
                LogUtils.m2008e(th.getMessage(), th);
            }
            return obj2;
        }
        obj2 = null;
        return obj2;
    }

    public int getIndex() {
        return this.index;
    }

    public Table getTable() {
        return this.table;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTable(Table table) {
        this.table = table;
    }

    public void setValue2Entity(Object obj, Cursor cursor, int i) {
        this.index = i;
        Object fieldValue = this.columnConverter.getFieldValue(cursor, i);
        if (fieldValue != null || this.defaultValue != null) {
            Method method = this.setMethod;
            try {
                if (method != null) {
                    Object obj2 = fieldValue;
                    if (fieldValue == null) {
                        obj2 = this.defaultValue;
                    }
                    method.invoke(obj, obj2);
                    return;
                }
                this.columnField.setAccessible(true);
                Field field = this.columnField;
                Object obj3 = fieldValue;
                if (fieldValue == null) {
                    obj3 = this.defaultValue;
                }
                field.set(obj, obj3);
            } catch (Throwable th) {
                LogUtils.m2008e(th.getMessage(), th);
            }
        }
    }
}
