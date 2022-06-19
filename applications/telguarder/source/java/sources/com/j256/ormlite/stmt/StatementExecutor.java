package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DatabaseResultsMapper;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.dao.RawRowObjectMapper;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.stmt.mapped.MappedCreate;
import com.j256.ormlite.stmt.mapped.MappedDelete;
import com.j256.ormlite.stmt.mapped.MappedDeleteCollection;
import com.j256.ormlite.stmt.mapped.MappedQueryForFieldEq;
import com.j256.ormlite.stmt.mapped.MappedRefresh;
import com.j256.ormlite.stmt.mapped.MappedUpdate;
import com.j256.ormlite.stmt.mapped.MappedUpdateId;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import java.io.Closeable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/StatementExecutor.class */
public class StatementExecutor<T, ID> implements GenericRowMapper<String[]> {
    private static Logger logger = LoggerFactory.getLogger(StatementExecutor.class);
    private static final FieldType[] noFieldTypes = new FieldType[0];
    private String countStarQuery;
    private final Dao<T, ID> dao;
    private final DatabaseType databaseType;
    private FieldType[] ifExistsFieldTypes;
    private String ifExistsQuery;
    private final ThreadLocal<Boolean> localIsInBatchMode = new ThreadLocal<Boolean>() { // from class: com.j256.ormlite.stmt.StatementExecutor.1
        @Override // java.lang.ThreadLocal
        public Boolean initialValue() {
            return false;
        }
    };
    private MappedDelete<T, ID> mappedDelete;
    private MappedCreate<T, ID> mappedInsert;
    private MappedQueryForFieldEq<T, ID> mappedQueryForId;
    private MappedRefresh<T, ID> mappedRefresh;
    private MappedUpdate<T, ID> mappedUpdate;
    private MappedUpdateId<T, ID> mappedUpdateId;
    private PreparedQuery<T> preparedQueryForAll;
    private RawRowMapper<T> rawRowMapper;
    private final TableInfo<T, ID> tableInfo;

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper.class */
    public static class ObjectArrayRowMapper implements GenericRowMapper<Object[]> {
        private final DataType[] columnTypes;

        public ObjectArrayRowMapper(DataType[] dataTypeArr) {
            this.columnTypes = dataTypeArr;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public Object[] mapRow(DatabaseResults databaseResults) throws SQLException {
            int columnCount = databaseResults.getColumnCount();
            Object[] objArr = new Object[columnCount];
            int i = 0;
            while (i < columnCount) {
                DataType[] dataTypeArr = this.columnTypes;
                objArr[i] = (i >= dataTypeArr.length ? DataType.STRING : dataTypeArr[i]).getDataPersister().resultToJava(null, databaseResults, i);
                i++;
            }
            return objArr;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/StatementExecutor$UserDatabaseResultsMapper.class */
    public static class UserDatabaseResultsMapper<UO> implements GenericRowMapper<UO> {
        public final DatabaseResultsMapper<UO> mapper;

        private UserDatabaseResultsMapper(DatabaseResultsMapper<UO> databaseResultsMapper) {
            this.mapper = databaseResultsMapper;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public UO mapRow(DatabaseResults databaseResults) throws SQLException {
            return this.mapper.mapRow(databaseResults);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper.class */
    public static class UserRawRowMapper<UO> implements GenericRowMapper<UO> {
        private String[] columnNames;
        private final RawRowMapper<UO> mapper;
        private final GenericRowMapper<String[]> stringRowMapper;

        public UserRawRowMapper(RawRowMapper<UO> rawRowMapper, GenericRowMapper<String[]> genericRowMapper) {
            this.mapper = rawRowMapper;
            this.stringRowMapper = genericRowMapper;
        }

        private String[] getColumnNames(DatabaseResults databaseResults) throws SQLException {
            String[] strArr = this.columnNames;
            if (strArr != null) {
                return strArr;
            }
            String[] columnNames = databaseResults.getColumnNames();
            this.columnNames = columnNames;
            return columnNames;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public UO mapRow(DatabaseResults databaseResults) throws SQLException {
            return this.mapper.mapRow(getColumnNames(databaseResults), this.stringRowMapper.mapRow(databaseResults));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper.class */
    public static class UserRawRowObjectMapper<UO> implements GenericRowMapper<UO> {
        private String[] columnNames;
        private final DataType[] columnTypes;
        private final RawRowObjectMapper<UO> mapper;

        public UserRawRowObjectMapper(RawRowObjectMapper<UO> rawRowObjectMapper, DataType[] dataTypeArr) {
            this.mapper = rawRowObjectMapper;
            this.columnTypes = dataTypeArr;
        }

        private String[] getColumnNames(DatabaseResults databaseResults) throws SQLException {
            String[] strArr = this.columnNames;
            if (strArr != null) {
                return strArr;
            }
            String[] columnNames = databaseResults.getColumnNames();
            this.columnNames = columnNames;
            return columnNames;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public UO mapRow(DatabaseResults databaseResults) throws SQLException {
            int columnCount = databaseResults.getColumnCount();
            Object[] objArr = new Object[columnCount];
            for (int i = 0; i < columnCount; i++) {
                DataType[] dataTypeArr = this.columnTypes;
                if (i >= dataTypeArr.length) {
                    objArr[i] = null;
                } else {
                    objArr[i] = dataTypeArr[i].getDataPersister().resultToJava(null, databaseResults, i);
                }
            }
            return this.mapper.mapRow(getColumnNames(databaseResults), this.columnTypes, objArr);
        }
    }

    public StatementExecutor(DatabaseType databaseType, TableInfo<T, ID> tableInfo, Dao<T, ID> dao) {
        this.databaseType = databaseType;
        this.tableInfo = tableInfo;
        this.dao = dao;
    }

    private void assignStatementArguments(CompiledStatement compiledStatement, String[] strArr) throws SQLException {
        for (int i = 0; i < strArr.length; i++) {
            compiledStatement.setObject(i, strArr[i], SqlType.STRING);
        }
    }

    private <CT> CT doCallBatchTasks(ConnectionSource connectionSource, Callable<CT> callable) throws SQLException {
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(this.tableInfo.getTableName());
        try {
            this.localIsInBatchMode.set(true);
            return (CT) doCallBatchTasks(readWriteConnection, connectionSource.saveSpecialConnection(readWriteConnection), callable);
        } finally {
            connectionSource.clearSpecialConnection(readWriteConnection);
            connectionSource.releaseConnection(readWriteConnection);
            this.localIsInBatchMode.set(Boolean.valueOf(false));
            Dao<T, ID> dao = this.dao;
            if (dao != null) {
                dao.notifyChanges();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <CT> CT doCallBatchTasks(com.j256.ormlite.support.DatabaseConnection r6, boolean r7, java.util.concurrent.Callable<CT> r8) throws java.sql.SQLException {
        /*
            r5 = this;
            r0 = r5
            com.j256.ormlite.db.DatabaseType r0 = r0.databaseType
            boolean r0 = r0.isBatchUseTransaction()
            if (r0 == 0) goto L17
            r0 = r6
            r1 = r7
            r2 = r5
            com.j256.ormlite.db.DatabaseType r2 = r2.databaseType
            r3 = r8
            java.lang.Object r0 = com.j256.ormlite.misc.TransactionManager.callInTransaction(r0, r1, r2, r3)
            return r0
        L17:
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r6
            boolean r0 = r0.isAutoCommitSupported()     // Catch: java.lang.Throwable -> L8a
            if (r0 == 0) goto L57
            r0 = r9
            r10 = r0
            r0 = r6
            boolean r0 = r0.isAutoCommit()     // Catch: java.lang.Throwable -> L8a
            if (r0 == 0) goto L57
            r0 = r6
            r1 = 0
            r0.setAutoCommit(r1)     // Catch: java.lang.Throwable -> L8a
            com.j256.ormlite.logger.Logger r0 = com.j256.ormlite.stmt.StatementExecutor.logger     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L8a
            java.lang.String r1 = "disabled auto-commit on table {} before batch tasks"
            r2 = r5
            com.j256.ormlite.table.TableInfo<T, ID> r2 = r2.tableInfo     // Catch: java.lang.Throwable -> L50
            java.lang.String r2 = r2.getTableName()     // Catch: java.lang.Throwable -> L50
            r0.debug(r1, r2)     // Catch: java.lang.Throwable -> L50
            r0 = 1
            r10 = r0
            goto L57
        L50:
            r8 = move-exception
            r0 = 1
            r10 = r0
            goto L8e
        L57:
            r0 = r8
            java.lang.Object r0 = r0.call()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f java.sql.SQLException -> L87
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L79
            r0 = r6
            r1 = 1
            r0.setAutoCommit(r1)
            com.j256.ormlite.logger.Logger r0 = com.j256.ormlite.stmt.StatementExecutor.logger
            java.lang.String r1 = "re-enabled auto-commit on table {} after batch tasks"
            r2 = r5
            com.j256.ormlite.table.TableInfo<T, ID> r2 = r2.tableInfo
            java.lang.String r2 = r2.getTableName()
            r0.debug(r1, r2)
        L79:
            r0 = r8
            return r0
        L7b:
            r8 = move-exception
            goto L8e
        L7f:
            r8 = move-exception
            java.lang.String r0 = "Batch tasks callable threw non-SQL exception"
            r1 = r8
            java.sql.SQLException r0 = com.j256.ormlite.misc.SqlExceptionUtil.create(r0, r1)     // Catch: java.lang.Throwable -> L7b
            throw r0     // Catch: java.lang.Throwable -> L7b
        L87:
            r8 = move-exception
            r0 = r8
            throw r0     // Catch: java.lang.Throwable -> L7b
        L8a:
            r8 = move-exception
            r0 = 0
            r10 = r0
        L8e:
            r0 = r10
            if (r0 == 0) goto La9
            r0 = r6
            r1 = 1
            r0.setAutoCommit(r1)
            com.j256.ormlite.logger.Logger r0 = com.j256.ormlite.stmt.StatementExecutor.logger
            java.lang.String r1 = "re-enabled auto-commit on table {} after batch tasks"
            r2 = r5
            com.j256.ormlite.table.TableInfo<T, ID> r2 = r2.tableInfo
            java.lang.String r2 = r2.getTableName()
            r0.debug(r1, r2)
        La9:
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.stmt.StatementExecutor.doCallBatchTasks(com.j256.ormlite.support.DatabaseConnection, boolean, java.util.concurrent.Callable):java.lang.Object");
    }

    private void prepareQueryForAll() throws SQLException {
        if (this.preparedQueryForAll == null) {
            this.preparedQueryForAll = new QueryBuilder(this.databaseType, this.tableInfo, this.dao).prepare();
        }
    }

    public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> baseDaoImpl, ConnectionSource connectionSource, int i, ObjectCache objectCache) throws SQLException {
        prepareQueryForAll();
        return buildIterator(baseDaoImpl, connectionSource, this.preparedQueryForAll, objectCache, i);
    }

    public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> baseDaoImpl, ConnectionSource connectionSource, PreparedStmt<T> preparedStmt, ObjectCache objectCache, int i) throws SQLException {
        Throwable th;
        CompiledStatement compiledStatement;
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        try {
            CompiledStatement compile = preparedStmt.compile(readOnlyConnection, StatementBuilder.StatementType.SELECT, i);
            try {
                SelectIterator<T, ID> selectIterator = new SelectIterator<>(this.tableInfo.getDataClass(), baseDaoImpl, preparedStmt, connectionSource, readOnlyConnection, compile, objectCache);
                IOUtils.closeThrowSqlException(null, "compiled statement");
                return selectIterator;
            } catch (Throwable th2) {
                th = th2;
                compiledStatement = compile;
                IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
                if (readOnlyConnection != null) {
                    connectionSource.releaseConnection(readOnlyConnection);
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            compiledStatement = null;
        }
    }

    public <CT> CT callBatchTasks(ConnectionSource connectionSource, Callable<CT> callable) throws SQLException {
        CT ct;
        if (connectionSource.isSingleConnection(this.tableInfo.getTableName())) {
            synchronized (this) {
                ct = (CT) doCallBatchTasks(connectionSource, callable);
            }
            return ct;
        }
        return (CT) doCallBatchTasks(connectionSource, callable);
    }

    public int create(DatabaseConnection databaseConnection, T t, ObjectCache objectCache) throws SQLException {
        if (this.mappedInsert == null) {
            this.mappedInsert = MappedCreate.build(this.dao, this.tableInfo);
        }
        int insert = this.mappedInsert.insert(this.databaseType, databaseConnection, t, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return insert;
    }

    public int delete(DatabaseConnection databaseConnection, PreparedDelete<T> preparedDelete) throws SQLException {
        CompiledStatement compile = preparedDelete.compile(databaseConnection, StatementBuilder.StatementType.DELETE);
        try {
            int runUpdate = compile.runUpdate();
            if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
                this.dao.notifyChanges();
            }
            return runUpdate;
        } finally {
            IOUtils.closeThrowSqlException(compile, "compiled statement");
        }
    }

    public int delete(DatabaseConnection databaseConnection, T t, ObjectCache objectCache) throws SQLException {
        if (this.mappedDelete == null) {
            this.mappedDelete = MappedDelete.build(this.dao, this.tableInfo);
        }
        int delete = this.mappedDelete.delete(databaseConnection, t, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return delete;
    }

    public int deleteById(DatabaseConnection databaseConnection, ID id, ObjectCache objectCache) throws SQLException {
        if (this.mappedDelete == null) {
            this.mappedDelete = MappedDelete.build(this.dao, this.tableInfo);
        }
        int deleteById = this.mappedDelete.deleteById(databaseConnection, id, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return deleteById;
    }

    public int deleteIds(DatabaseConnection databaseConnection, Collection<ID> collection, ObjectCache objectCache) throws SQLException {
        int deleteIds = MappedDeleteCollection.deleteIds(this.dao, this.tableInfo, databaseConnection, collection, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return deleteIds;
    }

    public int deleteObjects(DatabaseConnection databaseConnection, Collection<T> collection, ObjectCache objectCache) throws SQLException {
        int deleteObjects = MappedDeleteCollection.deleteObjects(this.dao, this.tableInfo, databaseConnection, collection, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return deleteObjects;
    }

    public int executeRaw(DatabaseConnection databaseConnection, String str, String[] strArr) throws SQLException {
        logger.debug("running raw execute statement: {}", str);
        if (strArr.length > 0) {
            logger.trace("execute arguments: {}", (Object) strArr);
        }
        CompiledStatement compileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.EXECUTE, noFieldTypes, -1, false);
        try {
            assignStatementArguments(compileStatement, strArr);
            return compileStatement.runExecute();
        } finally {
            IOUtils.closeThrowSqlException(compileStatement, "compiled statement");
        }
    }

    public int executeRawNoArgs(DatabaseConnection databaseConnection, String str) throws SQLException {
        logger.debug("running raw execute statement: {}", str);
        return databaseConnection.executeStatement(str, -1);
    }

    public RawRowMapper<T> getRawRowMapper() {
        if (this.rawRowMapper == null) {
            this.rawRowMapper = new RawRowMapperImpl(this.dao);
        }
        return this.rawRowMapper;
    }

    public GenericRowMapper<T> getSelectStarRowMapper() throws SQLException {
        prepareQueryForAll();
        return this.preparedQueryForAll;
    }

    public boolean ifExists(DatabaseConnection databaseConnection, ID id) throws SQLException {
        boolean z = false;
        if (this.ifExistsQuery == null) {
            QueryBuilder queryBuilder = new QueryBuilder(this.databaseType, this.tableInfo, this.dao);
            queryBuilder.selectRaw("COUNT(*)");
            queryBuilder.where().m1129eq(this.tableInfo.getIdField().getColumnName(), new SelectArg());
            this.ifExistsQuery = queryBuilder.prepareStatementString();
            this.ifExistsFieldTypes = new FieldType[]{this.tableInfo.getIdField()};
        }
        long queryForLong = databaseConnection.queryForLong(this.ifExistsQuery, new Object[]{this.tableInfo.getIdField().convertJavaFieldToSqlArgValue(id)}, this.ifExistsFieldTypes);
        logger.debug("query of '{}' returned {}", this.ifExistsQuery, Long.valueOf(queryForLong));
        if (queryForLong != 0) {
            z = true;
        }
        return z;
    }

    @Override // com.j256.ormlite.stmt.GenericRowMapper
    public String[] mapRow(DatabaseResults databaseResults) throws SQLException {
        int columnCount = databaseResults.getColumnCount();
        String[] strArr = new String[columnCount];
        for (int i = 0; i < columnCount; i++) {
            strArr[i] = databaseResults.getString(i);
        }
        return strArr;
    }

    public List<T> query(ConnectionSource connectionSource, PreparedStmt<T> preparedStmt, ObjectCache objectCache) throws SQLException {
        SelectIterator<T, ID> buildIterator = buildIterator(null, connectionSource, preparedStmt, objectCache, -1);
        try {
            ArrayList arrayList = new ArrayList();
            while (buildIterator.hasNextThrow()) {
                arrayList.add(buildIterator.nextThrow());
            }
            logger.debug("query of '{}' with {} args returned {} results", preparedStmt, Integer.valueOf(preparedStmt.getNumArgs()), Integer.valueOf(arrayList.size()));
            return arrayList;
        } finally {
            IOUtils.closeThrowSqlException(buildIterator, "iterator");
        }
    }

    public List<T> queryForAll(ConnectionSource connectionSource, ObjectCache objectCache) throws SQLException {
        prepareQueryForAll();
        return query(connectionSource, this.preparedQueryForAll, objectCache);
    }

    public long queryForCountStar(DatabaseConnection databaseConnection) throws SQLException {
        if (this.countStarQuery == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("SELECT COUNT(*) FROM ");
            if (this.tableInfo.getSchemaName() != null && this.tableInfo.getSchemaName().length() > 0) {
                this.databaseType.appendEscapedEntityName(sb, this.tableInfo.getSchemaName());
                sb.append('.');
            }
            this.databaseType.appendEscapedEntityName(sb, this.tableInfo.getTableName());
            this.countStarQuery = sb.toString();
        }
        long queryForLong = databaseConnection.queryForLong(this.countStarQuery);
        logger.debug("query of '{}' returned {}", this.countStarQuery, Long.valueOf(queryForLong));
        return queryForLong;
    }

    public T queryForFirst(DatabaseConnection databaseConnection, PreparedStmt<T> preparedStmt, ObjectCache objectCache) throws SQLException {
        DatabaseResults databaseResults;
        Throwable th;
        CompiledStatement compile = preparedStmt.compile(databaseConnection, StatementBuilder.StatementType.SELECT);
        try {
            compile.setMaxRows(1);
            DatabaseResults runQuery = compile.runQuery(objectCache);
            try {
                if (!runQuery.first()) {
                    logger.debug("query-for-first of '{}' with {} args returned 0 results", preparedStmt, Integer.valueOf(preparedStmt.getNumArgs()));
                    IOUtils.closeThrowSqlException(runQuery, "results");
                    IOUtils.closeThrowSqlException(compile, "compiled statement");
                    return null;
                }
                logger.debug("query-for-first of '{}' with {} args returned at least 1 result", preparedStmt, Integer.valueOf(preparedStmt.getNumArgs()));
                T mapRow = preparedStmt.mapRow(runQuery);
                IOUtils.closeThrowSqlException(runQuery, "results");
                IOUtils.closeThrowSqlException(compile, "compiled statement");
                return mapRow;
            } catch (Throwable th2) {
                th = th2;
                databaseResults = runQuery;
                IOUtils.closeThrowSqlException(databaseResults, "results");
                IOUtils.closeThrowSqlException(compile, "compiled statement");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            databaseResults = null;
        }
    }

    public T queryForId(DatabaseConnection databaseConnection, ID id, ObjectCache objectCache) throws SQLException {
        if (this.mappedQueryForId == null) {
            this.mappedQueryForId = MappedQueryForFieldEq.build(this.dao, this.tableInfo, null);
        }
        return this.mappedQueryForId.execute(databaseConnection, id, objectCache);
    }

    public long queryForLong(DatabaseConnection databaseConnection, PreparedStmt<T> preparedStmt) throws SQLException {
        CompiledStatement compile = preparedStmt.compile(databaseConnection, StatementBuilder.StatementType.SELECT_LONG);
        Closeable closeable = null;
        try {
            closeable = compile.runQuery(null);
            if (closeable.first()) {
                return closeable.getLong(0);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No result found in queryForLong: ");
            sb.append(preparedStmt);
            throw new SQLException(sb.toString());
        } finally {
            IOUtils.closeThrowSqlException(closeable, "results");
            IOUtils.closeThrowSqlException(compile, "compiled statement");
        }
    }

    public long queryForLong(DatabaseConnection databaseConnection, String str, String[] strArr) throws SQLException {
        Closeable closeable;
        CompiledStatement compiledStatement;
        Throwable th;
        CompiledStatement compileStatement;
        logger.debug("executing raw query for long: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        try {
            compileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
        } catch (Throwable th2) {
            th = th2;
            compiledStatement = null;
            closeable = null;
        }
        try {
            assignStatementArguments(compileStatement, strArr);
            DatabaseResults runQuery = compileStatement.runQuery(null);
            if (runQuery.first()) {
                long j = runQuery.getLong(0);
                IOUtils.closeThrowSqlException(runQuery, "results");
                IOUtils.closeThrowSqlException(compileStatement, "compiled statement");
                return j;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No result found in queryForLong: ");
            sb.append(str);
            throw new SQLException(sb.toString());
        } catch (Throwable th3) {
            closeable = null;
            compiledStatement = compileStatement;
            th = th3;
            IOUtils.closeThrowSqlException(closeable, "results");
            IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
            throw th;
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(ConnectionSource connectionSource, String str, DatabaseResultsMapper<UO> databaseResultsMapper, String[] strArr, ObjectCache objectCache) throws SQLException {
        CompiledStatement compiledStatement;
        Throwable th;
        CompiledStatement compileStatement;
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        try {
            compileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
        } catch (Throwable th2) {
            th = th2;
            compiledStatement = null;
        }
        try {
            assignStatementArguments(compileStatement, strArr);
            RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, Object[].class, compileStatement, new UserDatabaseResultsMapper(databaseResultsMapper), objectCache);
            IOUtils.closeThrowSqlException(null, "compiled statement");
            return rawResultsImpl;
        } catch (Throwable th3) {
            th = th3;
            compiledStatement = compileStatement;
            IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(ConnectionSource connectionSource, String str, RawRowMapper<UO> rawRowMapper, String[] strArr, ObjectCache objectCache) throws SQLException {
        CompiledStatement compiledStatement;
        Throwable th;
        CompiledStatement compileStatement;
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        try {
            compileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
        } catch (Throwable th2) {
            th = th2;
            compiledStatement = null;
        }
        try {
            assignStatementArguments(compileStatement, strArr);
            RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, String[].class, compileStatement, new UserRawRowMapper(rawRowMapper, this), objectCache);
            IOUtils.closeThrowSqlException(null, "compiled statement");
            return rawResultsImpl;
        } catch (Throwable th3) {
            th = th3;
            compiledStatement = compileStatement;
            IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(ConnectionSource connectionSource, String str, DataType[] dataTypeArr, RawRowObjectMapper<UO> rawRowObjectMapper, String[] strArr, ObjectCache objectCache) throws SQLException {
        CompiledStatement compiledStatement;
        Throwable th;
        CompiledStatement compileStatement;
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        try {
            compileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
            try {
                assignStatementArguments(compileStatement, strArr);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            compiledStatement = null;
        }
        try {
            RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, String[].class, compileStatement, new UserRawRowObjectMapper(rawRowObjectMapper, dataTypeArr), objectCache);
            IOUtils.closeThrowSqlException(null, "compiled statement");
            return rawResultsImpl;
        } catch (Throwable th4) {
            th = th4;
            compiledStatement = compileStatement;
            IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }

    public GenericRawResults<Object[]> queryRaw(ConnectionSource connectionSource, String str, DataType[] dataTypeArr, String[] strArr, ObjectCache objectCache) throws SQLException {
        CompiledStatement compiledStatement;
        Throwable th;
        CompiledStatement compileStatement;
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        try {
            compileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
        } catch (Throwable th2) {
            th = th2;
            compiledStatement = null;
        }
        try {
            assignStatementArguments(compileStatement, strArr);
            RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, Object[].class, compileStatement, new ObjectArrayRowMapper(dataTypeArr), objectCache);
            IOUtils.closeThrowSqlException(null, "compiled statement");
            return rawResultsImpl;
        } catch (Throwable th3) {
            th = th3;
            compiledStatement = compileStatement;
            IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }

    public GenericRawResults<String[]> queryRaw(ConnectionSource connectionSource, String str, String[] strArr, ObjectCache objectCache) throws SQLException {
        CompiledStatement compiledStatement;
        Throwable th;
        CompiledStatement compileStatement;
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableInfo.getTableName());
        try {
            compileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
        } catch (Throwable th2) {
            th = th2;
            compiledStatement = null;
        }
        try {
            assignStatementArguments(compileStatement, strArr);
            RawResultsImpl rawResultsImpl = new RawResultsImpl(connectionSource, readOnlyConnection, String[].class, compileStatement, this, objectCache);
            IOUtils.closeThrowSqlException(null, "compiled statement");
            return rawResultsImpl;
        } catch (Throwable th3) {
            th = th3;
            compiledStatement = compileStatement;
            IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }

    public int refresh(DatabaseConnection databaseConnection, T t, ObjectCache objectCache) throws SQLException {
        if (this.mappedRefresh == null) {
            this.mappedRefresh = MappedRefresh.build(this.dao, this.tableInfo);
        }
        return this.mappedRefresh.executeRefresh(databaseConnection, t, objectCache);
    }

    public int update(DatabaseConnection databaseConnection, PreparedUpdate<T> preparedUpdate) throws SQLException {
        CompiledStatement compile = preparedUpdate.compile(databaseConnection, StatementBuilder.StatementType.UPDATE);
        try {
            int runUpdate = compile.runUpdate();
            if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
                this.dao.notifyChanges();
            }
            return runUpdate;
        } finally {
            IOUtils.closeThrowSqlException(compile, "compiled statement");
        }
    }

    public int update(DatabaseConnection databaseConnection, T t, ObjectCache objectCache) throws SQLException {
        if (this.mappedUpdate == null) {
            this.mappedUpdate = MappedUpdate.build(this.dao, this.tableInfo);
        }
        int update = this.mappedUpdate.update(databaseConnection, t, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return update;
    }

    public int updateId(DatabaseConnection databaseConnection, T t, ID id, ObjectCache objectCache) throws SQLException {
        if (this.mappedUpdateId == null) {
            this.mappedUpdateId = MappedUpdateId.build(this.dao, this.tableInfo);
        }
        int execute = this.mappedUpdateId.execute(databaseConnection, t, id, objectCache);
        if (this.dao != null && !this.localIsInBatchMode.get().booleanValue()) {
            this.dao.notifyChanges();
        }
        return execute;
    }

    public int updateRaw(DatabaseConnection databaseConnection, String str, String[] strArr) throws SQLException {
        logger.debug("running raw update statement: {}", str);
        if (strArr.length > 0) {
            logger.trace("update arguments: {}", (Object) strArr);
        }
        CompiledStatement compileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.UPDATE, noFieldTypes, -1, false);
        try {
            assignStatementArguments(compileStatement, strArr);
            return compileStatement.runUpdate();
        } finally {
            IOUtils.closeThrowSqlException(compileStatement, "compiled statement");
        }
    }
}
