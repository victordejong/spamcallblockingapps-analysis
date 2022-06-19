package com.j256.ormlite.stmt.query;

import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.sql.SQLException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/Clause.class */
public interface Clause {
    void appendSql(DatabaseType databaseType, String str, StringBuilder sb, List<ArgumentHolder> list, Clause clause) throws SQLException;
}
