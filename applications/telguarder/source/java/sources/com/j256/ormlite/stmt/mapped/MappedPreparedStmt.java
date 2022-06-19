package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Log;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.PreparedDelete;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.PreparedUpdate;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/MappedPreparedStmt.class */
public class MappedPreparedStmt<T, ID> extends BaseMappedQuery<T, ID> implements PreparedQuery<T>, PreparedDelete<T>, PreparedUpdate<T> {
    private final ArgumentHolder[] argHolders;
    private final boolean cacheStore;
    private final Long limit;
    private final StatementBuilder.StatementType type;

    public MappedPreparedStmt(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr, FieldType[] fieldTypeArr2, ArgumentHolder[] argumentHolderArr, Long l, StatementBuilder.StatementType statementType, boolean z) {
        super(dao, tableInfo, str, fieldTypeArr, fieldTypeArr2);
        this.argHolders = argumentHolderArr;
        this.limit = l;
        this.type = statementType;
        this.cacheStore = z;
    }

    private CompiledStatement assignStatementArguments(CompiledStatement compiledStatement) throws SQLException {
        try {
            Long l = this.limit;
            if (l != null) {
                compiledStatement.setMaxRows(l.intValue());
            }
            Object[] objArr = null;
            if (logger.isLevelEnabled(Log.Level.TRACE)) {
                ArgumentHolder[] argumentHolderArr = this.argHolders;
                objArr = null;
                if (argumentHolderArr.length > 0) {
                    objArr = new Object[argumentHolderArr.length];
                }
            }
            int i = 0;
            while (true) {
                ArgumentHolder[] argumentHolderArr2 = this.argHolders;
                if (i >= argumentHolderArr2.length) {
                    break;
                }
                Object sqlArgValue = argumentHolderArr2[i].getSqlArgValue();
                FieldType fieldType = this.argFieldTypes[i];
                compiledStatement.setObject(i, sqlArgValue, fieldType == null ? this.argHolders[i].getSqlType() : fieldType.getSqlType());
                if (objArr != null) {
                    objArr[i] = sqlArgValue;
                }
                i++;
            }
            logger.debug("prepared statement '{}' with {} args", this.statement, Integer.valueOf(this.argHolders.length));
            if (objArr != null) {
                logger.trace("prepared statement arguments: {}", (Object) objArr);
            }
            return compiledStatement;
        } catch (Throwable th) {
            IOUtils.closeThrowSqlException(compiledStatement, "statement");
            throw th;
        }
    }

    @Override // com.j256.ormlite.stmt.PreparedStmt
    public CompiledStatement compile(DatabaseConnection databaseConnection, StatementBuilder.StatementType statementType) throws SQLException {
        return compile(databaseConnection, statementType, -1);
    }

    @Override // com.j256.ormlite.stmt.PreparedStmt
    public CompiledStatement compile(DatabaseConnection databaseConnection, StatementBuilder.StatementType statementType, int i) throws SQLException {
        if (this.type == statementType) {
            return assignStatementArguments(databaseConnection.compileStatement(this.statement, statementType, this.argFieldTypes, i, this.cacheStore));
        }
        throw new SQLException("Could not compile this " + this.type + " statement since the caller is expecting a " + statementType + " statement.  Check your QueryBuilder methods.");
    }

    @Override // com.j256.ormlite.stmt.PreparedStmt
    public int getNumArgs() {
        ArgumentHolder[] argumentHolderArr = this.argHolders;
        if (argumentHolderArr == null) {
            return 0;
        }
        return argumentHolderArr.length;
    }

    @Override // com.j256.ormlite.stmt.PreparedStmt
    public String getStatement() {
        return this.statement;
    }

    @Override // com.j256.ormlite.stmt.PreparedStmt
    public StatementBuilder.StatementType getType() {
        return this.type;
    }

    @Override // com.j256.ormlite.stmt.PreparedStmt
    public void setArgumentHolderValue(int i, Object obj) throws SQLException {
        if (i < 0) {
            throw new SQLException("argument holder index " + i + " must be >= 0");
        }
        ArgumentHolder[] argumentHolderArr = this.argHolders;
        if (argumentHolderArr.length > i) {
            argumentHolderArr[i].setValue(obj);
            return;
        }
        throw new SQLException("argument holder index " + i + " is not valid, only " + this.argHolders.length + " in statement (index starts at 0)");
    }
}
