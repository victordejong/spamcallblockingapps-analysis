package com.j256.ormlite.table;

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
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/table/SchemaUtils.class */
public class SchemaUtils {
    private static Logger logger = LoggerFactory.getLogger(SchemaUtils.class);
    private static final FieldType[] noFieldTypes = new FieldType[0];

    private SchemaUtils() {
    }

    private static <T, ID> void addCreateSchemaStatements(DatabaseType databaseType, String str, List<String> list, List<String> list2, boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder(256);
        if (z2) {
            logger.info("creating schema '{}'", str);
        }
        sb.append("CREATE SCHEMA ");
        if (z && databaseType.isCreateIfNotExistsSupported()) {
            sb.append("IF NOT EXISTS ");
        }
        databaseType.appendEscapedEntityName(sb, str);
        databaseType.appendCreateSchemaSuffix(sb);
        list.add(sb.toString());
    }

    private static <T, ID> void addDropSchemaStatements(DatabaseType databaseType, String str, List<String> list, boolean z) {
        StringBuilder sb = new StringBuilder(64);
        if (z) {
            logger.info("dropping schema '{}'", str);
        }
        sb.append("DROP SCHEMA ");
        databaseType.appendEscapedEntityName(sb, str);
        sb.append(' ');
        list.add(sb.toString());
    }

    public static int createSchema(Dao<?, ?> dao) throws SQLException {
        return doCreateSchema(dao.getConnectionSource(), dao.getTableInfo().getSchemaName(), false);
    }

    public static <T> int createSchema(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return doCreateSchema(connectionSource, DaoManager.createDao(connectionSource, cls).getTableInfo().getSchemaName(), false);
    }

    public static <T> int createSchema(ConnectionSource connectionSource, String str) throws SQLException {
        return doCreateSchema(connectionSource, str, false);
    }

    public static <T> int createSchemaIfNotExists(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        Dao createDao = DaoManager.createDao(connectionSource, cls);
        return doCreateSchema(createDao.getConnectionSource(), createDao.getTableInfo().getSchemaName(), true);
    }

    public static <T> int createSchemaIfNotExists(ConnectionSource connectionSource, String str) throws SQLException {
        return doCreateSchema(connectionSource, str, true);
    }

    /* JADX WARN: Finally extract failed */
    private static <T, ID> int doCreateSchema(ConnectionSource connectionSource, String str, boolean z) throws SQLException {
        DatabaseType databaseType = connectionSource.getDatabaseType();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        addCreateSchemaStatements(databaseType, str, arrayList, arrayList2, z, true);
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(str);
        try {
            int doStatements = doStatements(readWriteConnection, "create", arrayList, false, databaseType.isCreateSchemaReturnsNegative(), databaseType.isCreateSchemaReturnsZero());
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
                logger.info("executing create schema after-query got {} results: {}", Integer.valueOf(i2), str);
                IOUtils.closeThrowSqlException(compileStatement, "compiled statement");
                i++;
            } catch (SQLException e3) {
                compiledStatement = compileStatement;
                e = e3;
                CompiledStatement compiledStatement3 = compiledStatement;
                StringBuilder sb = new StringBuilder();
                CompiledStatement compiledStatement4 = compiledStatement;
                sb.append("executing create schema after-query failed: ");
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

    private static <T, ID> int doDropSchema(DatabaseType databaseType, ConnectionSource connectionSource, String str, boolean z) throws SQLException {
        ArrayList arrayList = new ArrayList();
        addDropSchemaStatements(databaseType, str, arrayList, true);
        DatabaseConnection readWriteConnection = connectionSource.getReadWriteConnection(str);
        try {
            return doStatements(readWriteConnection, "drop", arrayList, z, databaseType.isCreateSchemaReturnsNegative(), false);
        } finally {
            connectionSource.releaseConnection(readWriteConnection);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int doStatements(com.j256.ormlite.support.DatabaseConnection r7, java.lang.String r8, java.util.Collection<java.lang.String> r9, boolean r10, boolean r11, boolean r12) throws java.sql.SQLException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.table.SchemaUtils.doStatements(com.j256.ormlite.support.DatabaseConnection, java.lang.String, java.util.Collection, boolean, boolean, boolean):int");
    }

    public static <T, ID> int dropSchema(ConnectionSource connectionSource, Class<T> cls, boolean z) throws SQLException {
        Dao createDao = DaoManager.createDao(connectionSource, cls);
        return dropSchema(createDao.getConnectionSource(), createDao.getTableInfo().getSchemaName(), z);
    }

    public static <T, ID> int dropSchema(ConnectionSource connectionSource, String str, boolean z) throws SQLException {
        return doDropSchema(connectionSource.getDatabaseType(), connectionSource, str, z);
    }

    public static <T> List<String> getCreateSchemaStatements(DatabaseType databaseType, String str) {
        ArrayList arrayList = new ArrayList();
        addCreateSchemaStatements(databaseType, str, arrayList, arrayList, false, false);
        return arrayList;
    }
}
