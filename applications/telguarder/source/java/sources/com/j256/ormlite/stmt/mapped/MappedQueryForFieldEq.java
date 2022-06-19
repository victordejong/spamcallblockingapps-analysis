package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/MappedQueryForFieldEq.class */
public class MappedQueryForFieldEq<T, ID> extends BaseMappedQuery<T, ID> {
    private final String label;

    public MappedQueryForFieldEq(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr, FieldType[] fieldTypeArr2, String str2) {
        super(dao, tableInfo, str, fieldTypeArr, fieldTypeArr2);
        this.label = str2;
    }

    public static <T, ID> MappedQueryForFieldEq<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, FieldType fieldType) throws SQLException {
        FieldType fieldType2 = fieldType;
        if (fieldType == null) {
            fieldType2 = tableInfo.getIdField();
            if (fieldType2 == null) {
                throw new SQLException("Cannot query-for-id with " + tableInfo.getDataClass() + " because it doesn't have an id field");
            }
        }
        return new MappedQueryForFieldEq<>(dao, tableInfo, buildStatement(dao.getConnectionSource().getDatabaseType(), tableInfo, fieldType2), new FieldType[]{fieldType2}, tableInfo.getFieldTypes(), "query-for-id");
    }

    public static <T, ID> String buildStatement(DatabaseType databaseType, TableInfo<T, ID> tableInfo, FieldType fieldType) {
        StringBuilder sb = new StringBuilder(64);
        appendTableName(databaseType, sb, "SELECT * FROM ", (TableInfo<?, ?>) tableInfo);
        appendWhereFieldEq(databaseType, fieldType, sb, null);
        return sb.toString();
    }

    private void logArgs(Object[] objArr) {
        if (objArr.length > 0) {
            logger.trace("{} arguments: {}", this.label, objArr);
        }
    }

    public T execute(DatabaseConnection databaseConnection, ID id, ObjectCache objectCache) throws SQLException {
        T t;
        if (objectCache == null || (t = (T) objectCache.get(this.clazz, id)) == null) {
            Object[] objArr = {convertIdToFieldObject(id)};
            T t2 = (T) databaseConnection.queryForOne(this.statement, objArr, this.argFieldTypes, this, objectCache);
            if (t2 == null) {
                logger.debug("{} using '{}' and {} args, got no results", (Object) this.label, (Object) this.statement, (Object) 1);
            } else if (t2 == DatabaseConnection.MORE_THAN_ONE) {
                logger.error("{} using '{}' and {} args, got >1 results", (Object) this.label, (Object) this.statement, (Object) 1);
                logArgs(objArr);
                throw new SQLException(this.label + " got more than 1 result: " + this.statement);
            } else {
                logger.debug("{} using '{}' and {} args, got 1 result", (Object) this.label, (Object) this.statement, (Object) 1);
            }
            logArgs(objArr);
            return t2;
        }
        return t;
    }
}
