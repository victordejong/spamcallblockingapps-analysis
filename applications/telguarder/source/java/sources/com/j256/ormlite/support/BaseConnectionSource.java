package com.j256.ormlite.support;

import com.j256.ormlite.logger.Logger;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/support/BaseConnectionSource.class */
public abstract class BaseConnectionSource implements ConnectionSource {
    private ThreadLocal<NestedConnection> specialConnection = new ThreadLocal<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/support/BaseConnectionSource$NestedConnection.class */
    public static class NestedConnection {
        public final DatabaseConnection connection;
        private int nestedC = 1;

        public NestedConnection(DatabaseConnection databaseConnection) {
            this.connection = databaseConnection;
        }

        public int decrementAndGet() {
            int i = this.nestedC - 1;
            this.nestedC = i;
            return i;
        }

        public void increment() {
            this.nestedC++;
        }
    }

    public boolean clearSpecial(DatabaseConnection databaseConnection, Logger logger) {
        boolean z;
        NestedConnection nestedConnection = this.specialConnection.get();
        if (databaseConnection != null) {
            if (nestedConnection == null) {
                logger.error("no connection has been saved when clear() called");
            } else if (nestedConnection.connection == databaseConnection) {
                if (nestedConnection.decrementAndGet() == 0) {
                    this.specialConnection.set(null);
                }
                z = true;
                return z;
            } else {
                logger.error("connection saved {} is not the one being cleared {}", nestedConnection.connection, databaseConnection);
            }
        }
        z = false;
        return z;
    }

    public DatabaseConnection getSavedConnection() {
        NestedConnection nestedConnection = this.specialConnection.get();
        if (nestedConnection == null) {
            return null;
        }
        return nestedConnection.connection;
    }

    @Override // com.j256.ormlite.support.ConnectionSource
    public DatabaseConnection getSpecialConnection(String str) {
        NestedConnection nestedConnection = this.specialConnection.get();
        if (nestedConnection == null) {
            return null;
        }
        return nestedConnection.connection;
    }

    protected boolean isSavedConnection(DatabaseConnection databaseConnection) {
        NestedConnection nestedConnection = this.specialConnection.get();
        return nestedConnection != null && nestedConnection.connection == databaseConnection;
    }

    /* JADX WARN: Finally extract failed */
    protected boolean isSingleConnection(DatabaseConnection databaseConnection, DatabaseConnection databaseConnection2) throws SQLException {
        databaseConnection.setAutoCommit(true);
        databaseConnection2.setAutoCommit(true);
        try {
            databaseConnection.setAutoCommit(false);
            if (databaseConnection2.isAutoCommit()) {
                databaseConnection.setAutoCommit(true);
                return false;
            }
            databaseConnection.setAutoCommit(true);
            return true;
        } catch (Throwable th) {
            databaseConnection.setAutoCommit(true);
            throw th;
        }
    }

    public boolean saveSpecial(DatabaseConnection databaseConnection) throws SQLException {
        NestedConnection nestedConnection = this.specialConnection.get();
        if (nestedConnection == null) {
            this.specialConnection.set(new NestedConnection(databaseConnection));
            return true;
        } else if (nestedConnection.connection == databaseConnection) {
            nestedConnection.increment();
            return false;
        } else {
            throw new SQLException("trying to save connection " + databaseConnection + " but already have saved connection " + nestedConnection.connection);
        }
    }
}
