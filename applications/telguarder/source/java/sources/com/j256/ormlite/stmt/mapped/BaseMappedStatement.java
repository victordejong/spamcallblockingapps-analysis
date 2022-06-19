package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/BaseMappedStatement.class */
public abstract class BaseMappedStatement<T, ID> {
    protected static Logger logger = LoggerFactory.getLogger(BaseMappedStatement.class);
    protected final FieldType[] argFieldTypes;
    protected final Class<T> clazz;
    protected final ConnectionSource connectionSource;
    protected final Dao<T, ID> dao;
    protected final FieldType idField;
    protected final String statement;
    protected final TableInfo<T, ID> tableInfo;

    public BaseMappedStatement(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr) {
        this.dao = dao;
        this.connectionSource = dao.getConnectionSource();
        this.tableInfo = tableInfo;
        this.clazz = tableInfo.getDataClass();
        this.idField = tableInfo.getIdField();
        this.statement = str;
        this.argFieldTypes = fieldTypeArr;
    }

    public static void appendFieldColumnName(DatabaseType databaseType, StringBuilder sb, FieldType fieldType, List<FieldType> list) {
        databaseType.appendEscapedEntityName(sb, fieldType.getColumnName());
        if (list != null) {
            list.add(fieldType);
        }
        sb.append(' ');
    }

    public static void appendTableName(DatabaseType databaseType, StringBuilder sb, String str, TableInfo<?, ?> tableInfo) {
        if (str != null) {
            sb.append(str);
        }
        if (tableInfo.getSchemaName() != null && tableInfo.getSchemaName().length() > 0) {
            databaseType.appendEscapedEntityName(sb, tableInfo.getSchemaName());
            sb.append('.');
        }
        databaseType.appendEscapedEntityName(sb, tableInfo.getTableName());
        sb.append(' ');
    }

    static void appendTableName(DatabaseType databaseType, StringBuilder sb, String str, String str2) {
        if (str != null) {
            sb.append(str);
        }
        databaseType.appendEscapedEntityName(sb, str2);
        sb.append(' ');
    }

    public static void appendWhereFieldEq(DatabaseType databaseType, FieldType fieldType, StringBuilder sb, List<FieldType> list) {
        sb.append("WHERE ");
        appendFieldColumnName(databaseType, sb, fieldType, list);
        sb.append("= ?");
    }

    public Object convertIdToFieldObject(ID id) throws SQLException {
        return this.idField.convertJavaFieldToSqlArgValue(id);
    }

    public Object[] getFieldObjects(Object obj) throws SQLException {
        Object[] objArr = new Object[this.argFieldTypes.length];
        int i = 0;
        while (true) {
            FieldType[] fieldTypeArr = this.argFieldTypes;
            if (i < fieldTypeArr.length) {
                FieldType fieldType = fieldTypeArr[i];
                if (fieldType.isAllowGeneratedIdInsert()) {
                    objArr[i] = fieldType.getFieldValueIfNotDefault(obj);
                } else {
                    objArr[i] = fieldType.extractJavaFieldToSqlArgValue(obj);
                }
                if (objArr[i] == null) {
                    objArr[i] = fieldType.getDefaultValue();
                }
                i++;
            } else {
                return objArr;
            }
        }
    }

    public String toString() {
        return this.statement;
    }
}
