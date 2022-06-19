package org.xutils.p343db.table;

import android.database.Cursor;
import java.util.HashMap;
import org.xutils.DbManager;
import org.xutils.common.util.IOUtil;
import org.xutils.p344ex.DbException;
/* renamed from: org.xutils.db.table.DbBase */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/table/DbBase.class */
public abstract class DbBase implements DbManager {

    /* renamed from: d */
    private final HashMap<Class<?>, TableEntity<?>> f40645d = new HashMap<>();

    @Override // org.xutils.DbManager
    public void addColumn(Class<?> cls, String str) {
        TableEntity table = getTable(cls);
        ColumnEntity columnEntity = table.getColumnMap().get(str);
        if (columnEntity == null) {
            throw new DbException("the column(" + str + ") is not defined in table: " + table.getName());
        } else if (!table.tableIsExists()) {
        } else {
            execNonQuery("ALTER TABLE \"" + table.getName() + "\" ADD COLUMN \"" + columnEntity.getName() + "\" " + columnEntity.getColumnDbType() + " " + columnEntity.getProperty());
        }
    }

    @Override // org.xutils.DbManager
    public void dropDb() {
        Cursor execQuery = execQuery("SELECT name FROM sqlite_master WHERE type='table' AND name<>'sqlite_sequence'");
        if (execQuery != null) {
            while (execQuery.moveToNext()) {
                try {
                    String string = execQuery.getString(0);
                    execNonQuery("DROP TABLE " + string);
                } catch (Throwable th) {
                    try {
                        throw new DbException(th);
                    } finally {
                        IOUtil.closeQuietly(execQuery);
                    }
                }
            }
            synchronized (this.f40645d) {
                for (TableEntity<?> tableEntity : this.f40645d.values()) {
                    tableEntity.m221a(false);
                }
                this.f40645d.clear();
            }
        }
    }

    @Override // org.xutils.DbManager
    public void dropTable(Class<?> cls) {
        TableEntity table = getTable(cls);
        if (!table.tableIsExists()) {
            return;
        }
        execNonQuery("DROP TABLE \"" + table.getName() + "\"");
        table.m221a(false);
        removeTable(cls);
    }

    @Override // org.xutils.DbManager
    public <T> TableEntity<T> getTable(Class<T> cls) {
        TableEntity<?> tableEntity;
        synchronized (this.f40645d) {
            TableEntity<?> tableEntity2 = this.f40645d.get(cls);
            tableEntity = tableEntity2;
            if (tableEntity2 == null) {
                try {
                    tableEntity = new TableEntity<>(this, cls);
                    this.f40645d.put(cls, tableEntity);
                } catch (DbException e) {
                    throw e;
                } catch (Throwable th) {
                    throw new DbException(th);
                }
            }
        }
        return (TableEntity<T>) tableEntity;
    }

    protected void removeTable(Class<?> cls) {
        synchronized (this.f40645d) {
            this.f40645d.remove(cls);
        }
    }
}
