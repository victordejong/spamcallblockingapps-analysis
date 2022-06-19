package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/MappedUpdateId.class */
public class MappedUpdateId<T, ID> extends BaseMappedStatement<T, ID> {
    private MappedUpdateId(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr) {
        super(dao, tableInfo, str, fieldTypeArr);
    }

    public static <T, ID> MappedUpdateId<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo) throws SQLException {
        FieldType idField = tableInfo.getIdField();
        if (idField == null) {
            throw new SQLException("Cannot update-id in " + tableInfo.getDataClass() + " because it doesn't have an id field");
        }
        StringBuilder sb = new StringBuilder(64);
        DatabaseType databaseType = dao.getConnectionSource().getDatabaseType();
        appendTableName(databaseType, sb, "UPDATE ", (TableInfo<?, ?>) tableInfo);
        sb.append("SET ");
        appendFieldColumnName(databaseType, sb, idField, null);
        sb.append("= ? ");
        appendWhereFieldEq(databaseType, idField, sb, null);
        return new MappedUpdateId<>(dao, tableInfo, sb.toString(), new FieldType[]{idField, idField});
    }

    private Object extractIdToFieldObject(T t) throws SQLException {
        return this.idField.extractJavaFieldToSqlArgValue(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int execute(DatabaseConnection databaseConnection, T t, ID id, ObjectCache objectCache) throws SQLException {
        Object updateId;
        try {
            Object[] objArr = {convertIdToFieldObject(id), extractIdToFieldObject(t)};
            int update = databaseConnection.update(this.statement, objArr, this.argFieldTypes);
            if (update > 0) {
                if (objectCache != 0 && (updateId = objectCache.updateId(this.clazz, this.idField.extractJavaFieldValue(t), id)) != null && updateId != t) {
                    this.idField.assignField(this.connectionSource, updateId, id, false, objectCache);
                }
                this.idField.assignField(this.connectionSource, t, id, false, objectCache);
            }
            logger.debug("updating-id with statement '{}' and {} args, changed {} rows", (Object) this.statement, (Object) 2, (Object) Integer.valueOf(update));
            logger.trace("updating-id arguments: {}", (Object) objArr);
            return update;
        } catch (SQLException e) {
            throw SqlExceptionUtil.create("Unable to run update-id stmt on object " + t + ": " + this.statement, e);
        }
    }
}
