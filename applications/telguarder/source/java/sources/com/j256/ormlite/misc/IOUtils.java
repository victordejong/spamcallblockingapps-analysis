package com.j256.ormlite.misc;

import java.io.Closeable;
import java.io.IOException;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/misc/IOUtils.class */
public class IOUtils {
    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeThrowSqlException(Closeable closeable, String str) throws SQLException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                throw SqlExceptionUtil.create("could not close " + str, e);
            }
        }
    }
}
