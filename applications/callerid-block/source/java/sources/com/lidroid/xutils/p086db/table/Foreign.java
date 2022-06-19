package com.lidroid.xutils.p086db.table;

import android.database.Cursor;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p086db.converter.ColumnConverter;
import com.lidroid.xutils.p086db.converter.ColumnConverterFactory;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
import com.lidroid.xutils.p086db.sqlite.ForeignLazyLoader;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: com.lidroid.xutils.db.table.Foreign */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/table/Foreign.class */
public class Foreign extends Column {
    private final ColumnConverter foreignColumnConverter;
    private final String foreignColumnName;

    public Foreign(Class<?> cls, Field field) {
        super(cls, field);
        String foreignColumnNameByField = ColumnUtils.getForeignColumnNameByField(field);
        this.foreignColumnName = foreignColumnNameByField;
        this.foreignColumnConverter = ColumnConverterFactory.getColumnConverter(TableUtils.getColumnOrId(getForeignEntityType(), foreignColumnNameByField).columnField.getType());
    }

    @Override // com.lidroid.xutils.p086db.table.Column
    public ColumnDbType getColumnDbType() {
        return this.foreignColumnConverter.getColumnDbType();
    }

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x012c: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:62:0x0124 */
    @Override // com.lidroid.xutils.p086db.table.Column
    public Object getColumnValue(Object obj) {
        Object obj2;
        Object fieldValue = getFieldValue(obj);
        Object obj3 = null;
        if (fieldValue != null) {
            Class<?> type = this.columnField.getType();
            if (type.equals(ForeignLazyLoader.class)) {
                obj3 = ((ForeignLazyLoader) fieldValue).getColumnValue();
            } else {
                try {
                    if (type.equals(List.class)) {
                        List list = (List) fieldValue;
                        obj3 = null;
                        if (list.size() > 0) {
                            Column columnOrId = TableUtils.getColumnOrId(ColumnUtils.getForeignEntityType(this), this.foreignColumnName);
                            columnOrId.getColumnValue(list.get(0));
                            Table table = getTable();
                            if (table != null && (columnOrId instanceof C2728Id)) {
                                for (Object obj4 : list) {
                                    if (columnOrId.getColumnValue(obj4) == null) {
                                        table.f11339db.saveOrUpdate(obj4);
                                    }
                                }
                            }
                            obj3 = columnOrId.getColumnValue(list.get(0));
                        }
                    } else {
                        Column columnOrId2 = TableUtils.getColumnOrId(type, this.foreignColumnName);
                        Object columnValue = columnOrId2.getColumnValue(fieldValue);
                        Table table2 = getTable();
                        if (table2 != null && columnValue == null && (columnOrId2 instanceof C2728Id)) {
                            table2.f11339db.saveOrUpdate(fieldValue);
                        }
                        obj3 = columnOrId2.getColumnValue(fieldValue);
                    }
                } catch (Throwable th) {
                    LogUtils.m2008e(th.getMessage(), th);
                    obj3 = obj2;
                }
            }
        }
        return obj3;
    }

    @Override // com.lidroid.xutils.p086db.table.Column
    public Object getDefaultValue() {
        return null;
    }

    public String getForeignColumnName() {
        return this.foreignColumnName;
    }

    public Class<?> getForeignEntityType() {
        return ColumnUtils.getForeignEntityType(this);
    }

    @Override // com.lidroid.xutils.p086db.table.Column
    public void setValue2Entity(Object obj, Cursor cursor, int i) {
        Object fieldValue = this.foreignColumnConverter.getFieldValue(cursor, i);
        if (fieldValue == null) {
            return;
        }
        ForeignLazyLoader foreignLazyLoader = null;
        Class<?> type = this.columnField.getType();
        if (type.equals(ForeignLazyLoader.class)) {
            foreignLazyLoader = new ForeignLazyLoader(this, fieldValue);
        } else {
            try {
                foreignLazyLoader = type.equals(List.class) ? new ForeignLazyLoader(this, fieldValue).getAllFromDb() : new ForeignLazyLoader(this, fieldValue).getFirstFromDb();
            } catch (DbException e) {
                LogUtils.m2008e(e.getMessage(), e);
            }
        }
        Method method = this.setMethod;
        try {
            if (method != null) {
                method.invoke(obj, foreignLazyLoader);
            } else {
                this.columnField.setAccessible(true);
                this.columnField.set(obj, foreignLazyLoader);
            }
        } catch (Throwable th) {
            LogUtils.m2008e(th.getMessage(), th);
        }
    }
}
