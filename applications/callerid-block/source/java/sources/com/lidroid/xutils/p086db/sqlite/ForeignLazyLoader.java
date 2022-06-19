package com.lidroid.xutils.p086db.sqlite;

import com.lidroid.xutils.p086db.table.ColumnUtils;
import com.lidroid.xutils.p086db.table.Foreign;
import com.lidroid.xutils.p086db.table.Table;
import java.util.List;
/* renamed from: com.lidroid.xutils.db.sqlite.ForeignLazyLoader */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/ForeignLazyLoader.class */
public class ForeignLazyLoader<T> {
    private Object columnValue;
    private final Foreign foreignColumn;

    public ForeignLazyLoader(Foreign foreign, Object obj) {
        this.foreignColumn = foreign;
        this.columnValue = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
    }

    public List<T> getAllFromDb() {
        Table table = this.foreignColumn.getTable();
        return table != null ? table.f11339db.findAll(Selector.from(this.foreignColumn.getForeignEntityType()).where(this.foreignColumn.getForeignColumnName(), "=", this.columnValue)) : null;
    }

    public Object getColumnValue() {
        return this.columnValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T getFirstFromDb() {
        Table table = this.foreignColumn.getTable();
        return table != null ? table.f11339db.findFirst(Selector.from(this.foreignColumn.getForeignEntityType()).where(this.foreignColumn.getForeignColumnName(), "=", this.columnValue)) : null;
    }

    public void setColumnValue(Object obj) {
        this.columnValue = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
    }
}
