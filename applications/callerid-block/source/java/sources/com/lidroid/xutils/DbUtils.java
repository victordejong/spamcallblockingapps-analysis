package com.lidroid.xutils;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p086db.sqlite.CursorUtils;
import com.lidroid.xutils.p086db.sqlite.DbModelSelector;
import com.lidroid.xutils.p086db.sqlite.Selector;
import com.lidroid.xutils.p086db.sqlite.SqlInfo;
import com.lidroid.xutils.p086db.sqlite.SqlInfoBuilder;
import com.lidroid.xutils.p086db.sqlite.WhereBuilder;
import com.lidroid.xutils.p086db.table.C2728Id;
import com.lidroid.xutils.p086db.table.DbModel;
import com.lidroid.xutils.p086db.table.Table;
import com.lidroid.xutils.p086db.table.TableUtils;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/DbUtils.class */
public class DbUtils {
    private static HashMap<String, DbUtils> daoMap = new HashMap<>();
    private DaoConfig daoConfig;
    private SQLiteDatabase database;
    private boolean debug = false;
    private boolean allowTransaction = false;
    private Lock writeLock = new ReentrantLock();
    private volatile boolean writeLocked = false;
    private final FindTempCache findTempCache = new FindTempCache();

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/DbUtils$DaoConfig.class */
    public static class DaoConfig {
        private Context context;
        private String dbDir;
        private DbUpgradeListener dbUpgradeListener;
        private String dbName = "xUtils.db";
        private int dbVersion = 1;

        public DaoConfig(Context context) {
            this.context = context.getApplicationContext();
        }

        public Context getContext() {
            return this.context;
        }

        public String getDbDir() {
            return this.dbDir;
        }

        public String getDbName() {
            return this.dbName;
        }

        public DbUpgradeListener getDbUpgradeListener() {
            return this.dbUpgradeListener;
        }

        public int getDbVersion() {
            return this.dbVersion;
        }

        public void setDbDir(String str) {
            this.dbDir = str;
        }

        public void setDbName(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.dbName = str;
            }
        }

        public void setDbUpgradeListener(DbUpgradeListener dbUpgradeListener) {
            this.dbUpgradeListener = dbUpgradeListener;
        }

        public void setDbVersion(int i) {
            this.dbVersion = i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/DbUtils$DbUpgradeListener.class */
    public interface DbUpgradeListener {
        void onUpgrade(DbUtils dbUtils, int i, int i2);
    }

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/DbUtils$FindTempCache.class */
    public class FindTempCache {
        private final ConcurrentHashMap<String, Object> cache;
        private long seq;

        private FindTempCache() {
            DbUtils.this = r5;
            this.cache = new ConcurrentHashMap<>();
            this.seq = 0L;
        }

        public Object get(String str) {
            return this.cache.get(str);
        }

        public void put(String str, Object obj) {
            if (str == null || obj == null) {
                return;
            }
            this.cache.put(str, obj);
        }

        public void setSeq(long j) {
            if (this.seq != j) {
                this.cache.clear();
                this.seq = j;
            }
        }
    }

    private DbUtils(DaoConfig daoConfig) {
        if (daoConfig != null) {
            this.database = createDatabase(daoConfig);
            this.daoConfig = daoConfig;
            return;
        }
        throw new IllegalArgumentException("daoConfig may not be null");
    }

    private void beginTransaction() {
        if (this.allowTransaction) {
            this.database.beginTransaction();
            return;
        }
        this.writeLock.lock();
        this.writeLocked = true;
    }

    public static DbUtils create(Context context) {
        return getInstance(new DaoConfig(context));
    }

    public static DbUtils create(Context context, String str) {
        DaoConfig daoConfig = new DaoConfig(context);
        daoConfig.setDbName(str);
        return getInstance(daoConfig);
    }

    public static DbUtils create(Context context, String str, int i, DbUpgradeListener dbUpgradeListener) {
        DaoConfig daoConfig = new DaoConfig(context);
        daoConfig.setDbName(str);
        daoConfig.setDbVersion(i);
        daoConfig.setDbUpgradeListener(dbUpgradeListener);
        return getInstance(daoConfig);
    }

    public static DbUtils create(Context context, String str, String str2) {
        DaoConfig daoConfig = new DaoConfig(context);
        daoConfig.setDbDir(str);
        daoConfig.setDbName(str2);
        return getInstance(daoConfig);
    }

    public static DbUtils create(Context context, String str, String str2, int i, DbUpgradeListener dbUpgradeListener) {
        DaoConfig daoConfig = new DaoConfig(context);
        daoConfig.setDbDir(str);
        daoConfig.setDbName(str2);
        daoConfig.setDbVersion(i);
        daoConfig.setDbUpgradeListener(dbUpgradeListener);
        return getInstance(daoConfig);
    }

    public static DbUtils create(DaoConfig daoConfig) {
        return getInstance(daoConfig);
    }

    private SQLiteDatabase createDatabase(DaoConfig daoConfig) {
        String dbDir = daoConfig.getDbDir();
        SQLiteDatabase sQLiteDatabase = null;
        if (!TextUtils.isEmpty(dbDir)) {
            File file = new File(dbDir);
            if (file.exists() || file.mkdirs()) {
                sQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(new File(dbDir, daoConfig.getDbName()), (SQLiteDatabase.CursorFactory) null);
            }
        } else {
            sQLiteDatabase = daoConfig.getContext().openOrCreateDatabase(daoConfig.getDbName(), 0, null);
        }
        return sQLiteDatabase;
    }

    private void debugSql(String str) {
        if (this.debug) {
            LogUtils.m2011d(str);
        }
    }

    private void endTransaction() {
        if (this.allowTransaction) {
            this.database.endTransaction();
        }
        if (this.writeLocked) {
            this.writeLock.unlock();
            this.writeLocked = false;
        }
    }

    private static DbUtils getInstance(DaoConfig daoConfig) {
        DbUtils dbUtils;
        synchronized (DbUtils.class) {
            try {
                dbUtils = daoMap.get(daoConfig.getDbName());
                if (dbUtils == null) {
                    dbUtils = new DbUtils(daoConfig);
                    daoMap.put(daoConfig.getDbName(), dbUtils);
                } else {
                    dbUtils.daoConfig = daoConfig;
                }
                SQLiteDatabase sQLiteDatabase = dbUtils.database;
                int version = sQLiteDatabase.getVersion();
                int dbVersion = daoConfig.getDbVersion();
                if (version != dbVersion) {
                    if (version != 0) {
                        DbUpgradeListener dbUpgradeListener = daoConfig.getDbUpgradeListener();
                        if (dbUpgradeListener != null) {
                            dbUpgradeListener.onUpgrade(dbUtils, version, dbVersion);
                        } else {
                            try {
                                dbUtils.dropDb();
                            } catch (DbException e) {
                                LogUtils.m2008e(e.getMessage(), e);
                            }
                        }
                    }
                    sQLiteDatabase.setVersion(dbVersion);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dbUtils;
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    private long getLastAutoIncrementId(String str) {
        Cursor execQuery = execQuery("SELECT seq FROM sqlite_sequence WHERE name='" + str + "'");
        char c = (char) 65535;
        if (execQuery != null) {
            c = 65535;
            try {
                if (execQuery.moveToNext()) {
                    c = execQuery.getLong(0);
                }
            } finally {
                try {
                    throw new DbException(th);
                } finally {
                }
            }
        }
        return c;
    }

    private boolean saveBindingIdWithoutTransaction(Object obj) {
        Table table = Table.get(this, obj.getClass());
        C2728Id c2728Id = table.f11340id;
        if (!c2728Id.isAutoIncrement()) {
            execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(this, obj));
            return true;
        }
        execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(this, obj));
        long lastAutoIncrementId = getLastAutoIncrementId(table.tableName);
        if (lastAutoIncrementId == -1) {
            return false;
        }
        c2728Id.setAutoIncrementId(obj, lastAutoIncrementId);
        return true;
    }

    private void saveOrUpdateWithoutTransaction(Object obj) {
        SqlInfo sqlInfo;
        C2728Id c2728Id = Table.get(this, obj.getClass()).f11340id;
        if (!c2728Id.isAutoIncrement()) {
            sqlInfo = SqlInfoBuilder.buildReplaceSqlInfo(this, obj);
        } else if (c2728Id.getColumnValue(obj) == null) {
            saveBindingIdWithoutTransaction(obj);
            return;
        } else {
            sqlInfo = SqlInfoBuilder.buildUpdateSqlInfo(this, obj, new String[0]);
        }
        execNonQuery(sqlInfo);
    }

    private void setTransactionSuccessful() {
        if (this.allowTransaction) {
            this.database.setTransactionSuccessful();
        }
    }

    public void close() {
        String dbName = this.daoConfig.getDbName();
        if (daoMap.containsKey(dbName)) {
            daoMap.remove(dbName);
            this.database.close();
        }
    }

    public DbUtils configAllowTransaction(boolean z) {
        this.allowTransaction = z;
        return this;
    }

    public DbUtils configDebug(boolean z) {
        this.debug = z;
        return this;
    }

    public long count(Selector selector) {
        Class<?> entityType = selector.getEntityType();
        if (!tableIsExist(entityType)) {
            return 0L;
        }
        Table table = Table.get(this, entityType);
        return findDbModelFirst(selector.select("count(" + table.f11340id.getColumnName() + ") as count")).getLong("count");
    }

    public long count(Class<?> cls) {
        return count(Selector.from(cls));
    }

    public void createTableIfNotExist(Class<?> cls) {
        if (!tableIsExist(cls)) {
            execNonQuery(SqlInfoBuilder.buildCreateTableSqlInfo(this, cls));
            String execAfterTableCreated = TableUtils.getExecAfterTableCreated(cls);
            if (TextUtils.isEmpty(execAfterTableCreated)) {
                return;
            }
            execNonQuery(execAfterTableCreated);
        }
    }

    public void delete(Class<?> cls, WhereBuilder whereBuilder) {
        if (!tableIsExist(cls)) {
            return;
        }
        try {
            beginTransaction();
            execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(this, cls, whereBuilder));
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void delete(Object obj) {
        if (!tableIsExist(obj.getClass())) {
            return;
        }
        try {
            beginTransaction();
            execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(this, obj));
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void deleteAll(Class<?> cls) {
        delete(cls, null);
    }

    public void deleteAll(List<?> list) {
        if (list == null || list.size() == 0 || !tableIsExist(list.get(0).getClass())) {
            return;
        }
        try {
            beginTransaction();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(this, it.next()));
            }
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void deleteById(Class<?> cls, Object obj) {
        if (!tableIsExist(cls)) {
            return;
        }
        try {
            beginTransaction();
            execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(this, cls, obj));
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void dropDb() {
        Cursor execQuery = execQuery("SELECT name FROM sqlite_master WHERE type='table' AND name<>'sqlite_sequence'");
        if (execQuery != null) {
            while (execQuery.moveToNext()) {
                try {
                    String string = execQuery.getString(0);
                    execNonQuery("DROP TABLE " + string);
                    Table.remove(this, string);
                } catch (Throwable th) {
                    try {
                        throw new DbException(th);
                    } finally {
                        IOUtils.closeQuietly(execQuery);
                    }
                }
            }
        }
    }

    public void dropTable(Class<?> cls) {
        if (!tableIsExist(cls)) {
            return;
        }
        String tableName = TableUtils.getTableName(cls);
        execNonQuery("DROP TABLE " + tableName);
        Table.remove(this, cls);
    }

    public void execNonQuery(SqlInfo sqlInfo) {
        debugSql(sqlInfo.getSql());
        try {
            if (sqlInfo.getBindArgs() != null) {
                this.database.execSQL(sqlInfo.getSql(), sqlInfo.getBindArgsAsArray());
            } else {
                this.database.execSQL(sqlInfo.getSql());
            }
        } catch (Throwable th) {
            throw new DbException(th);
        }
    }

    public void execNonQuery(String str) {
        debugSql(str);
        try {
            this.database.execSQL(str);
        } catch (Throwable th) {
            throw new DbException(th);
        }
    }

    public Cursor execQuery(SqlInfo sqlInfo) {
        debugSql(sqlInfo.getSql());
        try {
            return this.database.rawQuery(sqlInfo.getSql(), sqlInfo.getBindArgsAsStrArray());
        } catch (Throwable th) {
            throw new DbException(th);
        }
    }

    public Cursor execQuery(String str) {
        debugSql(str);
        try {
            return this.database.rawQuery(str, null);
        } catch (Throwable th) {
            throw new DbException(th);
        }
    }

    public <T> List<T> findAll(Selector selector) {
        if (!tableIsExist(selector.getEntityType())) {
            return null;
        }
        String selector2 = selector.toString();
        long seq = CursorUtils.FindCacheSequence.getSeq();
        this.findTempCache.setSeq(seq);
        Object obj = this.findTempCache.get(selector2);
        if (obj != null) {
            return (List) obj;
        }
        ArrayList arrayList = new ArrayList();
        Cursor execQuery = execQuery(selector2);
        if (execQuery != null) {
            while (execQuery.moveToNext()) {
                try {
                    arrayList.add(CursorUtils.getEntity(this, execQuery, selector.getEntityType(), seq));
                } finally {
                    try {
                        throw new DbException(th);
                    } finally {
                    }
                }
            }
            this.findTempCache.put(selector2, arrayList);
        }
        return arrayList;
    }

    public <T> List<T> findAll(Class<T> cls) {
        return findAll(Selector.from(cls));
    }

    public <T> T findById(Class<T> cls, Object obj) {
        if (!tableIsExist(cls)) {
            return null;
        }
        String selector = Selector.from(cls).where(Table.get(this, cls).f11340id.getColumnName(), "=", obj).limit(1).toString();
        long seq = CursorUtils.FindCacheSequence.getSeq();
        this.findTempCache.setSeq(seq);
        T t = (T) this.findTempCache.get(selector);
        if (t != null) {
            return t;
        }
        Cursor execQuery = execQuery(selector);
        if (execQuery == null) {
            return null;
        }
        try {
            if (!execQuery.moveToNext()) {
                return null;
            }
            T t2 = (T) CursorUtils.getEntity(this, execQuery, cls, seq);
            this.findTempCache.put(selector, t2);
            return t2;
        } catch (Throwable th) {
            try {
                throw new DbException(th);
            } finally {
                IOUtils.closeQuietly(execQuery);
            }
        }
    }

    public List<DbModel> findDbModelAll(DbModelSelector dbModelSelector) {
        if (!tableIsExist(dbModelSelector.getEntityType())) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Cursor execQuery = execQuery(dbModelSelector.toString());
        if (execQuery != null) {
            while (execQuery.moveToNext()) {
                try {
                    arrayList.add(CursorUtils.getDbModel(execQuery));
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

    public List<DbModel> findDbModelAll(SqlInfo sqlInfo) {
        ArrayList arrayList = new ArrayList();
        Cursor execQuery = execQuery(sqlInfo);
        if (execQuery != null) {
            while (execQuery.moveToNext()) {
                try {
                    arrayList.add(CursorUtils.getDbModel(execQuery));
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

    public DbModel findDbModelFirst(DbModelSelector dbModelSelector) {
        Cursor execQuery;
        if (tableIsExist(dbModelSelector.getEntityType()) && (execQuery = execQuery(dbModelSelector.limit(1).toString())) != null) {
            try {
                if (!execQuery.moveToNext()) {
                    return null;
                }
                return CursorUtils.getDbModel(execQuery);
            } catch (Throwable th) {
                try {
                    throw new DbException(th);
                } finally {
                    IOUtils.closeQuietly(execQuery);
                }
            }
        }
        return null;
    }

    public DbModel findDbModelFirst(SqlInfo sqlInfo) {
        Cursor execQuery = execQuery(sqlInfo);
        if (execQuery != null) {
            try {
                if (!execQuery.moveToNext()) {
                    return null;
                }
                return CursorUtils.getDbModel(execQuery);
            } catch (Throwable th) {
                try {
                    throw new DbException(th);
                } finally {
                    IOUtils.closeQuietly(execQuery);
                }
            }
        }
        return null;
    }

    public <T> T findFirst(Selector selector) {
        if (!tableIsExist(selector.getEntityType())) {
            return null;
        }
        String selector2 = selector.limit(1).toString();
        long seq = CursorUtils.FindCacheSequence.getSeq();
        this.findTempCache.setSeq(seq);
        T t = (T) this.findTempCache.get(selector2);
        if (t != null) {
            return t;
        }
        Cursor execQuery = execQuery(selector2);
        if (execQuery == null) {
            return null;
        }
        try {
            if (!execQuery.moveToNext()) {
                return null;
            }
            T t2 = (T) CursorUtils.getEntity(this, execQuery, selector.getEntityType(), seq);
            this.findTempCache.put(selector2, t2);
            return t2;
        } catch (Throwable th) {
            try {
                throw new DbException(th);
            } finally {
                IOUtils.closeQuietly(execQuery);
            }
        }
    }

    public <T> T findFirst(Class<T> cls) {
        return (T) findFirst(Selector.from(cls));
    }

    public DaoConfig getDaoConfig() {
        return this.daoConfig;
    }

    public SQLiteDatabase getDatabase() {
        return this.database;
    }

    public void replace(Object obj) {
        try {
            beginTransaction();
            createTableIfNotExist(obj.getClass());
            execNonQuery(SqlInfoBuilder.buildReplaceSqlInfo(this, obj));
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void replaceAll(List<?> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            beginTransaction();
            createTableIfNotExist(list.get(0).getClass());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                execNonQuery(SqlInfoBuilder.buildReplaceSqlInfo(this, it.next()));
            }
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void save(Object obj) {
        try {
            beginTransaction();
            createTableIfNotExist(obj.getClass());
            execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(this, obj));
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void saveAll(List<?> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            beginTransaction();
            createTableIfNotExist(list.get(0).getClass());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(this, it.next()));
            }
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public boolean saveBindingId(Object obj) {
        try {
            beginTransaction();
            createTableIfNotExist(obj.getClass());
            boolean saveBindingIdWithoutTransaction = saveBindingIdWithoutTransaction(obj);
            setTransactionSuccessful();
            return saveBindingIdWithoutTransaction;
        } finally {
            endTransaction();
        }
    }

    public void saveBindingIdAll(List<?> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            beginTransaction();
            createTableIfNotExist(list.get(0).getClass());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                if (!saveBindingIdWithoutTransaction(it.next())) {
                    throw new DbException("saveBindingId error, transaction will not commit!");
                }
            }
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void saveOrUpdate(Object obj) {
        try {
            beginTransaction();
            createTableIfNotExist(obj.getClass());
            saveOrUpdateWithoutTransaction(obj);
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void saveOrUpdateAll(List<?> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            beginTransaction();
            createTableIfNotExist(list.get(0).getClass());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                saveOrUpdateWithoutTransaction(it.next());
            }
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    /* JADX WARN: Finally extract failed */
    public boolean tableIsExist(Class<?> cls) {
        Table table = Table.get(this, cls);
        if (table.isCheckedDatabase()) {
            return true;
        }
        Cursor execQuery = execQuery("SELECT COUNT(*) AS c FROM sqlite_master WHERE type='table' AND name='" + table.tableName + "'");
        if (execQuery == null) {
            return false;
        }
        try {
            if (!execQuery.moveToNext() || execQuery.getInt(0) <= 0) {
                IOUtils.closeQuietly(execQuery);
                return false;
            }
            table.setCheckedDatabase(true);
            IOUtils.closeQuietly(execQuery);
            return true;
        } catch (Throwable th) {
            try {
                throw new DbException(th);
            } catch (Throwable th2) {
                IOUtils.closeQuietly(execQuery);
                throw th2;
            }
        }
    }

    public void update(Object obj, WhereBuilder whereBuilder, String... strArr) {
        if (!tableIsExist(obj.getClass())) {
            return;
        }
        try {
            beginTransaction();
            execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, obj, whereBuilder, strArr));
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void update(Object obj, String... strArr) {
        if (!tableIsExist(obj.getClass())) {
            return;
        }
        try {
            beginTransaction();
            execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, obj, strArr));
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void updateAll(List<?> list, WhereBuilder whereBuilder, String... strArr) {
        if (list == null || list.size() == 0 || !tableIsExist(list.get(0).getClass())) {
            return;
        }
        try {
            beginTransaction();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, it.next(), whereBuilder, strArr));
            }
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void updateAll(List<?> list, String... strArr) {
        if (list == null || list.size() == 0 || !tableIsExist(list.get(0).getClass())) {
            return;
        }
        try {
            beginTransaction();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, it.next(), strArr));
            }
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }
}
