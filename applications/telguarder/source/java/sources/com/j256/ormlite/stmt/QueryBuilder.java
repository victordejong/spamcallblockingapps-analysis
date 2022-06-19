package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.CloseableIterator;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.stmt.query.ColumnNameOrRawSql;
import com.j256.ormlite.stmt.query.OrderBy;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/QueryBuilder.class */
public class QueryBuilder<T, ID> extends StatementBuilder<T, ID> {
    private String alias;
    private String countOfQuery;
    private boolean distinct;
    private List<ColumnNameOrRawSql> groupByList;
    private String having;
    private final FieldType idField;
    private boolean isInnerQuery;
    private List<JoinInfo> joinList;
    private Long limit;
    private Long offset;
    private List<OrderBy> orderByList;
    private FieldType[] resultFieldTypes;
    private boolean selectIdColumn;
    private List<ColumnNameOrRawSql> selectList;

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper.class */
    public static class InternalQueryBuilderWrapper {
        private final QueryBuilder<?, ?> queryBuilder;

        public InternalQueryBuilderWrapper(QueryBuilder<?, ?> queryBuilder) {
            this.queryBuilder = queryBuilder;
        }

        public void appendStatementString(StringBuilder sb, List<ArgumentHolder> list) throws SQLException {
            this.queryBuilder.appendStatementString(sb, list);
        }

        public FieldType[] getResultFieldTypes() {
            return this.queryBuilder.getResultFieldTypes();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/QueryBuilder$JoinInfo.class */
    public static class JoinInfo {
        FieldType localField;
        JoinWhereOperation operation;
        final QueryBuilder<?, ?> queryBuilder;
        FieldType remoteField;
        final JoinType type;

        public JoinInfo(JoinType joinType, QueryBuilder<?, ?> queryBuilder, JoinWhereOperation joinWhereOperation) {
            this.type = joinType;
            this.queryBuilder = queryBuilder;
            this.operation = joinWhereOperation;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/QueryBuilder$JoinType.class */
    public enum JoinType {
        INNER("INNER"),
        LEFT("LEFT");
        
        final String sql;

        JoinType(String str) {
            this.sql = str;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation.class */
    public enum JoinWhereOperation {
        AND(StatementBuilder.WhereOperation.AND),
        OR(StatementBuilder.WhereOperation.OR);
        
        final StatementBuilder.WhereOperation whereOperation;

        JoinWhereOperation(StatementBuilder.WhereOperation whereOperation) {
            this.whereOperation = whereOperation;
        }
    }

    public QueryBuilder(DatabaseType databaseType, TableInfo<T, ID> tableInfo, Dao<T, ID> dao) {
        super(databaseType, tableInfo, dao, StatementBuilder.StatementType.SELECT);
        FieldType idField = tableInfo.getIdField();
        this.idField = idField;
        this.selectIdColumn = idField != null;
    }

    private void addGroupBy(ColumnNameOrRawSql columnNameOrRawSql) {
        if (this.groupByList == null) {
            this.groupByList = new ArrayList();
        }
        this.groupByList.add(columnNameOrRawSql);
        this.selectIdColumn = false;
    }

    private void addJoinInfo(JoinType joinType, String str, String str2, QueryBuilder<?, ?> queryBuilder, JoinWhereOperation joinWhereOperation) throws SQLException {
        JoinInfo joinInfo = new JoinInfo(joinType, queryBuilder, joinWhereOperation);
        if (str == null) {
            matchJoinedFields(joinInfo, queryBuilder);
        } else {
            matchJoinedFieldsByName(joinInfo, str, str2, queryBuilder);
        }
        if (this.joinList == null) {
            this.joinList = new ArrayList();
        }
        this.joinList.add(joinInfo);
    }

    private void addOrderBy(OrderBy orderBy) {
        if (this.orderByList == null) {
            this.orderByList = new ArrayList();
        }
        this.orderByList.add(orderBy);
    }

    private void addSelectColumnToList(String str) {
        verifyColumnName(str);
        addSelectToList(ColumnNameOrRawSql.withColumnName(str));
    }

    private void addSelectToList(ColumnNameOrRawSql columnNameOrRawSql) {
        if (this.selectList == null) {
            this.selectList = new ArrayList();
        }
        this.selectList.add(columnNameOrRawSql);
    }

    private void appendAlias(StringBuilder sb) {
        sb.append(" AS ");
        this.databaseType.appendEscapedEntityName(sb, this.alias);
    }

    private void appendColumnName(StringBuilder sb, String str) {
        if (this.addTableName) {
            appendTableQualifier(sb);
            sb.append('.');
        }
        this.databaseType.appendEscapedEntityName(sb, str);
    }

    private void appendFieldColumnName(StringBuilder sb, FieldType fieldType, List<FieldType> list) {
        appendColumnName(sb, fieldType.getColumnName());
        if (list != null) {
            list.add(fieldType);
        }
    }

    private void appendGroupBys(StringBuilder sb, boolean z) {
        if (z) {
            sb.append("GROUP BY ");
        }
        for (ColumnNameOrRawSql columnNameOrRawSql : this.groupByList) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            if (columnNameOrRawSql.getRawSql() == null) {
                appendColumnName(sb, columnNameOrRawSql.getColumnName());
            } else {
                sb.append(columnNameOrRawSql.getRawSql());
            }
        }
        sb.append(' ');
    }

    private void appendJoinSql(StringBuilder sb) {
        for (JoinInfo joinInfo : this.joinList) {
            sb.append(joinInfo.type.sql);
            sb.append(" JOIN ");
            if (joinInfo.queryBuilder.tableInfo.getSchemaName() != null && joinInfo.queryBuilder.tableInfo.getSchemaName().length() > 0) {
                this.databaseType.appendEscapedEntityName(sb, joinInfo.queryBuilder.tableInfo.getSchemaName());
                sb.append('.');
            }
            this.databaseType.appendEscapedEntityName(sb, joinInfo.queryBuilder.tableName);
            if (joinInfo.queryBuilder.alias != null) {
                joinInfo.queryBuilder.appendAlias(sb);
            }
            sb.append(" ON ");
            appendTableQualifier(sb);
            sb.append('.');
            this.databaseType.appendEscapedEntityName(sb, joinInfo.localField.getColumnName());
            sb.append(" = ");
            joinInfo.queryBuilder.appendTableQualifier(sb);
            sb.append('.');
            this.databaseType.appendEscapedEntityName(sb, joinInfo.remoteField.getColumnName());
            sb.append(' ');
            if (joinInfo.queryBuilder.joinList != null) {
                joinInfo.queryBuilder.appendJoinSql(sb);
            }
        }
    }

    private void appendLimit(StringBuilder sb) {
        if (this.limit == null || !this.databaseType.isLimitSqlSupported()) {
            return;
        }
        this.databaseType.appendLimitValue(sb, this.limit.longValue(), this.offset);
    }

    private void appendOffset(StringBuilder sb) throws SQLException {
        if (this.offset == null) {
            return;
        }
        if (!this.databaseType.isOffsetLimitArgument()) {
            this.databaseType.appendOffsetValue(sb, this.offset.longValue());
        } else if (this.limit == null) {
            throw new SQLException("If the offset is specified, limit must also be specified with this database");
        }
    }

    private void appendOrderBys(StringBuilder sb, boolean z, List<ArgumentHolder> list) {
        boolean z2;
        if (z) {
            sb.append("ORDER BY ");
        }
        boolean z3 = z;
        for (OrderBy orderBy : this.orderByList) {
            int i = 0;
            if (z3) {
                z2 = false;
            } else {
                sb.append(',');
                z2 = z3;
            }
            if (orderBy.getRawSql() == null) {
                appendColumnName(sb, orderBy.getColumnName());
                if (!orderBy.isAscending()) {
                    sb.append(" DESC");
                }
                if (orderBy.isNullsFirst()) {
                    sb.append(" NULLS FIRST");
                    z3 = z2;
                } else {
                    z3 = z2;
                    if (orderBy.isNullsLast()) {
                        sb.append(" NULLS LAST");
                        z3 = z2;
                    }
                }
            } else {
                sb.append(orderBy.getRawSql());
                z3 = z2;
                if (orderBy.getOrderByArgs() != null) {
                    ArgumentHolder[] orderByArgs = orderBy.getOrderByArgs();
                    int length = orderByArgs.length;
                    while (true) {
                        z3 = z2;
                        if (i < length) {
                            list.add(orderByArgs[i]);
                            i++;
                        }
                    }
                }
            }
        }
        sb.append(' ');
    }

    private void appendSelects(StringBuilder sb) {
        boolean z;
        this.type = StatementBuilder.StatementType.SELECT;
        if (this.selectList == null) {
            if (this.addTableName) {
                appendTableQualifier(sb);
                sb.append('.');
            }
            sb.append("* ");
            this.resultFieldTypes = this.tableInfo.getFieldTypes();
            return;
        }
        boolean z2 = this.isInnerQuery;
        List<FieldType> arrayList = new ArrayList<>(this.selectList.size() + 1);
        boolean z3 = true;
        for (ColumnNameOrRawSql columnNameOrRawSql : this.selectList) {
            if (columnNameOrRawSql.getRawSql() != null) {
                this.type = StatementBuilder.StatementType.SELECT_RAW;
                if (z3) {
                    z3 = false;
                } else {
                    sb.append(", ");
                }
                sb.append(columnNameOrRawSql.getRawSql());
            } else {
                FieldType fieldTypeByColumnName = this.tableInfo.getFieldTypeByColumnName(columnNameOrRawSql.getColumnName());
                if (fieldTypeByColumnName.isForeignCollection()) {
                    arrayList.add(fieldTypeByColumnName);
                } else {
                    if (z3) {
                        z = false;
                    } else {
                        sb.append(", ");
                        z = z3;
                    }
                    appendFieldColumnName(sb, fieldTypeByColumnName, arrayList);
                    z3 = z;
                    if (fieldTypeByColumnName == this.idField) {
                        z2 = true;
                        z3 = z;
                    }
                }
            }
        }
        if (this.type != StatementBuilder.StatementType.SELECT_RAW) {
            if (!z2 && this.selectIdColumn) {
                if (!z3) {
                    sb.append(',');
                }
                appendFieldColumnName(sb, this.idField, arrayList);
            }
            this.resultFieldTypes = (FieldType[]) arrayList.toArray(new FieldType[arrayList.size()]);
        }
        sb.append(' ');
    }

    private void matchJoinedFields(JoinInfo joinInfo, QueryBuilder<?, ?> queryBuilder) throws SQLException {
        FieldType[] fieldTypes;
        FieldType[] fieldTypes2;
        for (FieldType fieldType : this.tableInfo.getFieldTypes()) {
            FieldType foreignRefField = fieldType.getForeignRefField();
            if (fieldType.isForeign() && foreignRefField.equals(queryBuilder.tableInfo.getIdField())) {
                joinInfo.localField = fieldType;
                joinInfo.remoteField = foreignRefField;
                return;
            }
        }
        for (FieldType fieldType2 : queryBuilder.tableInfo.getFieldTypes()) {
            if (fieldType2.isForeign() && fieldType2.getForeignIdField().equals(this.idField)) {
                joinInfo.localField = this.idField;
                joinInfo.remoteField = fieldType2;
                return;
            }
        }
        throw new SQLException("Could not find a foreign " + this.tableInfo.getDataClass() + " field in " + queryBuilder.tableInfo.getDataClass() + " or vice versa");
    }

    private void matchJoinedFieldsByName(JoinInfo joinInfo, String str, String str2, QueryBuilder<?, ?> queryBuilder) throws SQLException {
        joinInfo.localField = this.tableInfo.getFieldTypeByColumnName(str);
        if (joinInfo.localField == null) {
            throw new SQLException("Could not find field in " + this.tableInfo.getDataClass() + " that has column-name '" + str + "'");
        }
        joinInfo.remoteField = queryBuilder.tableInfo.getFieldTypeByColumnName(str2);
        if (joinInfo.remoteField != null) {
            return;
        }
        throw new SQLException("Could not find field in " + queryBuilder.tableInfo.getDataClass() + " that has column-name '" + str2 + "'");
    }

    private boolean maybeAppendGroupBys(StringBuilder sb, boolean z) {
        boolean z2 = z;
        if (this.groupByList != null) {
            appendGroupBys(sb, z);
            z2 = false;
        }
        List<JoinInfo> list = this.joinList;
        boolean z3 = z2;
        if (list != null) {
            Iterator<JoinInfo> it = list.iterator();
            while (true) {
                z3 = z2;
                if (!it.hasNext()) {
                    break;
                }
                z2 = it.next().queryBuilder.maybeAppendGroupBys(sb, z2);
            }
        }
        return z3;
    }

    private void maybeAppendHaving(StringBuilder sb) {
        if (this.having != null) {
            sb.append("HAVING ");
            sb.append(this.having);
            sb.append(' ');
        }
    }

    private boolean maybeAppendOrderBys(StringBuilder sb, List<ArgumentHolder> list, boolean z) {
        List<OrderBy> list2 = this.orderByList;
        boolean z2 = z;
        if (list2 != null) {
            z2 = z;
            if (!list2.isEmpty()) {
                appendOrderBys(sb, z, list);
                z2 = false;
            }
        }
        List<JoinInfo> list3 = this.joinList;
        boolean z3 = z2;
        if (list3 != null) {
            Iterator<JoinInfo> it = list3.iterator();
            while (true) {
                z3 = z2;
                if (!it.hasNext()) {
                    break;
                }
                z2 = it.next().queryBuilder.maybeAppendOrderBys(sb, list, z2);
            }
        }
        return z3;
    }

    private void setAddTableName(boolean z) {
        this.addTableName = z;
        List<JoinInfo> list = this.joinList;
        if (list != null) {
            for (JoinInfo joinInfo : list) {
                joinInfo.queryBuilder.setAddTableName(z);
            }
        }
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected void appendStatementEnd(StringBuilder sb, List<ArgumentHolder> list) throws SQLException {
        maybeAppendGroupBys(sb, true);
        maybeAppendHaving(sb);
        maybeAppendOrderBys(sb, list, true);
        if (!this.databaseType.isLimitAfterSelect()) {
            appendLimit(sb);
        }
        appendOffset(sb);
        setAddTableName(false);
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected void appendStatementStart(StringBuilder sb, List<ArgumentHolder> list) {
        if (this.joinList == null) {
            setAddTableName(false);
        } else {
            setAddTableName(true);
        }
        sb.append("SELECT ");
        if (this.databaseType.isLimitAfterSelect()) {
            appendLimit(sb);
        }
        if (this.distinct) {
            sb.append("DISTINCT ");
        }
        if (this.countOfQuery == null) {
            appendSelects(sb);
        } else {
            this.type = StatementBuilder.StatementType.SELECT_LONG;
            sb.append("COUNT(");
            sb.append(this.countOfQuery);
            sb.append(") ");
        }
        sb.append("FROM ");
        if (this.tableInfo.getSchemaName() != null && this.tableInfo.getSchemaName().length() > 0) {
            this.databaseType.appendEscapedEntityName(sb, this.tableInfo.getSchemaName());
            sb.append('.');
        }
        this.databaseType.appendEscapedEntityName(sb, this.tableName);
        if (this.alias != null) {
            appendAlias(sb);
        }
        sb.append(' ');
        if (this.joinList != null) {
            appendJoinSql(sb);
        }
    }

    protected void appendTableQualifier(StringBuilder sb) {
        if (this.tableInfo.getSchemaName() != null && this.tableInfo.getSchemaName().length() > 0) {
            this.databaseType.appendEscapedEntityName(sb, this.tableInfo.getSchemaName());
            sb.append('.');
        }
        this.databaseType.appendEscapedEntityName(sb, getTableName());
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    public boolean appendWhereStatement(StringBuilder sb, List<ArgumentHolder> list, StatementBuilder.WhereOperation whereOperation) throws SQLException {
        boolean z = whereOperation == StatementBuilder.WhereOperation.FIRST;
        if (this.where != null) {
            z = super.appendWhereStatement(sb, list, whereOperation);
        }
        List<JoinInfo> list2 = this.joinList;
        boolean z2 = z;
        if (list2 != null) {
            Iterator<JoinInfo> it = list2.iterator();
            while (true) {
                z2 = z;
                if (!it.hasNext()) {
                    break;
                }
                JoinInfo next = it.next();
                z = next.queryBuilder.appendWhereStatement(sb, list, z ? StatementBuilder.WhereOperation.FIRST : next.operation.whereOperation);
            }
        }
        return z2;
    }

    public long countOf() throws SQLException {
        String str = this.countOfQuery;
        try {
            setCountOf(true);
            return this.dao.countOf(prepare());
        } finally {
            setCountOf(str);
        }
    }

    public long countOf(String str) throws SQLException {
        String str2 = this.countOfQuery;
        try {
            setCountOf(str);
            return this.dao.countOf(prepare());
        } finally {
            setCountOf(str2);
        }
    }

    public QueryBuilder<T, ID> distinct() {
        this.distinct = true;
        this.selectIdColumn = false;
        return this;
    }

    public void enableInnerQuery() {
        this.isInnerQuery = true;
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected FieldType[] getResultFieldTypes() {
        return this.resultFieldTypes;
    }

    public int getSelectColumnCount() {
        if (this.countOfQuery != null) {
            return 1;
        }
        List<ColumnNameOrRawSql> list = this.selectList;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public String getSelectColumnsAsString() {
        if (this.countOfQuery == null) {
            List<ColumnNameOrRawSql> list = this.selectList;
            return list == null ? "" : list.toString();
        }
        return "COUNT(" + this.countOfQuery + ")";
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected String getTableName() {
        String str = this.alias;
        String str2 = str;
        if (str == null) {
            str2 = this.tableName;
        }
        return str2;
    }

    public QueryBuilder<T, ID> groupBy(String str) {
        if (!verifyColumnName(str).isForeignCollection()) {
            addGroupBy(ColumnNameOrRawSql.withColumnName(str));
            return this;
        }
        throw new IllegalArgumentException("Can't groupBy foreign collection field: " + str);
    }

    public QueryBuilder<T, ID> groupByRaw(String str) {
        addGroupBy(ColumnNameOrRawSql.withRawSql(str));
        return this;
    }

    public QueryBuilder<T, ID> having(String str) {
        this.having = str;
        return this;
    }

    public CloseableIterator<T> iterator() throws SQLException {
        return this.dao.iterator(prepare());
    }

    public QueryBuilder<T, ID> join(QueryBuilder<?, ?> queryBuilder) throws SQLException {
        addJoinInfo(JoinType.INNER, null, null, queryBuilder, JoinWhereOperation.AND);
        return this;
    }

    public QueryBuilder<T, ID> join(QueryBuilder<?, ?> queryBuilder, JoinType joinType, JoinWhereOperation joinWhereOperation) throws SQLException {
        addJoinInfo(joinType, null, null, queryBuilder, joinWhereOperation);
        return this;
    }

    public QueryBuilder<T, ID> join(String str, String str2, QueryBuilder<?, ?> queryBuilder) throws SQLException {
        addJoinInfo(JoinType.INNER, str, str2, queryBuilder, JoinWhereOperation.AND);
        return this;
    }

    public QueryBuilder<T, ID> join(String str, String str2, QueryBuilder<?, ?> queryBuilder, JoinType joinType, JoinWhereOperation joinWhereOperation) throws SQLException {
        addJoinInfo(joinType, str, str2, queryBuilder, joinWhereOperation);
        return this;
    }

    public QueryBuilder<T, ID> joinOr(QueryBuilder<?, ?> queryBuilder) throws SQLException {
        addJoinInfo(JoinType.INNER, null, null, queryBuilder, JoinWhereOperation.OR);
        return this;
    }

    public QueryBuilder<T, ID> leftJoin(QueryBuilder<?, ?> queryBuilder) throws SQLException {
        addJoinInfo(JoinType.LEFT, null, null, queryBuilder, JoinWhereOperation.AND);
        return this;
    }

    public QueryBuilder<T, ID> leftJoinOr(QueryBuilder<?, ?> queryBuilder) throws SQLException {
        addJoinInfo(JoinType.LEFT, null, null, queryBuilder, JoinWhereOperation.OR);
        return this;
    }

    public QueryBuilder<T, ID> limit(Long l) {
        this.limit = l;
        return this;
    }

    public QueryBuilder<T, ID> offset(Long l) throws SQLException {
        if (this.databaseType.isOffsetSqlSupported()) {
            this.offset = l;
            return this;
        }
        throw new SQLException("Offset is not supported by this database");
    }

    public QueryBuilder<T, ID> orderBy(String str, boolean z) {
        if (!verifyColumnName(str).isForeignCollection()) {
            addOrderBy(new OrderBy(str, z));
            return this;
        }
        throw new IllegalArgumentException("Can't orderBy foreign collection field: " + str);
    }

    public QueryBuilder<T, ID> orderByNullsFirst(String str, boolean z) {
        addOrderBy(new OrderBy(str, z, true));
        return this;
    }

    public QueryBuilder<T, ID> orderByNullsLast(String str, boolean z) {
        addOrderBy(new OrderBy(str, z, false));
        return this;
    }

    public QueryBuilder<T, ID> orderByRaw(String str) {
        addOrderBy(new OrderBy(str, (ArgumentHolder[]) null));
        return this;
    }

    public QueryBuilder<T, ID> orderByRaw(String str, ArgumentHolder... argumentHolderArr) {
        addOrderBy(new OrderBy(str, argumentHolderArr));
        return this;
    }

    public PreparedQuery<T> prepare() throws SQLException {
        return super.prepareStatement(this.limit, this.selectList == null);
    }

    public List<T> query() throws SQLException {
        return this.dao.query(prepare());
    }

    public T queryForFirst() throws SQLException {
        return this.dao.queryForFirst(prepare());
    }

    public GenericRawResults<String[]> queryRaw() throws SQLException {
        return this.dao.queryRaw(prepareStatementString(), new String[0]);
    }

    public String[] queryRawFirst() throws SQLException {
        return this.dao.queryRaw(prepareStatementString(), new String[0]).getFirstResult();
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    public void reset() {
        super.reset();
        this.distinct = false;
        this.selectIdColumn = this.idField != null;
        List<ColumnNameOrRawSql> list = this.selectList;
        if (list != null) {
            list.clear();
            this.selectList = null;
        }
        List<OrderBy> list2 = this.orderByList;
        if (list2 != null) {
            list2.clear();
            this.orderByList = null;
        }
        List<ColumnNameOrRawSql> list3 = this.groupByList;
        if (list3 != null) {
            list3.clear();
            this.groupByList = null;
        }
        this.isInnerQuery = false;
        this.countOfQuery = null;
        this.having = null;
        this.limit = null;
        this.offset = null;
        List<JoinInfo> list4 = this.joinList;
        if (list4 != null) {
            list4.clear();
            this.joinList = null;
        }
        this.addTableName = false;
        this.alias = null;
    }

    public QueryBuilder<T, ID> selectColumns(Iterable<String> iterable) {
        for (String str : iterable) {
            addSelectColumnToList(str);
        }
        return this;
    }

    public QueryBuilder<T, ID> selectColumns(String... strArr) {
        for (String str : strArr) {
            addSelectColumnToList(str);
        }
        return this;
    }

    public QueryBuilder<T, ID> selectRaw(String... strArr) {
        for (String str : strArr) {
            addSelectToList(ColumnNameOrRawSql.withRawSql(str));
        }
        return this;
    }

    public QueryBuilder<T, ID> setAlias(String str) {
        this.alias = str;
        return this;
    }

    public QueryBuilder<T, ID> setCountOf(String str) {
        this.countOfQuery = str;
        return this;
    }

    public QueryBuilder<T, ID> setCountOf(boolean z) {
        return setCountOf("*");
    }

    @Override // com.j256.ormlite.stmt.StatementBuilder
    protected boolean shouldPrependTableNameToColumns() {
        return this.joinList != null;
    }
}
