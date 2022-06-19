package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.CloseableIterator;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.query.Between;
import com.j256.ormlite.stmt.query.C1821In;
import com.j256.ormlite.stmt.query.Clause;
import com.j256.ormlite.stmt.query.Exists;
import com.j256.ormlite.stmt.query.InSubQuery;
import com.j256.ormlite.stmt.query.IsNotNull;
import com.j256.ormlite.stmt.query.IsNull;
import com.j256.ormlite.stmt.query.ManyClause;
import com.j256.ormlite.stmt.query.NeedsFutureClause;
import com.j256.ormlite.stmt.query.Not;
import com.j256.ormlite.stmt.query.Raw;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/Where.class */
public class Where<T, ID> {
    private static final int CLAUSE_STACK_START_SIZE = 4;
    private int clauseStackLevel;
    private final DatabaseType databaseType;
    private final String idColumnName;
    private final FieldType idFieldType;
    private final StatementBuilder<T, ID> statementBuilder;
    private final TableInfo<T, ID> tableInfo;
    private Clause[] clauseStack = new Clause[4];
    private NeedsFutureClause needsFuture = null;

    public Where(TableInfo<T, ID> tableInfo, StatementBuilder<T, ID> statementBuilder, DatabaseType databaseType) {
        this.tableInfo = tableInfo;
        this.statementBuilder = statementBuilder;
        FieldType idField = tableInfo.getIdField();
        this.idFieldType = idField;
        if (idField == null) {
            this.idColumnName = null;
        } else {
            this.idColumnName = idField.getColumnName();
        }
        this.databaseType = databaseType;
    }

    private void addClause(Clause clause) {
        NeedsFutureClause needsFutureClause = this.needsFuture;
        if (needsFutureClause == null) {
            push(clause);
            return;
        }
        needsFutureClause.setMissingClause(clause);
        this.needsFuture = null;
    }

    private void addNeedsFuture(NeedsFutureClause needsFutureClause) {
        if (this.needsFuture == null) {
            this.needsFuture = needsFutureClause;
            return;
        }
        throw new IllegalStateException(this.needsFuture + " is already waiting for a future clause, can't add: " + needsFutureClause);
    }

    private Clause[] buildClauseArray(Where<T, ID>[] whereArr, String str) {
        if (whereArr == null || whereArr.length == 0) {
            return null;
        }
        Clause[] clauseArr = new Clause[whereArr.length];
        for (int length = whereArr.length - 1; length >= 0; length--) {
            clauseArr[length] = pop(str);
        }
        return clauseArr;
    }

    private QueryBuilder<T, ID> checkQueryBuilderMethod(String str) throws SQLException {
        StatementBuilder<T, ID> statementBuilder = this.statementBuilder;
        if (statementBuilder instanceof QueryBuilder) {
            return (QueryBuilder) statementBuilder;
        }
        throw new SQLException("Cannot call " + str + " on a statement of type " + this.statementBuilder.getType());
    }

    private FieldType findColumnFieldType(String str) {
        return this.tableInfo.getFieldTypeByColumnName(str);
    }

    /* renamed from: in */
    private Where<T, ID> m1123in(boolean z, String str, QueryBuilder<?, ?> queryBuilder) throws SQLException {
        if (queryBuilder.getSelectColumnCount() == 1) {
            queryBuilder.enableInnerQuery();
            addClause(new InSubQuery(str, findColumnFieldType(str), new QueryBuilder.InternalQueryBuilderWrapper(queryBuilder), z));
            return this;
        } else if (queryBuilder.getSelectColumnCount() == 0) {
            throw new SQLException("Inner query must have only 1 select column specified instead of *");
        } else {
            throw new SQLException("Inner query must have only 1 select column specified instead of " + queryBuilder.getSelectColumnCount() + ": " + queryBuilder.getSelectColumnsAsString());
        }
    }

    /* renamed from: in */
    private Where<T, ID> m1122in(boolean z, String str, Object... objArr) throws SQLException {
        if (objArr.length == 1) {
            String str2 = "IN";
            if (objArr[0].getClass().isArray()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Object argument to ");
                if (!z) {
                    str2 = "notId";
                }
                sb.append(str2);
                sb.append(" seems to be an array within an array");
                throw new IllegalArgumentException(sb.toString());
            } else if (objArr[0] instanceof Where) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Object argument to ");
                if (!z) {
                    str2 = "notId";
                }
                sb2.append(str2);
                sb2.append(" seems to be a Where object, did you mean the QueryBuilder?");
                throw new IllegalArgumentException(sb2.toString());
            } else if (objArr[0] instanceof PreparedStmt) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Object argument to ");
                if (!z) {
                    str2 = "notId";
                }
                sb3.append(str2);
                sb3.append(" seems to be a prepared statement, did you mean the QueryBuilder?");
                throw new IllegalArgumentException(sb3.toString());
            }
        }
        addClause(new C1821In(str, findColumnFieldType(str), objArr, z));
        return this;
    }

    private Clause peek() {
        return this.clauseStack[this.clauseStackLevel - 1];
    }

    private Clause pop(String str) {
        int i = this.clauseStackLevel;
        if (i == 0) {
            throw new IllegalStateException("Expecting there to be a clause already defined for '" + str + "' operation");
        }
        Clause[] clauseArr = this.clauseStack;
        int i2 = i - 1;
        this.clauseStackLevel = i2;
        Clause clause = clauseArr[i2];
        clauseArr[i2] = null;
        return clause;
    }

    private void push(Clause clause) {
        int i = this.clauseStackLevel;
        if (i == this.clauseStack.length) {
            Clause[] clauseArr = new Clause[i * 2];
            for (int i2 = 0; i2 < this.clauseStackLevel; i2++) {
                Clause[] clauseArr2 = this.clauseStack;
                clauseArr[i2] = clauseArr2[i2];
                clauseArr2[i2] = null;
            }
            this.clauseStack = clauseArr;
        }
        Clause[] clauseArr3 = this.clauseStack;
        int i3 = this.clauseStackLevel;
        this.clauseStackLevel = i3 + 1;
        clauseArr3[i3] = clause;
    }

    public Where<T, ID> and() {
        ManyClause manyClause = new ManyClause(pop("AND"), ManyClause.Operation.AND);
        push(manyClause);
        addNeedsFuture(manyClause);
        return this;
    }

    public Where<T, ID> and(int i) {
        if (i != 0) {
            Clause[] clauseArr = new Clause[i];
            while (true) {
                i--;
                if (i < 0) {
                    addClause(new ManyClause(clauseArr, ManyClause.Operation.AND));
                    return this;
                }
                clauseArr[i] = pop("AND");
            }
        } else {
            throw new IllegalArgumentException("Must have at least one clause in and(numClauses)");
        }
    }

    public Where<T, ID> and(Where<T, ID> where, Where<T, ID> where2) {
        addClause(new ManyClause(pop("AND"), pop("AND"), null, ManyClause.Operation.AND));
        return this;
    }

    public Where<T, ID> and(Where<T, ID> where, Where<T, ID> where2, Where<T, ID>... whereArr) {
        Clause[] buildClauseArray = buildClauseArray(whereArr, "AND");
        addClause(new ManyClause(pop("AND"), pop("AND"), buildClauseArray, ManyClause.Operation.AND));
        return this;
    }

    public void appendSql(String str, StringBuilder sb, List<ArgumentHolder> list) throws SQLException {
        int i = this.clauseStackLevel;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("Both the \"left-hand\" and \"right-hand\" clauses have been defined.  Did you miss an AND or OR?");
            }
            if (this.needsFuture != null) {
                throw new IllegalStateException("The SQL statement has not been finished since there are previous operations still waiting for clauses.");
            }
            peek().appendSql(this.databaseType, str, sb, list, null);
            return;
        }
        throw new IllegalStateException("No where clauses defined.  Did you miss a where operation?");
    }

    public Where<T, ID> between(String str, Object obj, Object obj2) throws SQLException {
        addClause(new Between(str, findColumnFieldType(str), obj, obj2));
        return this;
    }

    public long countOf() throws SQLException {
        return checkQueryBuilderMethod("countOf()").countOf();
    }

    /* renamed from: eq */
    public Where<T, ID> m1129eq(String str, Object obj) throws SQLException {
        addClause(new SimpleComparison(str, findColumnFieldType(str), obj, SimpleComparison.EQUAL_TO_OPERATION));
        return this;
    }

    public Where<T, ID> exists(QueryBuilder<?, ?> queryBuilder) {
        queryBuilder.enableInnerQuery();
        addClause(new Exists(new QueryBuilder.InternalQueryBuilderWrapper(queryBuilder)));
        return this;
    }

    /* renamed from: ge */
    public Where<T, ID> m1128ge(String str, Object obj) throws SQLException {
        addClause(new SimpleComparison(str, findColumnFieldType(str), obj, SimpleComparison.GREATER_THAN_EQUAL_TO_OPERATION));
        return this;
    }

    public String getStatement() throws SQLException {
        StringBuilder sb = new StringBuilder();
        appendSql(null, sb, new ArrayList());
        return sb.toString();
    }

    /* renamed from: gt */
    public Where<T, ID> m1127gt(String str, Object obj) throws SQLException {
        addClause(new SimpleComparison(str, findColumnFieldType(str), obj, SimpleComparison.GREATER_THAN_OPERATION));
        return this;
    }

    public <OD> Where<T, ID> idEq(Dao<OD, ?> dao, OD od) throws SQLException {
        String str = this.idColumnName;
        if (str != null) {
            addClause(new SimpleComparison(str, this.idFieldType, dao.extractId(od), SimpleComparison.EQUAL_TO_OPERATION));
            return this;
        }
        throw new SQLException("Object has no id column specified");
    }

    public Where<T, ID> idEq(ID id) throws SQLException {
        String str = this.idColumnName;
        if (str != null) {
            addClause(new SimpleComparison(str, this.idFieldType, id, SimpleComparison.EQUAL_TO_OPERATION));
            return this;
        }
        throw new SQLException("Object has no id column specified");
    }

    /* renamed from: in */
    public Where<T, ID> m1126in(String str, QueryBuilder<?, ?> queryBuilder) throws SQLException {
        return m1123in(true, str, queryBuilder);
    }

    /* renamed from: in */
    public Where<T, ID> m1125in(String str, Iterable<?> iterable) throws SQLException {
        addClause(new C1821In(str, findColumnFieldType(str), iterable, true));
        return this;
    }

    /* renamed from: in */
    public Where<T, ID> m1124in(String str, Object... objArr) throws SQLException {
        return m1122in(true, str, objArr);
    }

    public Where<T, ID> isNotNull(String str) throws SQLException {
        addClause(new IsNotNull(str, findColumnFieldType(str)));
        return this;
    }

    public Where<T, ID> isNull(String str) throws SQLException {
        addClause(new IsNull(str, findColumnFieldType(str)));
        return this;
    }

    public CloseableIterator<T> iterator() throws SQLException {
        return checkQueryBuilderMethod("iterator()").iterator();
    }

    /* renamed from: le */
    public Where<T, ID> m1121le(String str, Object obj) throws SQLException {
        addClause(new SimpleComparison(str, findColumnFieldType(str), obj, SimpleComparison.LESS_THAN_EQUAL_TO_OPERATION));
        return this;
    }

    public Where<T, ID> like(String str, Object obj) throws SQLException {
        addClause(new SimpleComparison(str, findColumnFieldType(str), obj, SimpleComparison.LIKE_OPERATION));
        return this;
    }

    /* renamed from: lt */
    public Where<T, ID> m1120lt(String str, Object obj) throws SQLException {
        addClause(new SimpleComparison(str, findColumnFieldType(str), obj, SimpleComparison.LESS_THAN_OPERATION));
        return this;
    }

    /* renamed from: ne */
    public Where<T, ID> m1119ne(String str, Object obj) throws SQLException {
        addClause(new SimpleComparison(str, findColumnFieldType(str), obj, SimpleComparison.NOT_EQUAL_TO_OPERATION));
        return this;
    }

    public Where<T, ID> not() {
        Not not = new Not();
        addClause(not);
        addNeedsFuture(not);
        return this;
    }

    public Where<T, ID> not(Where<T, ID> where) {
        addClause(new Not(pop("NOT")));
        return this;
    }

    public Where<T, ID> notIn(String str, QueryBuilder<?, ?> queryBuilder) throws SQLException {
        return m1123in(false, str, queryBuilder);
    }

    public Where<T, ID> notIn(String str, Iterable<?> iterable) throws SQLException {
        addClause(new C1821In(str, findColumnFieldType(str), iterable, false));
        return this;
    }

    public Where<T, ID> notIn(String str, Object... objArr) throws SQLException {
        return m1122in(false, str, objArr);
    }

    /* renamed from: or */
    public Where<T, ID> m1118or() {
        ManyClause manyClause = new ManyClause(pop("OR"), ManyClause.Operation.OR);
        push(manyClause);
        addNeedsFuture(manyClause);
        return this;
    }

    /* renamed from: or */
    public Where<T, ID> m1117or(int i) {
        if (i != 0) {
            Clause[] clauseArr = new Clause[i];
            while (true) {
                i--;
                if (i < 0) {
                    addClause(new ManyClause(clauseArr, ManyClause.Operation.OR));
                    return this;
                }
                clauseArr[i] = pop("OR");
            }
        } else {
            throw new IllegalArgumentException("Must have at least one clause in or(numClauses)");
        }
    }

    /* renamed from: or */
    public Where<T, ID> m1116or(Where<T, ID> where, Where<T, ID> where2) {
        addClause(new ManyClause(pop("OR"), pop("OR"), null, ManyClause.Operation.OR));
        return this;
    }

    /* renamed from: or */
    public Where<T, ID> m1115or(Where<T, ID> where, Where<T, ID> where2, Where<T, ID>... whereArr) {
        Clause[] buildClauseArray = buildClauseArray(whereArr, "OR");
        addClause(new ManyClause(pop("OR"), pop("OR"), buildClauseArray, ManyClause.Operation.OR));
        return this;
    }

    public PreparedQuery<T> prepare() throws SQLException {
        return this.statementBuilder.prepareStatement(null, false);
    }

    public List<T> query() throws SQLException {
        return checkQueryBuilderMethod("query()").query();
    }

    public QueryBuilder<T, ID> queryBuilder() throws SQLException {
        StatementBuilder<T, ID> statementBuilder = this.statementBuilder;
        if (statementBuilder instanceof QueryBuilder) {
            return (QueryBuilder) statementBuilder;
        }
        throw new SQLException("Cannot cast " + this.statementBuilder.getType() + " to QueryBuilder");
    }

    public T queryForFirst() throws SQLException {
        return checkQueryBuilderMethod("queryForFirst()").queryForFirst();
    }

    public GenericRawResults<String[]> queryRaw() throws SQLException {
        return checkQueryBuilderMethod("queryRaw()").queryRaw();
    }

    public String[] queryRawFirst() throws SQLException {
        return checkQueryBuilderMethod("queryRawFirst()").queryRawFirst();
    }

    public Where<T, ID> raw(String str, ArgumentHolder... argumentHolderArr) {
        for (ArgumentHolder argumentHolder : argumentHolderArr) {
            String columnName = argumentHolder.getColumnName();
            if (columnName != null) {
                argumentHolder.setMetaInfo(findColumnFieldType(columnName));
            } else if (argumentHolder.getSqlType() == null) {
                throw new IllegalArgumentException("Either the column name or SqlType must be set on each argument");
            }
        }
        addClause(new Raw(str, argumentHolderArr));
        return this;
    }

    public Where<T, ID> rawComparison(String str, String str2, Object obj) throws SQLException {
        addClause(new SimpleComparison(str, findColumnFieldType(str), obj, str2));
        return this;
    }

    public Where<T, ID> reset() {
        for (int i = 0; i < this.clauseStackLevel; i++) {
            this.clauseStack[i] = null;
        }
        this.clauseStackLevel = 0;
        return this;
    }

    public String toString() {
        if (this.clauseStackLevel == 0) {
            return "empty where clause";
        }
        Clause peek = peek();
        return "where clause: " + peek;
    }
}
