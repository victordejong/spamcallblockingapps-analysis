package com.j256.ormlite.android;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.misc.VersionUtils;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.GeneratedKeyHolder;
import java.io.Closeable;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Savepoint;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/android/AndroidDatabaseConnection.class */
public class AndroidDatabaseConnection implements DatabaseConnection {
    private static final String ANDROID_VERSION = "VERSION__5.3__";
    private final boolean cancelQueriesEnabled;

    /* renamed from: db */
    private final SQLiteDatabase f323db;
    private final boolean readWrite;
    private static Logger logger = LoggerFactory.getLogger(AndroidDatabaseConnection.class);
    private static final String[] NO_STRING_ARGS = new String[0];

    /* renamed from: com.j256.ormlite.android.AndroidDatabaseConnection$1 */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/android/AndroidDatabaseConnection$1.class */
    public static /* synthetic */ class C17981 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$field$SqlType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c5 -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c9 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cd -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d1 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d5 -> B:73:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d9 -> B:69:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00dd -> B:81:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e1 -> B:75:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e5 -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e9 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ed -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f1 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f5 -> B:71:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00f9 -> B:67:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00fd -> B:79:0x00b8). Please submit an issue!!! */
        static {
            int[] iArr = new int[SqlType.values().length];
            $SwitchMap$com$j256$ormlite$field$SqlType = iArr;
            try {
                iArr[SqlType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.LONG_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BYTE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.SHORT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.INTEGER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.LONG.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.FLOAT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.DOUBLE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BYTE_ARRAY.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.SERIALIZABLE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.DATE.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BLOB.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BIG_DECIMAL.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.UNKNOWN.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint.class */
    private static class OurSavePoint implements Savepoint {
        private String name;

        public OurSavePoint(String str) {
            this.name = str;
        }

        @Override // java.sql.Savepoint
        public int getSavepointId() {
            return 0;
        }

        @Override // java.sql.Savepoint
        public String getSavepointName() {
            return this.name;
        }
    }

    static {
        VersionUtils.checkCoreVersusAndroidVersions(ANDROID_VERSION);
    }

    public AndroidDatabaseConnection(SQLiteDatabase sQLiteDatabase, boolean z) {
        this(sQLiteDatabase, z, false);
    }

    public AndroidDatabaseConnection(SQLiteDatabase sQLiteDatabase, boolean z, boolean z2) {
        this.f323db = sQLiteDatabase;
        this.readWrite = z;
        this.cancelQueriesEnabled = z2;
        logger.trace("{}: db {} opened, read-write = {}", this, sQLiteDatabase, Boolean.valueOf(z));
    }

    private void bindArgs(SQLiteStatement sQLiteStatement, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        if (objArr == null) {
            return;
        }
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj == null) {
                sQLiteStatement.bindNull(i + 1);
            } else {
                SqlType sqlType = fieldTypeArr[i].getSqlType();
                switch (C17981.$SwitchMap$com$j256$ormlite$field$SqlType[sqlType.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        sQLiteStatement.bindString(i + 1, obj.toString());
                        continue;
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        sQLiteStatement.bindLong(i + 1, ((Number) obj).longValue());
                        continue;
                    case 9:
                    case 10:
                        sQLiteStatement.bindDouble(i + 1, ((Number) obj).doubleValue());
                        continue;
                    case 11:
                    case 12:
                        sQLiteStatement.bindBlob(i + 1, (byte[]) obj);
                        continue;
                    case 13:
                    case 14:
                    case 15:
                        throw new SQLException("Invalid Android type: " + sqlType);
                    default:
                        throw new SQLException("Unknown sql argument type: " + sqlType);
                }
            }
        }
    }

    private void closeQuietly(Cursor cursor) {
        if (cursor != null) {
            cursor.close();
        }
    }

    private void closeQuietly(SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement != null) {
            sQLiteStatement.close();
        }
    }

    private String[] toStrings(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return null;
        }
        String[] strArr = new String[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj == null) {
                strArr[i] = null;
            } else {
                strArr[i] = obj.toString();
            }
        }
        return strArr;
    }

    private int update(String str, Object[] objArr, FieldType[] fieldTypeArr, String str2) throws SQLException {
        Throwable th;
        android.database.SQLException e;
        SQLiteStatement sQLiteStatement;
        SQLiteStatement compileStatement;
        int i;
        SQLiteStatement sQLiteStatement2 = null;
        try {
            try {
                compileStatement = this.f323db.compileStatement(str);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (android.database.SQLException e2) {
            e = e2;
            sQLiteStatement = null;
        }
        try {
            bindArgs(compileStatement, objArr, fieldTypeArr);
            compileStatement.execute();
            closeQuietly(compileStatement);
            SQLiteStatement sQLiteStatement3 = null;
            SQLiteStatement sQLiteStatement4 = null;
            try {
                SQLiteStatement compileStatement2 = this.f323db.compileStatement("SELECT CHANGES()");
                sQLiteStatement3 = compileStatement2;
                sQLiteStatement4 = compileStatement2;
                i = (int) compileStatement2.simpleQueryForLong();
                sQLiteStatement4 = compileStatement2;
            } catch (android.database.SQLException e3) {
                i = 1;
            } catch (Throwable th3) {
                closeQuietly(sQLiteStatement3);
                throw th3;
            }
            closeQuietly(sQLiteStatement4);
            logger.trace("{} statement is compiled and executed, changed {}: {}", str2, Integer.valueOf(i), str);
            return i;
        } catch (android.database.SQLException e4) {
            e = e4;
            sQLiteStatement = compileStatement;
            SQLiteStatement sQLiteStatement5 = sQLiteStatement;
            StringBuilder sb = new StringBuilder();
            SQLiteStatement sQLiteStatement6 = sQLiteStatement;
            sb.append("updating database failed: ");
            SQLiteStatement sQLiteStatement7 = sQLiteStatement;
            sb.append(str);
            SQLiteStatement sQLiteStatement8 = sQLiteStatement;
            throw SqlExceptionUtil.create(sb.toString(), e);
        } catch (Throwable th4) {
            th = th4;
            sQLiteStatement2 = compileStatement;
            closeQuietly(sQLiteStatement2);
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f323db.close();
            logger.trace("{}: db {} closed", this, this.f323db);
        } catch (android.database.SQLException e) {
            throw new IOException("problems closing the database connection", e);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void closeQuietly() {
        IOUtils.closeQuietly(this);
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void commit(Savepoint savepoint) throws SQLException {
        try {
            this.f323db.setTransactionSuccessful();
            this.f323db.endTransaction();
            if (savepoint == null) {
                logger.trace("{}: transaction is successfully ended", this);
            } else {
                logger.trace("{}: transaction {} is successfully ended", this, savepoint.getSavepointName());
            }
        } catch (android.database.SQLException e) {
            if (savepoint == null) {
                throw SqlExceptionUtil.create("problems committing transaction", e);
            }
            throw SqlExceptionUtil.create("problems committing transaction " + savepoint.getSavepointName(), e);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public CompiledStatement compileStatement(String str, StatementBuilder.StatementType statementType, FieldType[] fieldTypeArr, int i, boolean z) {
        AndroidCompiledStatement androidCompiledStatement = new AndroidCompiledStatement(str, this.f323db, statementType, this.cancelQueriesEnabled, z);
        logger.trace("{}: compiled statement got {}: {}", this, androidCompiledStatement, str);
        return androidCompiledStatement;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int delete(String str, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        return update(str, objArr, fieldTypeArr, "deleted");
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int executeStatement(String str, int i) throws SQLException {
        return AndroidCompiledStatement.execSql(this.f323db, str, str, NO_STRING_ARGS);
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public Connection getUnderlyingConnection() {
        return null;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int insert(String str, Object[] objArr, FieldType[] fieldTypeArr, GeneratedKeyHolder generatedKeyHolder) throws SQLException {
        SQLiteStatement sQLiteStatement = null;
        SQLiteStatement sQLiteStatement2 = null;
        try {
            try {
                SQLiteStatement compileStatement = this.f323db.compileStatement(str);
                bindArgs(compileStatement, objArr, fieldTypeArr);
                long executeInsert = compileStatement.executeInsert();
                if (generatedKeyHolder != null) {
                    generatedKeyHolder.addKey(Long.valueOf(executeInsert));
                }
                sQLiteStatement2 = compileStatement;
                sQLiteStatement = compileStatement;
                logger.trace("{}: insert statement is compiled and executed, changed {}: {}", (Object) this, (Object) 1, (Object) str);
                closeQuietly(compileStatement);
                return 1;
            } catch (android.database.SQLException e) {
                SQLiteStatement sQLiteStatement3 = sQLiteStatement;
                StringBuilder sb = new StringBuilder();
                SQLiteStatement sQLiteStatement4 = sQLiteStatement;
                sb.append("inserting to database failed: ");
                SQLiteStatement sQLiteStatement5 = sQLiteStatement;
                sb.append(str);
                SQLiteStatement sQLiteStatement6 = sQLiteStatement;
                throw SqlExceptionUtil.create(sb.toString(), e);
            }
        } catch (Throwable th) {
            closeQuietly(sQLiteStatement2);
            throw th;
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isAutoCommit() throws SQLException {
        try {
            boolean inTransaction = this.f323db.inTransaction();
            logger.trace("{}: in transaction is {}", this, Boolean.valueOf(inTransaction));
            return !inTransaction;
        } catch (android.database.SQLException e) {
            throw SqlExceptionUtil.create("problems getting auto-commit from database", e);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isAutoCommitSupported() {
        return true;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isClosed() throws SQLException {
        try {
            boolean isOpen = this.f323db.isOpen();
            logger.trace("{}: db {} isOpen returned {}", this, this.f323db, Boolean.valueOf(isOpen));
            return !isOpen;
        } catch (android.database.SQLException e) {
            throw SqlExceptionUtil.create("problems detecting if the database is closed", e);
        }
    }

    public boolean isReadWrite() {
        return this.readWrite;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isTableExists(String str) {
        boolean z = true;
        Cursor rawQuery = this.f323db.rawQuery("SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = ?", new String[]{str});
        try {
            if (rawQuery.getCount() <= 0) {
                z = false;
            }
            logger.trace("{}: isTableExists '{}' returned {}", this, str, Boolean.valueOf(z));
            rawQuery.close();
            return z;
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public long queryForLong(String str) throws SQLException {
        SQLiteStatement sQLiteStatement = null;
        SQLiteStatement sQLiteStatement2 = null;
        try {
            try {
                SQLiteStatement compileStatement = this.f323db.compileStatement(str);
                long simpleQueryForLong = compileStatement.simpleQueryForLong();
                sQLiteStatement2 = compileStatement;
                sQLiteStatement = compileStatement;
                logger.trace("{}: query for long simple query returned {}: {}", this, Long.valueOf(simpleQueryForLong), str);
                closeQuietly(compileStatement);
                return simpleQueryForLong;
            } catch (android.database.SQLException e) {
                SQLiteStatement sQLiteStatement3 = sQLiteStatement;
                StringBuilder sb = new StringBuilder();
                SQLiteStatement sQLiteStatement4 = sQLiteStatement;
                sb.append("queryForLong from database failed: ");
                SQLiteStatement sQLiteStatement5 = sQLiteStatement;
                sb.append(str);
                SQLiteStatement sQLiteStatement6 = sQLiteStatement;
                throw SqlExceptionUtil.create(sb.toString(), e);
            }
        } catch (Throwable th) {
            closeQuietly(sQLiteStatement2);
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    @Override // com.j256.ormlite.support.DatabaseConnection
    public long queryForLong(String str, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        Closeable closeable;
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        android.database.SQLException e;
        AndroidDatabaseResults androidDatabaseResults;
        try {
            try {
                cursor2 = this.f323db.rawQuery(str, toStrings(objArr));
            } catch (Throwable th2) {
                th = th2;
                cursor2 = null;
            }
        } catch (android.database.SQLException e2) {
            e = e2;
            androidDatabaseResults = null;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            closeable = null;
            cursor = null;
            closeQuietly(cursor);
            IOUtils.closeQuietly(closeable);
            throw th;
        }
        try {
            androidDatabaseResults = new AndroidDatabaseResults(cursor2, null, false);
            try {
                char c = androidDatabaseResults.first() ? androidDatabaseResults.getLong(0) : (char) 0;
                logger.trace("{}: query for long raw query returned {}: {}", this, Long.valueOf(c), str);
                closeQuietly(cursor2);
                IOUtils.closeQuietly(androidDatabaseResults);
                return c;
            } catch (android.database.SQLException e3) {
                e = e3;
                AndroidDatabaseResults androidDatabaseResults2 = androidDatabaseResults;
                StringBuilder sb = new StringBuilder();
                AndroidDatabaseResults androidDatabaseResults3 = androidDatabaseResults;
                sb.append("queryForLong from database failed: ");
                AndroidDatabaseResults androidDatabaseResults4 = androidDatabaseResults;
                sb.append(str);
                AndroidDatabaseResults androidDatabaseResults5 = androidDatabaseResults;
                throw SqlExceptionUtil.create(sb.toString(), e);
            }
        } catch (android.database.SQLException e4) {
            e = e4;
            androidDatabaseResults = null;
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
            cursor = cursor2;
            closeQuietly(cursor);
            IOUtils.closeQuietly(closeable);
            throw th;
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public <T> Object queryForOne(String str, Object[] objArr, FieldType[] fieldTypeArr, GenericRowMapper<T> genericRowMapper, ObjectCache objectCache) throws SQLException {
        Cursor cursor;
        AndroidDatabaseResults androidDatabaseResults;
        Throwable th;
        android.database.SQLException e;
        AndroidDatabaseResults androidDatabaseResults2;
        T mapRow;
        try {
            cursor = this.f323db.rawQuery(str, toStrings(objArr));
        } catch (android.database.SQLException e2) {
            e = e2;
            androidDatabaseResults2 = null;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            androidDatabaseResults = null;
        }
        try {
            androidDatabaseResults2 = new AndroidDatabaseResults(cursor, objectCache, true);
            AndroidDatabaseResults androidDatabaseResults3 = androidDatabaseResults2;
            Cursor cursor2 = cursor;
            try {
                try {
                    logger.trace("{}: queried for one result: {}", this, str);
                    if (!androidDatabaseResults2.first()) {
                        mapRow = null;
                    } else {
                        mapRow = genericRowMapper.mapRow(androidDatabaseResults2);
                        if (androidDatabaseResults2.next()) {
                            Object obj = MORE_THAN_ONE;
                            IOUtils.closeQuietly(androidDatabaseResults2);
                            closeQuietly(cursor);
                            return obj;
                        }
                    }
                    IOUtils.closeQuietly(androidDatabaseResults2);
                    closeQuietly(cursor);
                    return mapRow;
                } catch (android.database.SQLException e3) {
                    e = e3;
                    AndroidDatabaseResults androidDatabaseResults4 = androidDatabaseResults2;
                    StringBuilder sb = new StringBuilder();
                    AndroidDatabaseResults androidDatabaseResults5 = androidDatabaseResults2;
                    sb.append("queryForOne from database failed: ");
                    AndroidDatabaseResults androidDatabaseResults6 = androidDatabaseResults2;
                    sb.append(str);
                    androidDatabaseResults3 = androidDatabaseResults2;
                    cursor2 = cursor;
                    throw SqlExceptionUtil.create(sb.toString(), e);
                }
            } catch (Throwable th3) {
                th = th3;
                androidDatabaseResults = androidDatabaseResults3;
                cursor = cursor2;
                IOUtils.closeQuietly(androidDatabaseResults);
                closeQuietly(cursor);
                throw th;
            }
        } catch (android.database.SQLException e4) {
            e = e4;
            androidDatabaseResults2 = null;
        } catch (Throwable th4) {
            th = th4;
            androidDatabaseResults = null;
            IOUtils.closeQuietly(androidDatabaseResults);
            closeQuietly(cursor);
            throw th;
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void releaseSavePoint(Savepoint savepoint) {
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void rollback(Savepoint savepoint) throws SQLException {
        try {
            this.f323db.endTransaction();
            if (savepoint == null) {
                logger.trace("{}: transaction is ended, unsuccessfully", this);
            } else {
                logger.trace("{}: transaction {} is ended, unsuccessfully", this, savepoint.getSavepointName());
            }
        } catch (android.database.SQLException e) {
            if (savepoint == null) {
                throw SqlExceptionUtil.create("problems rolling back transaction", e);
            }
            throw SqlExceptionUtil.create("problems rolling back transaction " + savepoint.getSavepointName(), e);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void setAutoCommit(boolean z) {
        if (!z) {
            if (this.f323db.inTransaction()) {
                return;
            }
            this.f323db.beginTransaction();
        } else if (!this.f323db.inTransaction()) {
        } else {
            this.f323db.setTransactionSuccessful();
            this.f323db.endTransaction();
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public Savepoint setSavePoint(String str) throws SQLException {
        try {
            this.f323db.beginTransaction();
            logger.trace("{}: save-point set with name {}", this, str);
            return new OurSavePoint(str);
        } catch (android.database.SQLException e) {
            throw SqlExceptionUtil.create("problems beginning transaction " + str, e);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int update(String str, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        return update(str, objArr, fieldTypeArr, "updated");
    }
}
