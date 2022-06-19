package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/MappedDeleteCollection.class */
public class MappedDeleteCollection<T, ID> extends BaseMappedStatement<T, ID> {
    private MappedDeleteCollection(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr) {
        super(dao, tableInfo, str, fieldTypeArr);
    }

    private static void appendWhereIds(DatabaseType databaseType, FieldType fieldType, StringBuilder sb, int i, FieldType[] fieldTypeArr) {
        sb.append("WHERE ");
        databaseType.appendEscapedEntityName(sb, fieldType.getColumnName());
        sb.append(" IN (");
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append('?');
            if (fieldTypeArr != null) {
                fieldTypeArr[i2] = fieldType;
            }
        }
        sb.append(") ");
    }

    private static <T, ID> MappedDeleteCollection<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, int i) throws SQLException {
        FieldType idField = tableInfo.getIdField();
        if (idField == null) {
            throw new SQLException("Cannot delete " + tableInfo.getDataClass() + " because it doesn't have an id field defined");
        }
        StringBuilder sb = new StringBuilder(128);
        DatabaseType databaseType = dao.getConnectionSource().getDatabaseType();
        appendTableName(databaseType, sb, "DELETE FROM ", (TableInfo<?, ?>) tableInfo);
        FieldType[] fieldTypeArr = new FieldType[i];
        appendWhereIds(databaseType, idField, sb, i, fieldTypeArr);
        return new MappedDeleteCollection<>(dao, tableInfo, sb.toString(), fieldTypeArr);
    }

    public static <T, ID> int deleteIds(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, DatabaseConnection databaseConnection, Collection<ID> collection, ObjectCache objectCache) throws SQLException {
        MappedDeleteCollection build = build(dao, tableInfo, collection.size());
        Object[] objArr = new Object[collection.size()];
        FieldType idField = tableInfo.getIdField();
        int i = 0;
        for (ID id : collection) {
            objArr[i] = idField.convertJavaFieldToSqlArgValue(id);
            i++;
        }
        return updateRows(databaseConnection, tableInfo.getDataClass(), build, objArr, objectCache);
    }

    public static <T, ID> int deleteObjects(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, DatabaseConnection databaseConnection, Collection<T> collection, ObjectCache objectCache) throws SQLException {
        MappedDeleteCollection build = build(dao, tableInfo, collection.size());
        Object[] objArr = new Object[collection.size()];
        FieldType idField = tableInfo.getIdField();
        int i = 0;
        for (T t : collection) {
            objArr[i] = idField.extractJavaFieldToSqlArgValue(t);
            i++;
        }
        return updateRows(databaseConnection, tableInfo.getDataClass(), build, objArr, objectCache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T, ID> int updateRows(DatabaseConnection databaseConnection, Class<T> cls, MappedDeleteCollection<T, ID> mappedDeleteCollection, Object[] objArr, ObjectCache objectCache) throws SQLException {
        try {
            int delete = databaseConnection.delete(mappedDeleteCollection.statement, objArr, mappedDeleteCollection.argFieldTypes);
            if (delete > 0 && objectCache != 0) {
                for (Object obj : objArr) {
                    objectCache.remove(cls, obj);
                }
            }
            logger.debug("delete-collection with statement '{}' and {} args, changed {} rows", mappedDeleteCollection.statement, Integer.valueOf(objArr.length), Integer.valueOf(delete));
            if (objArr.length > 0) {
                logger.trace("delete-collection arguments: {}", (Object) objArr);
            }
            return delete;
        } catch (SQLException e) {
            throw SqlExceptionUtil.create("Unable to run delete collection stmt: " + mappedDeleteCollection.statement, e);
        }
    }
}
