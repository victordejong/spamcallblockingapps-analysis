package com.j256.ormlite.stmt.query;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.QueryBuilder;
import java.sql.SQLException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/InSubQuery.class */
public class InSubQuery extends BaseComparison {

    /* renamed from: in */
    private final boolean f329in;
    private final QueryBuilder.InternalQueryBuilderWrapper subQueryBuilder;

    public InSubQuery(String str, FieldType fieldType, QueryBuilder.InternalQueryBuilderWrapper internalQueryBuilderWrapper, boolean z) throws SQLException {
        super(str, fieldType, null, true);
        this.subQueryBuilder = internalQueryBuilderWrapper;
        this.f329in = z;
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public void appendOperation(StringBuilder sb) {
        if (this.f329in) {
            sb.append("IN ");
        } else {
            sb.append("NOT IN ");
        }
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Clause
    public /* bridge */ /* synthetic */ void appendSql(DatabaseType databaseType, String str, StringBuilder sb, List list, Clause clause) throws SQLException {
        super.appendSql(databaseType, str, sb, list, clause);
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public void appendValue(DatabaseType databaseType, StringBuilder sb, List<ArgumentHolder> list) throws SQLException {
        sb.append('(');
        this.subQueryBuilder.appendStatementString(sb, list);
        FieldType[] resultFieldTypes = this.subQueryBuilder.getResultFieldTypes();
        if (resultFieldTypes != null) {
            if (resultFieldTypes.length != 1) {
                throw new SQLException("There must be only 1 result column in sub-query but we found " + resultFieldTypes.length);
            } else if (this.fieldType.getSqlType() != resultFieldTypes[0].getSqlType()) {
                throw new SQLException("Outer column " + this.fieldType + " is not the same type as inner column " + resultFieldTypes[0]);
            }
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

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public /* bridge */ /* synthetic */ String getColumnName() {
        return super.getColumnName();
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
