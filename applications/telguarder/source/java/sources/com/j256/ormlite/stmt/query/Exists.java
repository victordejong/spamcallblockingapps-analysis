package com.j256.ormlite.stmt.query;

import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.QueryBuilder;
import java.sql.SQLException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/Exists.class */
public class Exists implements Clause {
    private final QueryBuilder.InternalQueryBuilderWrapper subQueryBuilder;

    public Exists(QueryBuilder.InternalQueryBuilderWrapper internalQueryBuilderWrapper) {
        this.subQueryBuilder = internalQueryBuilderWrapper;
    }

    @Override // com.j256.ormlite.stmt.query.Clause
    public void appendSql(DatabaseType databaseType, String str, StringBuilder sb, List<ArgumentHolder> list, Clause clause) throws SQLException {
        sb.append("EXISTS (");
        this.subQueryBuilder.appendStatementString(sb, list);
        int length = sb.length();
        if (length > 0) {
            int i = length - 1;
            if (sb.charAt(i) == ' ') {
                sb.setLength(i);
            }
        }
        sb.append(") ");
    }
}
