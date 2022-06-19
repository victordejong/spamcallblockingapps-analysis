package com.j256.ormlite.stmt.query;

import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/Raw.class */
public class Raw implements Clause {
    private final ArgumentHolder[] args;
    private final String statement;

    public Raw(String str, ArgumentHolder[] argumentHolderArr) {
        this.statement = str;
        this.args = argumentHolderArr;
    }

    @Override // com.j256.ormlite.stmt.query.Clause
    public void appendSql(DatabaseType databaseType, String str, StringBuilder sb, List<ArgumentHolder> list, Clause clause) {
        sb.append(this.statement);
        sb.append(' ');
        for (ArgumentHolder argumentHolder : this.args) {
            list.add(argumentHolder);
        }
    }
}
