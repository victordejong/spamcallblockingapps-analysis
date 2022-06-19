package com.j256.ormlite.support;

import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/support/DatabaseConnectionProxyFactory.class */
public interface DatabaseConnectionProxyFactory {
    DatabaseConnection createProxy(DatabaseConnection databaseConnection) throws SQLException;
}
