package org.xutils.p343db;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.os.Build;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.KeyValue;
import org.xutils.common.util.LogUtil;
import org.xutils.p343db.sqlite.SqlInfo;
import org.xutils.p343db.sqlite.SqlInfoBuilder;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p343db.table.ColumnEntity;
import org.xutils.p343db.table.DbBase;
import org.xutils.p343db.table.DbModel;
import org.xutils.p343db.table.TableEntity;
import org.xutils.p344ex.DbException;
/* renamed from: org.xutils.db.DbManagerImpl */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/DbManagerImpl.class */
public final class DbManagerImpl extends DbBase {

    /* renamed from: e */
    private static final HashMap<DbManager.DaoConfig, DbManagerImpl> f40616e = new HashMap<>();

    /* renamed from: f */
    private SQLiteDatabase f40617f;

    /* renamed from: g */
    private DbManager.DaoConfig f40618g;

    /* renamed from: h */
    private boolean f40619h;

    private DbManagerImpl(DbManager.DaoConfig daoConfig) {
        if (daoConfig != null) {
            this.f40618g = daoConfig;
            this.f40619h = daoConfig.isAllowTransaction();
            try {
                this.f40617f = m242e(daoConfig);
                DbManager.DbOpenListener dbOpenListener = daoConfig.getDbOpenListener();
                if (dbOpenListener == null) {
                    return;
                }
                dbOpenListener.onDbOpened(this);
                return;
            } catch (DbException e) {
                IOUtil.closeQuietly(this.f40617f);
                throw e;
            } catch (Throwable th) {
                IOUtil.closeQuietly(this.f40617f);
                throw new DbException(th.getMessage(), th);
            }
        }
        throw new IllegalArgumentException("daoConfig may not be null");
    }

    /* renamed from: G */
    private void m245G() {
        if (this.f40619h) {
            this.f40617f.setTransactionSuccessful();
        }
    }

    /* renamed from: O */
    private void m244O() {
        if (this.f40619h) {
            this.f40617f.endTransaction();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: a */
    private long m243a(String str) {
        Cursor execQuery = execQuery("SELECT seq FROM sqlite_sequence WHERE name='" + str + "' LIMIT 1");
        char c = (char) 65535;
        char c2 = (char) 65535;
        if (execQuery != null) {
            try {
                if (execQuery.moveToNext()) {
                    c = execQuery.getLong(0);
                }
                IOUtil.closeQuietly(execQuery);
                c2 = c;
            } finally {
                try {
                    throw new DbException(th);
                } catch (Throwable th) {
                }
            }
        }
        return c2;
    }

    /* renamed from: e */
    private SQLiteDatabase m242e(DbManager.DaoConfig daoConfig) {
        File dbDir = daoConfig.getDbDir();
        return (dbDir == null || (!dbDir.exists() && !dbDir.mkdirs())) ? C9682x.app().openOrCreateDatabase(daoConfig.getDbName(), 0, null) : SQLiteDatabase.openOrCreateDatabase(new File(dbDir, daoConfig.getDbName()), (SQLiteDatabase.CursorFactory) null);
    }

    /* renamed from: f */
    private boolean m241f(TableEntity<?> tableEntity, Object obj) {
        ColumnEntity id = tableEntity.getId();
        if (!id.isAutoId()) {
            execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(tableEntity, obj));
            return true;
        }
        execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(tableEntity, obj));
        long m243a = m243a(tableEntity.getName());
        if (m243a == -1) {
            return false;
        }
        id.setAutoIdValue(obj, m243a);
        return true;
    }

    /* renamed from: g */
    private void m240g(TableEntity<?> tableEntity, Object obj) {
        ColumnEntity id = tableEntity.getId();
        if (!id.isAutoId()) {
            execNonQuery(SqlInfoBuilder.buildReplaceSqlInfo(tableEntity, obj));
        } else if (id.getColumnValue(obj) != null) {
            execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(tableEntity, obj, new String[0]));
        } else {
            m241f(tableEntity, obj);
        }
    }

    public static DbManager getInstance(DbManager.DaoConfig daoConfig) {
        DbManagerImpl dbManagerImpl;
        synchronized (DbManagerImpl.class) {
            DbManager.DaoConfig daoConfig2 = daoConfig;
            if (daoConfig == null) {
                try {
                    daoConfig2 = new DbManager.DaoConfig();
                } catch (Throwable th) {
                    throw th;
                }
            }
            HashMap<DbManager.DaoConfig, DbManagerImpl> hashMap = f40616e;
            dbManagerImpl = hashMap.get(daoConfig2);
            if (dbManagerImpl == null) {
                dbManagerImpl = new DbManagerImpl(daoConfig2);
                hashMap.put(daoConfig2, dbManagerImpl);
            } else {
                dbManagerImpl.f40618g = daoConfig2;
            }
            SQLiteDatabase sQLiteDatabase = dbManagerImpl.f40617f;
            int version = sQLiteDatabase.getVersion();
            int dbVersion = daoConfig2.getDbVersion();
            if (version != dbVersion) {
                if (version != 0) {
                    DbManager.DbUpgradeListener dbUpgradeListener = daoConfig2.getDbUpgradeListener();
                    if (dbUpgradeListener != null) {
                        dbUpgradeListener.onUpgrade(dbManagerImpl, version, dbVersion);
                    } else {
                        dbManagerImpl.dropDb();
                    }
                }
                sQLiteDatabase.setVersion(dbVersion);
            }
        }
        return dbManagerImpl;
    }

    /* renamed from: h */
    private void m239h() {
        if (this.f40619h) {
            if (Build.VERSION.SDK_INT < 16 || !this.f40617f.isWriteAheadLoggingEnabled()) {
                this.f40617f.beginTransaction();
            } else {
                this.f40617f.beginTransactionNonExclusive();
            }
        }
    }

    @Override // org.xutils.DbManager, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        HashMap<DbManager.DaoConfig, DbManagerImpl> hashMap = f40616e;
        if (hashMap.containsKey(this.f40618g)) {
            hashMap.remove(this.f40618g);
            this.f40617f.close();
        }
    }

    @Override // org.xutils.DbManager
    public int delete(Class<?> cls, WhereBuilder whereBuilder) {
        TableEntity table = getTable(cls);
        if (!table.tableIsExists()) {
            return 0;
        }
        try {
            m239h();
            int executeUpdateDelete = executeUpdateDelete(SqlInfoBuilder.buildDeleteSqlInfo((TableEntity<?>) table, whereBuilder));
            m245G();
            return executeUpdateDelete;
        } finally {
            m244O();
        }
    }

    @Override // org.xutils.DbManager
    public void delete(Class<?> cls) {
        delete(cls, null);
    }

    @Override // org.xutils.DbManager
    public void delete(Object obj) {
        try {
            m239h();
            if (obj instanceof List) {
                List<Object> list = (List) obj;
                if (list.isEmpty()) {
                    return;
                }
                TableEntity table = getTable(list.get(0).getClass());
                if (!table.tableIsExists()) {
                    return;
                }
                for (Object obj2 : list) {
                    execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(table, obj2));
                }
            } else {
                TableEntity table2 = getTable(obj.getClass());
                if (!table2.tableIsExists()) {
                    return;
                }
                execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(table2, obj));
            }
            m245G();
        } finally {
            m244O();
        }
    }

    @Override // org.xutils.DbManager
    public void deleteById(Class<?> cls, Object obj) {
        TableEntity table = getTable(cls);
        if (!table.tableIsExists()) {
            return;
        }
        try {
            m239h();
            execNonQuery(SqlInfoBuilder.buildDeleteSqlInfoById(table, obj));
            m245G();
        } finally {
            m244O();
        }
    }

    @Override // org.xutils.DbManager
    public void execNonQuery(String str) {
        try {
            this.f40617f.execSQL(str);
        } catch (Throwable th) {
            throw new DbException(th);
        }
    }

    @Override // org.xutils.DbManager
    public void execNonQuery(SqlInfo sqlInfo) {
        SQLiteStatement sQLiteStatement = null;
        try {
            SQLiteStatement buildStatement = sqlInfo.buildStatement(this.f40617f);
            sQLiteStatement = buildStatement;
            buildStatement.execute();
            try {
                buildStatement.releaseReference();
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
        } catch (Throwable th2) {
            try {
                throw new DbException(th2);
            } catch (Throwable th3) {
                if (sQLiteStatement != null) {
                    try {
                        sQLiteStatement.releaseReference();
                    } catch (Throwable th4) {
                        LogUtil.m258e(th4.getMessage(), th4);
                    }
                }
                throw th3;
            }
        }
    }

    @Override // org.xutils.DbManager
    public Cursor execQuery(String str) {
        try {
            return this.f40617f.rawQuery(str, null);
        } catch (Throwable th) {
            throw new DbException(th);
        }
    }

    @Override // org.xutils.DbManager
    public Cursor execQuery(SqlInfo sqlInfo) {
        try {
            return this.f40617f.rawQuery(sqlInfo.getSql(), sqlInfo.getBindArgsAsStrArray());
        } catch (Throwable th) {
            throw new DbException(th);
        }
    }

    @Override // org.xutils.DbManager
    public int executeUpdateDelete(String str) {
        SQLiteStatement sQLiteStatement = null;
        try {
            SQLiteStatement compileStatement = this.f40617f.compileStatement(str);
            sQLiteStatement = compileStatement;
            int executeUpdateDelete = compileStatement.executeUpdateDelete();
            try {
                compileStatement.releaseReference();
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
            return executeUpdateDelete;
        } catch (Throwable th2) {
            try {
                throw new DbException(th2);
            } catch (Throwable th3) {
                if (sQLiteStatement != null) {
                    try {
                        sQLiteStatement.releaseReference();
                    } catch (Throwable th4) {
                        LogUtil.m258e(th4.getMessage(), th4);
                    }
                }
                throw th3;
            }
        }
    }

    @Override // org.xutils.DbManager
    public int executeUpdateDelete(SqlInfo sqlInfo) {
        SQLiteStatement sQLiteStatement = null;
        try {
            SQLiteStatement buildStatement = sqlInfo.buildStatement(this.f40617f);
            sQLiteStatement = buildStatement;
            int executeUpdateDelete = buildStatement.executeUpdateDelete();
            try {
                buildStatement.releaseReference();
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
            return executeUpdateDelete;
        } catch (Throwable th2) {
            try {
                throw new DbException(th2);
            } catch (Throwable th3) {
                if (sQLiteStatement != null) {
                    try {
                        sQLiteStatement.releaseReference();
                    } catch (Throwable th4) {
                        LogUtil.m258e(th4.getMessage(), th4);
                    }
                }
                throw th3;
            }
        }
    }

    @Override // org.xutils.DbManager
    public <T> List<T> findAll(Class<T> cls) {
        return selector(cls).findAll();
    }

    @Override // org.xutils.DbManager
    public <T> T findById(Class<T> cls, Object obj) {
        Cursor execQuery;
        TableEntity<T> table = getTable(cls);
        if (table.tableIsExists() && (execQuery = execQuery(Selector.m236a(table).where(table.getId().getName(), "=", obj).limit(1).toString())) != null) {
            try {
                if (!execQuery.moveToNext()) {
                    return null;
                }
                return (T) C9641a.m232b(table, execQuery);
            } catch (Throwable th) {
                try {
                    throw new DbException(th);
                } finally {
                    IOUtil.closeQuietly(execQuery);
                }
            }
        }
        return null;
    }

    @Override // org.xutils.DbManager
    public List<DbModel> findDbModelAll(SqlInfo sqlInfo) {
        ArrayList arrayList = new ArrayList();
        Cursor execQuery = execQuery(sqlInfo);
        if (execQuery != null) {
            while (execQuery.moveToNext()) {
                try {
                    arrayList.add(C9641a.m233a(execQuery));
                } finally {
                    try {
                        throw new DbException(th);
                    } finally {
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // org.xutils.DbManager
    public DbModel findDbModelFirst(SqlInfo sqlInfo) {
        Cursor execQuery = execQuery(sqlInfo);
        if (execQuery != null) {
            try {
                if (!execQuery.moveToNext()) {
                    return null;
                }
                return C9641a.m233a(execQuery);
            } catch (Throwable th) {
                try {
                    throw new DbException(th);
                } finally {
                    IOUtil.closeQuietly(execQuery);
                }
            }
        }
        return null;
    }

    @Override // org.xutils.DbManager
    public <T> T findFirst(Class<T> cls) {
        return selector(cls).findFirst();
    }

    @Override // org.xutils.DbManager
    public DbManager.DaoConfig getDaoConfig() {
        return this.f40618g;
    }

    @Override // org.xutils.DbManager
    public SQLiteDatabase getDatabase() {
        return this.f40617f;
    }

    @Override // org.xutils.DbManager
    public void replace(Object obj) {
        try {
            m239h();
            if (obj instanceof List) {
                List<Object> list = (List) obj;
                if (list.isEmpty()) {
                    return;
                }
                TableEntity table = getTable(list.get(0).getClass());
                table.createTableIfNotExists();
                for (Object obj2 : list) {
                    execNonQuery(SqlInfoBuilder.buildReplaceSqlInfo(table, obj2));
                }
            } else {
                TableEntity table2 = getTable(obj.getClass());
                table2.createTableIfNotExists();
                execNonQuery(SqlInfoBuilder.buildReplaceSqlInfo(table2, obj));
            }
            m245G();
        } finally {
            m244O();
        }
    }

    @Override // org.xutils.DbManager
    public void save(Object obj) {
        try {
            m239h();
            if (obj instanceof List) {
                List<Object> list = (List) obj;
                if (list.isEmpty()) {
                    return;
                }
                TableEntity table = getTable(list.get(0).getClass());
                table.createTableIfNotExists();
                for (Object obj2 : list) {
                    execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(table, obj2));
                }
            } else {
                TableEntity table2 = getTable(obj.getClass());
                table2.createTableIfNotExists();
                execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(table2, obj));
            }
            m245G();
        } finally {
            m244O();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.xutils.DbManager
    public boolean saveBindingId(Object obj) {
        boolean z;
        try {
            m239h();
            if (obj instanceof List) {
                List list = (List) obj;
                if (!list.isEmpty()) {
                    TableEntity<?> table = getTable(list.get(0).getClass());
                    table.createTableIfNotExists();
                    Iterator it = list.iterator();
                    while (true) {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        } else if (!m241f(table, it.next())) {
                            throw new DbException("saveBindingId error, transaction will not commit!");
                        }
                    }
                } else {
                    m244O();
                    return false;
                }
            } else {
                TableEntity<?> table2 = getTable(obj.getClass());
                table2.createTableIfNotExists();
                z = m241f(table2, obj);
            }
            m245G();
            m244O();
            return z;
        } catch (Throwable th) {
            m244O();
            throw th;
        }
    }

    @Override // org.xutils.DbManager
    public void saveOrUpdate(Object obj) {
        try {
            m239h();
            if (obj instanceof List) {
                List<Object> list = (List) obj;
                if (list.isEmpty()) {
                    return;
                }
                TableEntity<?> table = getTable(list.get(0).getClass());
                table.createTableIfNotExists();
                for (Object obj2 : list) {
                    m240g(table, obj2);
                }
            } else {
                TableEntity<?> table2 = getTable(obj.getClass());
                table2.createTableIfNotExists();
                m240g(table2, obj);
            }
            m245G();
        } finally {
            m244O();
        }
    }

    @Override // org.xutils.DbManager
    public <T> Selector<T> selector(Class<T> cls) {
        return Selector.m236a(getTable(cls));
    }

    @Override // org.xutils.DbManager
    public int update(Class<?> cls, WhereBuilder whereBuilder, KeyValue... keyValueArr) {
        TableEntity table = getTable(cls);
        if (!table.tableIsExists()) {
            return 0;
        }
        try {
            m239h();
            int executeUpdateDelete = executeUpdateDelete(SqlInfoBuilder.buildUpdateSqlInfo(table, whereBuilder, keyValueArr));
            m245G();
            return executeUpdateDelete;
        } finally {
            m244O();
        }
    }

    @Override // org.xutils.DbManager
    public void update(Object obj, String... strArr) {
        try {
            m239h();
            if (obj instanceof List) {
                List<Object> list = (List) obj;
                if (list.isEmpty()) {
                    return;
                }
                TableEntity table = getTable(list.get(0).getClass());
                if (!table.tableIsExists()) {
                    return;
                }
                for (Object obj2 : list) {
                    execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(table, obj2, strArr));
                }
            } else {
                TableEntity table2 = getTable(obj.getClass());
                if (!table2.tableIsExists()) {
                    return;
                }
                execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(table2, obj, strArr));
            }
            m245G();
        } finally {
            m244O();
        }
    }
}
