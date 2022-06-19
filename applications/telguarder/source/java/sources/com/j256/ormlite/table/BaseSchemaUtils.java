package com.j256.ormlite.table;

import com.j256.ormlite.p017db.DatabaseType;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/table/BaseSchemaUtils.class */
public abstract class BaseSchemaUtils {
    protected void dumpSchema() throws SQLException {
        for (Class<?> cls : getClasses()) {
            for (String str : TableUtils.getCreateTableStatements(getDatabaseType(), cls)) {
                System.out.println(str + ";");
            }
        }
    }

    protected abstract Class<?>[] getClasses();

    protected abstract DatabaseType getDatabaseType();
}
