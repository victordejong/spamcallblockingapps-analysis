package com.j256.ormlite.stmt.query;

import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.sql.SQLException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/Not.class */
public class Not implements Clause, NeedsFutureClause {
    private Comparison comparison = null;
    private Exists exists = null;

    public Not() {
    }

    public Not(Clause clause) {
        setMissingClause(clause);
    }

    @Override // com.j256.ormlite.stmt.query.Clause
    public void appendSql(DatabaseType databaseType, String str, StringBuilder sb, List<ArgumentHolder> list, Clause clause) throws SQLException {
        if (this.comparison == null && this.exists == null) {
            throw new IllegalStateException("Clause has not been set in NOT operation");
        }
        sb.append("(NOT ");
        if (this.comparison == null) {
            this.exists.appendSql(databaseType, str, sb, list, clause);
        } else {
            if (str != null) {
                databaseType.appendEscapedEntityName(sb, str);
                sb.append('.');
            }
            databaseType.appendEscapedEntityName(sb, this.comparison.getColumnName());
            sb.append(' ');
            this.comparison.appendOperation(sb);
            this.comparison.appendValue(databaseType, sb, list);
        }
        int length = sb.length();
        if (length > 0) {
            int i = length - 1;
            if (sb.charAt(i) == ' ') {
                sb.setLength(i);
            }
        }
        sb.append(") ");
    }

    @Override // com.j256.ormlite.stmt.query.NeedsFutureClause
    public void setMissingClause(Clause clause) {
        if (this.comparison == null) {
            if (clause instanceof Comparison) {
                this.comparison = (Comparison) clause;
                return;
            } else if (clause instanceof Exists) {
                this.exists = (Exists) clause;
                return;
            } else {
                throw new IllegalArgumentException("NOT operation can only work with comparison SQL clauses, not " + clause);
            }
        }
        throw new IllegalArgumentException("NOT operation already has a comparison set");
    }

    public String toString() {
        if (this.comparison == null) {
            return "NOT without comparison";
        }
        return "NOT comparison " + this.comparison;
    }
}
