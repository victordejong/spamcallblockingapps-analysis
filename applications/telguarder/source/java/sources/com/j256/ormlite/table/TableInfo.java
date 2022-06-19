package com.j256.ormlite.table;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.ConnectionSource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/table/TableInfo.class */
public class TableInfo<T, ID> {
    private static final FieldType[] NO_FOREIGN_COLLECTIONS = new FieldType[0];
    private final Class<T> dataClass;
    private final DatabaseType databaseType;
    private Map<String, FieldType> fieldNameMap;
    private final FieldType[] fieldTypes;
    private final boolean foreignAutoCreate;
    private final FieldType[] foreignCollections;
    private final FieldType idField;
    private final String schemaName;
    private final String tableName;

    @Deprecated
    public TableInfo(DatabaseType databaseType, BaseDaoImpl<T, ID> baseDaoImpl, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        this(databaseType, databaseTableConfig);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0062, code lost:
        if (r0.isGeneratedIdSequence() != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TableInfo(com.j256.ormlite.p017db.DatabaseType r5, com.j256.ormlite.table.DatabaseTableConfig<T> r6) throws java.sql.SQLException {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.table.TableInfo.<init>(com.j256.ormlite.db.DatabaseType, com.j256.ormlite.table.DatabaseTableConfig):void");
    }

    public TableInfo(DatabaseType databaseType, Class<T> cls) throws SQLException {
        this(databaseType, DatabaseTableConfig.fromClass(databaseType, cls));
    }

    @Deprecated
    public TableInfo(ConnectionSource connectionSource, BaseDaoImpl<T, ID> baseDaoImpl, Class<T> cls) throws SQLException {
        this(connectionSource.getDatabaseType(), cls);
    }

    public Class<T> getDataClass() {
        return this.dataClass;
    }

    public FieldType getFieldTypeByColumnName(String str) {
        FieldType[] fieldTypeArr;
        if (this.fieldNameMap == null) {
            HashMap hashMap = new HashMap();
            for (FieldType fieldType : this.fieldTypes) {
                hashMap.put(this.databaseType.downCaseString(fieldType.getColumnName(), true), fieldType);
            }
            this.fieldNameMap = hashMap;
        }
        FieldType fieldType2 = this.fieldNameMap.get(this.databaseType.downCaseString(str, true));
        if (fieldType2 != null) {
            return fieldType2;
        }
        for (FieldType fieldType3 : this.fieldTypes) {
            if (fieldType3.getFieldName().equals(str)) {
                throw new IllegalArgumentException("You should use columnName '" + fieldType3.getColumnName() + "' for table " + this.tableName + " instead of fieldName '" + fieldType3.getFieldName() + "'");
            }
        }
        throw new IllegalArgumentException("Unknown column name '" + str + "' in table " + this.tableName);
    }

    public FieldType[] getFieldTypes() {
        return this.fieldTypes;
    }

    public FieldType[] getForeignCollections() {
        return this.foreignCollections;
    }

    public FieldType getIdField() {
        return this.idField;
    }

    public String getSchemaName() {
        return this.schemaName;
    }

    public String getTableName() {
        return this.tableName;
    }

    public boolean hasColumnName(String str) {
        for (FieldType fieldType : this.fieldTypes) {
            if (fieldType.getColumnName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isForeignAutoCreate() {
        return this.foreignAutoCreate;
    }

    public boolean isUpdatable() {
        boolean z = true;
        if (this.idField == null || this.fieldTypes.length <= 1) {
            z = false;
        }
        return z;
    }

    public String objectToString(T t) {
        FieldType[] fieldTypeArr;
        StringBuilder sb = new StringBuilder(64);
        sb.append(t.getClass().getSimpleName());
        for (FieldType fieldType : this.fieldTypes) {
            sb.append(' ');
            sb.append(fieldType.getColumnName());
            sb.append('=');
            try {
                sb.append(fieldType.extractJavaFieldValue(t));
            } catch (Exception e) {
                throw new IllegalStateException("Could not generate toString of field " + fieldType, e);
            }
        }
        return sb.toString();
    }
}
