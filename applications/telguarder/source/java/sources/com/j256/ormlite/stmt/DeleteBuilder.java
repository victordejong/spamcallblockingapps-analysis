package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/DeleteBuilder.class */
public class DeleteBuilder<T, ID> extends StatementBuilder<T, ID> {
    public DeleteBuilder(DatabaseType databaseType, TableInfo<T, ID> tableInfo, Dao<T, ID> dao) {
        super(databaseType, tableInfo, dao, StatementBuilder.StatementType.DELETE);
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected void appendStatementEnd(StringBuilder sb, List<ArgumentHolder> list) {
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected void appendStatementStart(StringBuilder sb, List<ArgumentHolder> list) {
        sb.append("DELETE FROM ");
        if (this.tableInfo.getSchemaName() != null && this.tableInfo.getSchemaName().length() > 0) {
            this.databaseType.appendEscapedEntityName(sb, this.tableInfo.getSchemaName());
            sb.append('.');
        }
        this.databaseType.appendEscapedEntityName(sb, this.tableInfo.getTableName());
        sb.append(' ');
    }

    public int delete() throws SQLException {
        return this.dao.delete((PreparedDelete) prepare());
    }

    public PreparedDelete<T> prepare() throws SQLException {
        return super.prepareStatement(null, false);
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    public void reset() {
        super.reset();
    }
}
