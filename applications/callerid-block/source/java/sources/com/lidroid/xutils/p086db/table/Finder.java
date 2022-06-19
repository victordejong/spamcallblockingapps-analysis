package com.lidroid.xutils.p086db.table;

import android.database.Cursor;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
import com.lidroid.xutils.p086db.sqlite.FinderLazyLoader;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: com.lidroid.xutils.db.table.Finder */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/table/Finder.class */
public class Finder extends Column {
    private final String targetColumnName;
    private final String valueColumnName;

    public Finder(Class<?> cls, Field field) {
        super(cls, field);
        com.lidroid.xutils.db.annotation.Finder annotation = field.getAnnotation(com.lidroid.xutils.db.annotation.Finder.class);
        this.valueColumnName = annotation.valueColumn();
        this.targetColumnName = annotation.targetColumn();
    }

    @Override // com.lidroid.xutils.p086db.table.Column
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.TEXT;
    }

    @Override // com.lidroid.xutils.p086db.table.Column
    public Object getColumnValue(Object obj) {
        return null;
    }

    @Override // com.lidroid.xutils.p086db.table.Column
    public Object getDefaultValue() {
        return null;
    }

    public String getTargetColumnName() {
        return this.targetColumnName;
    }

    public Class<?> getTargetEntityType() {
        return ColumnUtils.getFinderTargetEntityType(this);
    }

    @Override // com.lidroid.xutils.p086db.table.Column
    public void setValue2Entity(Object obj, Cursor cursor, int i) {
        FinderLazyLoader finderLazyLoader;
        Class<?> type = this.columnField.getType();
        Object columnValue = TableUtils.getColumnOrId(obj.getClass(), this.valueColumnName).getColumnValue(obj);
        if (type.equals(FinderLazyLoader.class)) {
            finderLazyLoader = new FinderLazyLoader(this, columnValue);
        } else {
            try {
                finderLazyLoader = type.equals(List.class) ? new FinderLazyLoader(this, columnValue).getAllFromDb() : new FinderLazyLoader(this, columnValue).getFirstFromDb();
            } catch (DbException e) {
                LogUtils.m2008e(e.getMessage(), e);
                finderLazyLoader = null;
            }
        }
        Method method = this.setMethod;
        try {
            if (method != null) {
                method.invoke(obj, finderLazyLoader);
            } else {
                this.columnField.setAccessible(true);
                this.columnField.set(obj, finderLazyLoader);
            }
        } catch (Throwable th) {
            LogUtils.m2008e(th.getMessage(), th);
        }
    }
}
