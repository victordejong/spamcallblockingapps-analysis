package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/MappedUpdate.class */
public class MappedUpdate<T, ID> extends BaseMappedStatement<T, ID> {
    private final FieldType versionFieldType;
    private final int versionFieldTypeIndex;

    private MappedUpdate(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr, FieldType fieldType, int i) {
        super(dao, tableInfo, str, fieldTypeArr);
        this.versionFieldType = fieldType;
        this.versionFieldTypeIndex = i;
    }

    public static <T, ID> MappedUpdate<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo) throws SQLException {
        int i;
        FieldType[] fieldTypes;
        FieldType idField = tableInfo.getIdField();
        if (idField == null) {
            throw new SQLException("Cannot update " + tableInfo.getDataClass() + " because it doesn't have an id field");
        }
        StringBuilder sb = new StringBuilder(64);
        DatabaseType databaseType = dao.getConnectionSource().getDatabaseType();
        appendTableName(databaseType, sb, "UPDATE ", (TableInfo<?, ?>) tableInfo);
        FieldType[] fieldTypes2 = tableInfo.getFieldTypes();
        int length = fieldTypes2.length;
        FieldType fieldType = null;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i2 >= length) {
                break;
            }
            FieldType fieldType2 = fieldTypes2[i2];
            FieldType fieldType3 = fieldType;
            int i5 = i3;
            int i6 = i;
            if (isFieldUpdatable(fieldType2, idField)) {
                if (fieldType2.isVersion()) {
                    i3 = i;
                    fieldType = fieldType2;
                }
                i6 = i + 1;
                i5 = i3;
                fieldType3 = fieldType;
            }
            i2++;
            fieldType = fieldType3;
            i3 = i5;
            i4 = i6;
        }
        int i7 = i + 1;
        int i8 = i7;
        if (fieldType != null) {
            i8 = i7 + 1;
        }
        FieldType[] fieldTypeArr = new FieldType[i8];
        int i9 = 0;
        boolean z = true;
        for (FieldType fieldType4 : tableInfo.getFieldTypes()) {
            if (isFieldUpdatable(fieldType4, idField)) {
                if (z) {
                    sb.append("SET ");
                    z = false;
                } else {
                    sb.append(", ");
                }
                appendFieldColumnName(databaseType, sb, fieldType4, null);
                fieldTypeArr[i9] = fieldType4;
                sb.append("= ?");
                i9++;
            }
        }
        sb.append(' ');
        appendWhereFieldEq(databaseType, idField, sb, null);
        fieldTypeArr[i9] = idField;
        if (fieldType != null) {
            sb.append(" AND ");
            appendFieldColumnName(databaseType, sb, fieldType, null);
            sb.append("= ?");
            fieldTypeArr[i9 + 1] = fieldType;
        }
        return new MappedUpdate<>(dao, tableInfo, sb.toString(), fieldTypeArr, fieldType, i3);
    }

    private static boolean isFieldUpdatable(FieldType fieldType, FieldType fieldType2) {
        return fieldType != fieldType2 && !fieldType.isForeignCollection() && !fieldType.isReadOnly();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int update(DatabaseConnection databaseConnection, T t, ObjectCache objectCache) throws SQLException {
        FieldType[] fieldTypes;
        try {
            if (this.argFieldTypes.length <= 1) {
                return 0;
            }
            Object[] fieldObjects = getFieldObjects(t);
            Object obj = null;
            FieldType fieldType = this.versionFieldType;
            if (fieldType != null) {
                obj = this.versionFieldType.moveToNextValue(fieldType.extractJavaFieldValue(t));
                fieldObjects[this.versionFieldTypeIndex] = this.versionFieldType.convertJavaFieldToSqlArgValue(obj);
            }
            int update = databaseConnection.update(this.statement, fieldObjects, this.argFieldTypes);
            if (update > 0) {
                if (obj != null) {
                    this.versionFieldType.assignField(this.connectionSource, t, obj, false, null);
                }
                if (objectCache != 0) {
                    Object obj2 = objectCache.get(this.clazz, this.idField.extractJavaFieldValue(t));
                    if (obj2 != null && obj2 != t) {
                        for (FieldType fieldType2 : this.tableInfo.getFieldTypes()) {
                            if (fieldType2 != this.idField) {
                                fieldType2.assignField(this.connectionSource, obj2, fieldType2.extractJavaFieldValue(t), false, objectCache);
                            }
                        }
                    }
                }
            }
            logger.debug("update data with statement '{}' and {} args, changed {} rows", this.statement, Integer.valueOf(fieldObjects.length), Integer.valueOf(update));
            if (fieldObjects.length > 0) {
                logger.trace("update arguments: {}", (Object) fieldObjects);
            }
            return update;
        } catch (SQLException e) {
            throw SqlExceptionUtil.create("Unable to run update stmt on object " + t + ": " + this.statement, e);
        }
    }
}
