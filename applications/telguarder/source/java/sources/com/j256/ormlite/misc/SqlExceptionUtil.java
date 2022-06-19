package com.j256.ormlite.misc;

import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/misc/SqlExceptionUtil.class */
public class SqlExceptionUtil {
    private SqlExceptionUtil() {
    }

    public static SQLException create(String str, Throwable th) {
        SQLException sQLException = th instanceof SQLException ? new SQLException(str, ((SQLException) th).getSQLState()) : new SQLException(str);
        sQLException.initCause(th);
        return sQLException;
    }
}
