package org.xutils;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.util.List;
import org.xutils.common.util.KeyValue;
import org.xutils.p343db.Selector;
import org.xutils.p343db.sqlite.SqlInfo;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p343db.table.DbModel;
import org.xutils.p343db.table.TableEntity;
/* loaded from: classes2-dex2jar.jar:org/xutils/DbManager.class */
public interface DbManager extends Closeable {

    /* loaded from: classes2-dex2jar.jar:org/xutils/DbManager$DaoConfig.class */
    public static class DaoConfig {

        /* renamed from: a */
        private File f40532a;

        /* renamed from: b */
        private String f40533b = "xUtils.db";

        /* renamed from: c */
        private int f40534c = 1;

        /* renamed from: d */
        private boolean f40535d = true;

        /* renamed from: e */
        private DbUpgradeListener f40536e;

        /* renamed from: f */
        private TableCreateListener f40537f;

        /* renamed from: g */
        private DbOpenListener f40538g;

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            DaoConfig daoConfig = (DaoConfig) obj;
            if (!this.f40533b.equals(daoConfig.f40533b)) {
                return false;
            }
            File file = this.f40532a;
            File file2 = daoConfig.f40532a;
            if (file != null) {
                z = file.equals(file2);
            } else if (file2 != null) {
                z = false;
            }
            return z;
        }

        public File getDbDir() {
            return this.f40532a;
        }

        public String getDbName() {
            return this.f40533b;
        }

        public DbOpenListener getDbOpenListener() {
            return this.f40538g;
        }

        public DbUpgradeListener getDbUpgradeListener() {
            return this.f40536e;
        }

        public int getDbVersion() {
            return this.f40534c;
        }

        public TableCreateListener getTableCreateListener() {
            return this.f40537f;
        }

        public int hashCode() {
            int hashCode = this.f40533b.hashCode();
            File file = this.f40532a;
            return (hashCode * 31) + (file != null ? file.hashCode() : 0);
        }

        public boolean isAllowTransaction() {
            return this.f40535d;
        }

        public DaoConfig setAllowTransaction(boolean z) {
            this.f40535d = z;
            return this;
        }

        public DaoConfig setDbDir(File file) {
            this.f40532a = file;
            return this;
        }

        public DaoConfig setDbName(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f40533b = str;
            }
            return this;
        }

        public DaoConfig setDbOpenListener(DbOpenListener dbOpenListener) {
            this.f40538g = dbOpenListener;
            return this;
        }

        public DaoConfig setDbUpgradeListener(DbUpgradeListener dbUpgradeListener) {
            this.f40536e = dbUpgradeListener;
            return this;
        }

        public DaoConfig setDbVersion(int i) {
            this.f40534c = i;
            return this;
        }

        public DaoConfig setTableCreateListener(TableCreateListener tableCreateListener) {
            this.f40537f = tableCreateListener;
            return this;
        }

        public String toString() {
            return String.valueOf(this.f40532a) + "/" + this.f40533b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/DbManager$DbOpenListener.class */
    public interface DbOpenListener {
        void onDbOpened(DbManager dbManager);
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/DbManager$DbUpgradeListener.class */
    public interface DbUpgradeListener {
        void onUpgrade(DbManager dbManager, int i, int i2);
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/DbManager$TableCreateListener.class */
    public interface TableCreateListener {
        void onTableCreated(DbManager dbManager, TableEntity<?> tableEntity);
    }

    void addColumn(Class<?> cls, String str);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    int delete(Class<?> cls, WhereBuilder whereBuilder);

    void delete(Class<?> cls);

    void delete(Object obj);

    void deleteById(Class<?> cls, Object obj);

    void dropDb();

    void dropTable(Class<?> cls);

    void execNonQuery(String str);

    void execNonQuery(SqlInfo sqlInfo);

    Cursor execQuery(String str);

    Cursor execQuery(SqlInfo sqlInfo);

    int executeUpdateDelete(String str);

    int executeUpdateDelete(SqlInfo sqlInfo);

    <T> List<T> findAll(Class<T> cls);

    <T> T findById(Class<T> cls, Object obj);

    List<DbModel> findDbModelAll(SqlInfo sqlInfo);

    DbModel findDbModelFirst(SqlInfo sqlInfo);

    <T> T findFirst(Class<T> cls);

    DaoConfig getDaoConfig();

    SQLiteDatabase getDatabase();

    <T> TableEntity<T> getTable(Class<T> cls);

    void replace(Object obj);

    void save(Object obj);

    boolean saveBindingId(Object obj);

    void saveOrUpdate(Object obj);

    <T> Selector<T> selector(Class<T> cls);

    int update(Class<?> cls, WhereBuilder whereBuilder, KeyValue... keyValueArr);

    void update(Object obj, String... strArr);
}
