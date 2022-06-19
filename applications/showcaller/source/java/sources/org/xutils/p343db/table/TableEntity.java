package org.xutils.p343db.table;

import android.database.Cursor;
import android.text.TextUtils;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;
import org.xutils.DbManager;
import org.xutils.p343db.annotation.Table;
import org.xutils.p343db.sqlite.SqlInfoBuilder;
import org.xutils.p344ex.DbException;
/* renamed from: org.xutils.db.table.TableEntity */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/table/TableEntity.class */
public final class TableEntity<T> {

    /* renamed from: a */
    private final DbManager f40647a;

    /* renamed from: b */
    private final String f40648b;

    /* renamed from: c */
    private final String f40649c;

    /* renamed from: d */
    private final Class<T> f40650d;

    /* renamed from: e */
    private final Constructor<T> f40651e;

    /* renamed from: f */
    private ColumnEntity f40652f;

    /* renamed from: g */
    private volatile Boolean f40653g;

    /* renamed from: h */
    private final LinkedHashMap<String, ColumnEntity> f40654h;

    public TableEntity(DbManager dbManager, Class<T> cls) {
        this.f40647a = dbManager;
        this.f40650d = cls;
        Table table = (Table) cls.getAnnotation(Table.class);
        if (table == null) {
            throw new DbException("missing @Table on " + cls.getName());
        }
        this.f40648b = table.name();
        this.f40649c = table.onCreated();
        try {
            Constructor<T> constructor = cls.getConstructor(new Class[0]);
            this.f40651e = constructor;
            constructor.setAccessible(true);
            LinkedHashMap<String, ColumnEntity> m219b = C9643a.m219b(cls);
            this.f40654h = m219b;
            for (ColumnEntity columnEntity : m219b.values()) {
                if (columnEntity.isId()) {
                    this.f40652f = columnEntity;
                    return;
                }
            }
        } catch (Throwable th) {
            throw new DbException("missing no-argument constructor for the table: " + this.f40648b);
        }
    }

    /* renamed from: a */
    public void m221a(boolean z) {
        this.f40653g = Boolean.valueOf(z);
    }

    public T createEntity() {
        return this.f40651e.newInstance(new Object[0]);
    }

    public void createTableIfNotExists() {
        if (this.f40653g == null || !this.f40653g.booleanValue()) {
            synchronized (this.f40650d) {
                if (!tableIsExists(true)) {
                    this.f40647a.execNonQuery(SqlInfoBuilder.buildCreateTableSqlInfo(this));
                    this.f40653g = Boolean.TRUE;
                    if (!TextUtils.isEmpty(this.f40649c)) {
                        this.f40647a.execNonQuery(this.f40649c);
                    }
                    DbManager.TableCreateListener tableCreateListener = this.f40647a.getDaoConfig().getTableCreateListener();
                    if (tableCreateListener != null) {
                        tableCreateListener.onTableCreated(this.f40647a, this);
                    }
                }
            }
        }
    }

    public LinkedHashMap<String, ColumnEntity> getColumnMap() {
        return this.f40654h;
    }

    public DbManager getDb() {
        return this.f40647a;
    }

    public Class<T> getEntityType() {
        return this.f40650d;
    }

    public ColumnEntity getId() {
        return this.f40652f;
    }

    public String getName() {
        return this.f40648b;
    }

    public String getOnCreated() {
        return this.f40649c;
    }

    public boolean tableIsExists() {
        return tableIsExists(false);
    }

    public boolean tableIsExists(boolean z) {
        if (this.f40653g == null || (!this.f40653g.booleanValue() && z)) {
            DbManager dbManager = this.f40647a;
            Cursor execQuery = dbManager.execQuery("SELECT COUNT(*) AS c FROM sqlite_master WHERE type='table' AND name='" + this.f40648b + "'");
            if (execQuery != null) {
                try {
                    if (execQuery.moveToNext() && execQuery.getInt(0) > 0) {
                        this.f40653g = Boolean.TRUE;
                        return this.f40653g.booleanValue();
                    }
                } finally {
                    try {
                        throw new DbException(th);
                    } finally {
                    }
                }
            }
            this.f40653g = Boolean.FALSE;
            return this.f40653g.booleanValue();
        }
        return this.f40653g.booleanValue();
    }

    public String toString() {
        return this.f40648b;
    }
}
