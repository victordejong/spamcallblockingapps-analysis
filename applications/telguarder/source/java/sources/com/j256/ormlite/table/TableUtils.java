package com.j256.ormlite.table;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/table/TableUtils.class */
public class TableUtils {
    private static Logger logger = LoggerFactory.getLogger(TableUtils.class);
    private static final FieldType[] noFieldTypes = new FieldType[0];

    private TableUtils() {
    }

    private static <T, ID> void addCreateIndexStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, List<String> list, boolean z, boolean z2, boolean z3) {
        FieldType[] fieldTypes;
        HashMap hashMap = new HashMap();
        for (FieldType fieldType : tableInfo.getFieldTypes()) {
            String uniqueIndexName = z2 ? fieldType.getUniqueIndexName() : fieldType.getIndexName();
            if (uniqueIndexName != null) {
                List list2 = (List) hashMap.get(uniqueIndexName);
                ArrayList arrayList = list2;
                if (list2 == null) {
                    arrayList = new ArrayList();
                    hashMap.put(uniqueIndexName, arrayList);
                }
                arrayList.add(fieldType.getColumnName());
            }
        }
        StringBuilder sb = new StringBuilder(128);
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z3) {
                logger.info("creating index '{}' for table '{}", entry.getKey(), tableInfo.getTableName());
            }
            sb.append("CREATE ");
            if (z2) {
                sb.append("UNIQUE ");
            }
            sb.append("INDEX ");
            if (z && databaseType.isCreateIndexIfNotExistsSupported()) {
                sb.append("IF NOT EXISTS ");
            }
            databaseType.appendEscapedEntityName(sb, (String) entry.getKey());
            sb.append(" ON ");
            databaseType.appendEscapedEntityName(sb, tableInfo.getTableName());
            sb.append(" ( ");
            boolean z4 = true;
            for (String str : (List) entry.getValue()) {
                if (z4) {
                    z4 = false;
                } else {
                    sb.append(", ");
                }
                databaseType.appendEscapedEntityName(sb, str);
            }
            sb.append(" )");
            list.add(sb.toString());
            sb.setLength(0);
        }
    }

    private static <T, ID> List<String> addCreateTableStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, boolean z, boolean z2) throws SQLException {
        ArrayList arrayList = new ArrayList();
        addCreateTableStatements(databaseType, tableInfo, arrayList, new ArrayList(), z, z2);
        return arrayList;
    }

    private static <T, ID> void addCreateTableStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, List<String> list, List<String> list2, boolean z, boolean z2) throws SQLException {
        FieldType[] fieldTypes;
        StringBuilder sb = new StringBuilder(256);
        if (z2) {
            logger.info("creating table '{}'", tableInfo.getTableName());
        }
        sb.append("CREATE TABLE ");
        if (z && databaseType.isCreateIfNotExistsSupported()) {
            sb.append("IF NOT EXISTS ");
        }
        if (tableInfo.getSchemaName() != null && tableInfo.getSchemaName().length() > 0) {
            databaseType.appendEscapedEntityName(sb, tableInfo.getSchemaName());
            sb.append('.');
        }
        databaseType.appendEscapedEntityName(sb, tableInfo.getTableName());
        sb.append(" (");
        ArrayList<String> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        boolean z3 = true;
        for (FieldType fieldType : tableInfo.getFieldTypes()) {
            if (!fieldType.isForeignCollection()) {
                if (z3) {
                    z3 = false;
                } else {
                    sb.append(", ");
                }
                String columnDefinition = fieldType.getColumnDefinition();
                if (columnDefinition == null) {
                    databaseType.appendColumnArg(tableInfo.getTableName(), sb, fieldType, arrayList, arrayList2, arrayList3, list2);
                } else {
                    databaseType.appendEscapedEntityName(sb, fieldType.getColumnName());
                    sb.append(' ');
                    sb.append(columnDefinition);
                    sb.append(' ');
                }
            }
        }
        databaseType.addPrimaryKeySql(tableInfo.getFieldTypes(), arrayList, arrayList2, arrayList3, list2);
        databaseType.addUniqueComboSql(tableInfo.getFieldTypes(), arrayList, arrayList2, arrayList3, list2);
        for (String str : arrayList) {
            sb.append(", ");
            sb.append(str);
        }
        sb.append(") ");
        databaseType.appendCreateTableSuffix(sb);
        list.addAll(arrayList2);
        list.add(sb.toString());
        list.addAll(arrayList3);
        addCreateIndexStatements(databaseType, tableInfo, list, z, false, z2);
        addCreateIndexStatements(databaseType, tableInfo, list, z, true, z2);
    }

    private static <T, ID> void addDropIndexStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, List<String> list, boolean z) {
        FieldType[] fieldTypes;
        HashSet<String> hashSet = new HashSet();
        for (FieldType fieldType : tableInfo.getFieldTypes()) {
            String indexName = fieldType.getIndexName();
            if (indexName != null) {
                hashSet.add(indexName);
            }
            String uniqueIndexName = fieldType.getUniqueIndexName();
            if (uniqueIndexName != null) {
                hashSet.add(uniqueIndexName);
            }
        }
        StringBuilder sb = new StringBuilder(48);
        for (String str : hashSet) {
            logger.info("dropping index '{}' for table '{}", str, tableInfo.getTableName());
            sb.append("DROP INDEX ");
            databaseType.appendEscapedEntityName(sb, str);
            list.add(sb.toString());
            sb.setLength(0);
        }
    }

    private static <T, ID> void addDropTableStatements(DatabaseType databaseType, TableInfo<T, ID> tableInfo, List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (FieldType fieldType : tableInfo.getFieldTypes()) {
            databaseType.dropColumnArg(fieldType, arrayList, arrayList2);
        }
        StringBuilder sb = new StringBuilder(64);
        if (z) {
            logger.info("dropping table '{}'", tableInfo.getTableName());
        }
        sb.append("DROP TABLE ");
        if (tableInfo.getSchemaName() != null && tableInfo.getSchemaName().length() > 0) {
            databaseType.appendEscapedEntityName(sb, tableInfo.getSchemaName());
            sb.append('.');
        }
        databaseType.appendEscapedEntityName(sb, tableInfo.getTableName());
        sb.append(' ');
        list.addAll(arrayList);
        list.add(sb.toString());
        list.addAll(arrayList2);
    }

    public static <T> int clearTable(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        return clearTable(connectionSource, databaseTableConfig.getSchemaName(), databaseTableConfig.getTableName());
    }

    public static <T> int clearTable(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        String extractTableName = DatabaseTableConfig.extractTableName(databaseType, cls);
        String extractSchemaName = DatabaseTableConfig.extractSchemaName(cls);
        String str = extractTableName;
        if (databaseType.isEntityNamesMustBeUpCase()) {
            str = databaseType.upCaseEntityName(extractTableName);
        }
        return clearTable(connectionSource, extractSchemaName, str);
    }

    private static <T> int clearTable(ConnectionSource connectionSource, String str, String str2) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        StringBuilder sb = new StringBuilder(48);
        if (databaseType.isTruncateSupported()) {
            sb.append("TRUNCATE TABLE ");
        } else {
            sb.append("DELETE FROM ");
        }
        if (str != null && str.length() > 0) {
            databaseType.appendEscapedEntityName(sb, str);
            sb.append('.');
        }
        databaseType.appendEscapedEntityName(sb, str2);
        String sb2 = sb.toString();
        logger.info("clearing table '{}' with '{}", str2, sb2);
        CompiledStatement compiledStatement = null;
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(str2);
        try {
            CompiledStatement compileStatement = readWriteConnection.compileStatement(sb2, StatementBuilder.StatementType.EXECUTE, noFieldTypes, -1, false);
            compiledStatement = compileStatement;
            int runExecute = compileStatement.runExecute();
            IOUtils.closeThrowSqlException(compileStatement, "compiled statement");
            connectionSource.releaseConnection(readWriteConnection);
            return runExecute;
        } catch (Throwable th) {
            IOUtils.closeThrowSqlException(compiledStatement, "compiled statement");
            connectionSource.releaseConnection(readWriteConnection);
            throw th;
        }
    }

    public static int createTable(Dao<?, ?> dao) throws SQLException {
        return doCreateTable(dao, false);
    }

    public static <T> int createTable(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        return doCreateTable(DaoManager.createDao(connectionSource, databaseTableConfig), false);
    }

    public static <T> int createTable(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return doCreateTable(DaoManager.createDao(connectionSource, cls), false);
    }

    public static <T> int createTableIfNotExists(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        return doCreateTable(DaoManager.createDao(connectionSource, databaseTableConfig), true);
    }

    public static <T> int createTableIfNotExists(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return doCreateTable(DaoManager.createDao(connectionSource, cls), true);
    }

    private static <T, ID> int doCreateTable(Dao<T, ID> dao, boolean z) throws SQLException {
        ConnectionSource connectionSource = dao.getConnectionSource();
        return dao instanceof BaseDaoImpl ? doCreateTable(connectionSource, ((BaseDaoImpl) dao).getTableInfo(), z) : doCreateTable(connectionSource, new TableInfo(connectionSource.getDatabaseType(), dao.getDataClass()), z);
    }

    /* JADX WARN: Finally extract failed */
    private static <T, ID> int doCreateTable(ConnectionSource connectionSource, TableInfo<T, ID> tableInfo, boolean z) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        addCreateTableStatements(databaseType, tableInfo, arrayList, arrayList2, z, true);
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(tableInfo.getTableName());
        try {
            int doStatements = doStatements(readWriteConnection, "create", arrayList, false, databaseType.isCreateTableReturnsNegative(), databaseType.isCreateTableReturnsZero());
            int doCreateTestQueries = doCreateTestQueries(readWriteConnection, databaseType, arrayList2);
            connectionSource.releaseConnection(readWriteConnection);
            return doStatements + doCreateTestQueries;
        } catch (Throwable th) {
            connectionSource.releaseConnection(readWriteConnection);
            throw th;
        }
    }

    private static int doCreateTestQueries(DatabaseConnection databaseConnection, DatabaseType databaseType, List<String> list) throws SQLException {
        Throwable th;
        SQLException e;
        CompiledStatement compiledStatement;
        CompiledStatement compileStatement;
        int i = 0;
        for (String str : list) {
            CompiledStatement compiledStatement2 = null;
            try {
                try {
                    compileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1, false);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (SQLException e2) {
                e = e2;
                compiledStatement = null;
            }
            try {
                DatabaseResults runQuery = compileStatement.runQuery(null);
                int i2 = 0;
                for (boolean first = runQuery.first(); first; first = runQuery.next()) {
                    i2++;
                }
                logger.info("executing create table after-query got {} results: {}", Integer.valueOf(i2), str);
                IOUtils.closeThrowSqlException(compileStatement, "compiled statement");
                i++;
            } catch (SQLException e3) {
                compiledStatement = compileStatement;
                e = e3;
                CompiledStatement compiledStatement3 = compiledStatement;
                StringBuilder sb = new StringBuilder();
                CompiledStatement compiledStatement4 = compiledStatement;
                sb.append("executing create table after-query failed: ");
                CompiledStatement compiledStatement5 = compiledStatement;
                sb.append(str);
                compiledStatement2 = compiledStatement;
                throw SqlExceptionUtil.create(sb.toString(), e);
            } catch (Throwable th3) {
                th = th3;
                compiledStatement2 = compileStatement;
                IOUtils.closeThrowSqlException(compiledStatement2, "compiled statement");
                throw th;
            }
        }
        return i;
    }

    private static <T, ID> int doDropTable(DatabaseType databaseType, ConnectionSource connectionSource, TableInfo<T, ID> tableInfo, boolean z) throws SQLException {
        ArrayList arrayList = new ArrayList();
        addDropIndexStatements(databaseType, tableInfo, arrayList, true);
        addDropTableStatements(databaseType, tableInfo, arrayList, true);
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(tableInfo.getTableName());
        try {
            return doStatements(readWriteConnection, "drop", arrayList, z, databaseType.isCreateTableReturnsNegative(), false);
        } finally {
            connectionSource.releaseConnection(readWriteConnection);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int doStatements(com.j256.ormlite.support.DatabaseConnection r7, java.lang.String r8, java.util.Collection<java.lang.String> r9, boolean r10, boolean r11, boolean r12) throws java.sql.SQLException {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.table.TableUtils.doStatements(com.j256.ormlite.support.DatabaseConnection, java.lang.String, java.util.Collection, boolean, boolean, boolean):int");
    }

    public static <T, ID> int dropTable(Dao<T, ID> dao, boolean z) throws SQLException {
        ConnectionSource connectionSource = dao.getConnectionSource();
        Class<T> dataClass = dao.getDataClass();
        DatabaseType databaseType = connectionSource.getDatabaseType();
        return dao instanceof BaseDaoImpl ? doDropTable(databaseType, connectionSource, ((BaseDaoImpl) dao).getTableInfo(), z) : doDropTable(databaseType, connectionSource, new TableInfo(databaseType, dataClass), z);
    }

    public static <T, ID> int dropTable(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig, boolean z) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        Dao createDao = DaoManager.createDao(connectionSource, databaseTableConfig);
        if (createDao instanceof BaseDaoImpl) {
            return doDropTable(databaseType, connectionSource, ((BaseDaoImpl) createDao).getTableInfo(), z);
        }
        databaseTableConfig.extractFieldTypes(databaseType);
        return doDropTable(databaseType, connectionSource, new TableInfo(databaseType, databaseTableConfig), z);
    }

    public static <T, ID> int dropTable(ConnectionSource connectionSource, Class<T> cls, boolean z) throws SQLException {
        return dropTable(DaoManager.createDao(connectionSource, cls), z);
    }

    public static <T> List<String> getCreateTableStatements(DatabaseType databaseType, Class<T> cls) throws SQLException {
        ArrayList arrayList = new ArrayList();
        addCreateTableStatements(databaseType, new TableInfo(databaseType, cls), arrayList, arrayList, false, false);
        return arrayList;
    }

    public static <T, ID> List<String> getCreateTableStatements(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        Dao createDao = DaoManager.createDao(connectionSource, databaseTableConfig);
        DatabaseType databaseType = connectionSource.getDatabaseType();
        if (createDao instanceof BaseDaoImpl) {
            return addCreateTableStatements(databaseType, ((BaseDaoImpl) createDao).getTableInfo(), false, false);
        }
        databaseTableConfig.extractFieldTypes(databaseType);
        return addCreateTableStatements(databaseType, new TableInfo(databaseType, databaseTableConfig), false, false);
    }

    @Deprecated
    public static <T, ID> List<String> getCreateTableStatements(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return getCreateTableStatements(connectionSource.getDatabaseType(), cls);
    }
}
