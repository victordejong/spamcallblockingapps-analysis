package com.j256.ormlite.stmt.query;

import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.sql.SQLException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/ManyClause.class */
public class ManyClause implements Clause, NeedsFutureClause {
    private final Clause first;
    private final Operation operation;
    private final Clause[] others;
    private Clause second;
    private final int startOthersAt;

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/ManyClause$Operation.class */
    public enum Operation {
        AND("AND"),
        OR("OR");
        
        public final String sql;

        Operation(String str) {
            this.sql = str;
        }
    }

    public ManyClause(Clause clause, Clause clause2, Clause[] clauseArr, Operation operation) {
        this.first = clause;
        this.second = clause2;
        this.others = clauseArr;
        this.startOthersAt = 0;
        this.operation = operation;
    }

    public ManyClause(Clause clause, Operation operation) {
        this.first = clause;
        this.second = null;
        this.others = null;
        this.startOthersAt = 0;
        this.operation = operation;
    }

    public ManyClause(Clause[] clauseArr, Operation operation) {
        this.first = clauseArr[0];
        if (clauseArr.length < 2) {
            this.second = null;
            this.startOthersAt = clauseArr.length;
        } else {
            this.second = clauseArr[1];
            this.startOthersAt = 2;
        }
        this.others = clauseArr;
        this.operation = operation;
    }

    @Override // com.j256.ormlite.stmt.query.Clause
    public void appendSql(DatabaseType databaseType, String str, StringBuilder sb, List<ArgumentHolder> list, Clause clause) throws SQLException {
        boolean z = (clause instanceof ManyClause) && ((ManyClause) clause).operation == this.operation;
        if (!z) {
            sb.append('(');
        }
        this.first.appendSql(databaseType, str, sb, list, this);
        if (this.second != null) {
            sb.append(this.operation.sql);
            sb.append(' ');
            this.second.appendSql(databaseType, str, sb, list, this);
        }
        if (this.others != null) {
            for (int i = this.startOthersAt; i < this.others.length; i++) {
                sb.append(this.operation.sql);
                sb.append(' ');
                this.others[i].appendSql(databaseType, str, sb, list, this);
            }
        }
        if (!z) {
            int length = sb.length();
            if (length > 0) {
                int i2 = length - 1;
                if (sb.charAt(i2) == ' ') {
                    sb.setLength(i2);
                }
            }
            sb.append(") ");
        }
    }

    @Override // com.j256.ormlite.stmt.query.NeedsFutureClause
    public void setMissingClause(Clause clause) {
        this.second = clause;
    }
}
