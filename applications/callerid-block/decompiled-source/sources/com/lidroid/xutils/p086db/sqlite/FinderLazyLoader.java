package com.lidroid.xutils.p086db.sqlite;

import com.lidroid.xutils.p086db.table.ColumnUtils;
import com.lidroid.xutils.p086db.table.Finder;
import com.lidroid.xutils.p086db.table.Table;
import java.util.List;
/* renamed from: com.lidroid.xutils.db.sqlite.FinderLazyLoader */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/FinderLazyLoader.class */
public class FinderLazyLoader<T> {
    private final Finder finderColumn;
    private final Object finderValue;

    public FinderLazyLoader(Finder finder, Object obj) {
        this.finderColumn = finder;
        this.finderValue = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
    }

    public List<T> getAllFromDb() {
        Table table = this.finderColumn.getTable();
        return table != null ? table.f11339db.findAll(Selector.from(this.finderColumn.getTargetEntityType()).where(this.finderColumn.getTargetColumnName(), "=", this.finderValue)) : null;
    }

    public T getFirstFromDb() {
        Table table = this.finderColumn.getTable();
        return table != null ? (T) table.f11339db.findFirst(Selector.from(this.finderColumn.getTargetEntityType()).where(this.finderColumn.getTargetColumnName(), "=", this.finderValue)) : null;
    }
}
