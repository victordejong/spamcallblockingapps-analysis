package com.j256.ormlite.misc;

import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/misc/TransactionManager.class */
public class TransactionManager {
    private static final String SAVE_POINT_PREFIX = "ORMLITE";
    private static final Logger logger = LoggerFactory.getLogger(TransactionManager.class);
    private static final AtomicInteger savePointCounter = new AtomicInteger();
    private static final ThreadLocal<TransactionLevel> transactionLevelThreadLocal = new ThreadLocal<TransactionLevel>() { // from class: com.j256.ormlite.misc.TransactionManager.1
        @Override // java.lang.ThreadLocal
        public TransactionLevel initialValue() {
            return new TransactionLevel();
        }
    };
    private ConnectionSource connectionSource;

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/misc/TransactionManager$TransactionLevel.class */
    public static class TransactionLevel {
        int counter;

        private TransactionLevel() {
        }

        int decrementAndGet() {
            int i = this.counter - 1;
            this.counter = i;
            return i;
        }

        int incrementAndGet() {
            int i = this.counter + 1;
            this.counter = i;
            return i;
        }
    }

    public TransactionManager() {
    }

    public TransactionManager(ConnectionSource connectionSource) {
        this.connectionSource = connectionSource;
        initialize();
    }

    public static <T> T callInTransaction(ConnectionSource connectionSource, Callable<T> callable) throws SQLException {
        return (T) callInTransaction((String) null, connectionSource, callable);
    }

    public static <T> T callInTransaction(DatabaseConnection databaseConnection, DatabaseType databaseType, Callable<T> callable) throws SQLException {
        return (T) callInTransaction(databaseConnection, false, databaseType, callable);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T callInTransaction(com.j256.ormlite.support.DatabaseConnection r4, boolean r5, com.j256.ormlite.p017db.DatabaseType r6, java.util.concurrent.Callable<T> r7) throws java.sql.SQLException {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.misc.TransactionManager.callInTransaction(com.j256.ormlite.support.DatabaseConnection, boolean, com.j256.ormlite.db.DatabaseType, java.util.concurrent.Callable):java.lang.Object");
    }

    public static <T> T callInTransaction(String str, ConnectionSource connectionSource, Callable<T> callable) throws SQLException {
        boolean z;
        Throwable th;
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(str);
        try {
            z = connectionSource.saveSpecialConnection(readWriteConnection);
            try {
                T t = (T) callInTransaction(readWriteConnection, z, connectionSource.getDatabaseType(), callable);
                if (z) {
                    connectionSource.clearSpecialConnection(readWriteConnection);
                }
                connectionSource.releaseConnection(readWriteConnection);
                return t;
            } catch (Throwable th2) {
                th = th2;
                if (z) {
                    connectionSource.clearSpecialConnection(readWriteConnection);
                }
                connectionSource.releaseConnection(readWriteConnection);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
    }

    private static void commit(DatabaseConnection databaseConnection, Savepoint savepoint) throws SQLException {
        String savepointName = savepoint == null ? null : savepoint.getSavepointName();
        databaseConnection.commit(savepoint);
        if (savepointName == null) {
            logger.trace("committed savePoint transaction");
        } else {
            logger.trace("committed savePoint transaction {}", savepointName);
        }
    }

    private static void release(DatabaseConnection databaseConnection, Savepoint savepoint) throws SQLException {
        String savepointName = savepoint == null ? null : savepoint.getSavepointName();
        databaseConnection.releaseSavePoint(savepoint);
        if (savepointName == null) {
            logger.trace("released savePoint transaction");
        } else {
            logger.trace("released savePoint transaction {}", savepointName);
        }
    }

    private static void rollBack(DatabaseConnection databaseConnection, Savepoint savepoint) throws SQLException {
        String savepointName = savepoint == null ? null : savepoint.getSavepointName();
        databaseConnection.rollback(savepoint);
        if (savepointName == null) {
            logger.trace("rolled back savePoint transaction");
        } else {
            logger.trace("rolled back savePoint transaction {}", savepointName);
        }
    }

    public <T> T callInTransaction(String str, Callable<T> callable) throws SQLException {
        return (T) callInTransaction(str, this.connectionSource, callable);
    }

    public <T> T callInTransaction(Callable<T> callable) throws SQLException {
        return (T) callInTransaction(this.connectionSource, callable);
    }

    public void initialize() {
        if (this.connectionSource != null) {
            return;
        }
        throw new IllegalStateException("dataSource was not set on " + getClass().getSimpleName());
    }

    public void setConnectionSource(ConnectionSource connectionSource) {
        this.connectionSource = connectionSource;
    }
}
