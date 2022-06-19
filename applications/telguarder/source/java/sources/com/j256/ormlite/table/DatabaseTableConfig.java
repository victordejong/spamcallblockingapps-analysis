package com.j256.ormlite.table;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.JavaxPersistenceConfigurer;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.ConnectionSource;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/table/DatabaseTableConfig.class */
public class DatabaseTableConfig<T> {
    private static JavaxPersistenceConfigurer javaxPersistenceConfigurer;
    private Class<T> dataClass;
    private DatabaseType databaseType;
    private List<DatabaseFieldConfig> fieldConfigs;
    private FieldType[] fieldTypes;
    private String schemaName;
    private String tableName;

    static {
        try {
            Class.forName("javax.persistence.Entity");
            javaxPersistenceConfigurer = (JavaxPersistenceConfigurer) Class.forName("com.j256.ormlite.misc.JavaxPersistenceImpl").getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            javaxPersistenceConfigurer = null;
        }
    }

    public DatabaseTableConfig() {
    }

    private DatabaseTableConfig(DatabaseType databaseType, Class<T> cls, String str, String str2, FieldType[] fieldTypeArr) {
        this.databaseType = databaseType;
        this.dataClass = cls;
        this.schemaName = str;
        this.tableName = str2;
        this.fieldTypes = fieldTypeArr;
    }

    public DatabaseTableConfig(DatabaseType databaseType, Class<T> cls, List<DatabaseFieldConfig> list) {
        this(cls, extractSchemaName(cls), extractTableName(databaseType, cls), list);
    }

    public DatabaseTableConfig(Class<T> cls, String str, String str2, List<DatabaseFieldConfig> list) {
        this.dataClass = cls;
        this.schemaName = str;
        this.tableName = str2;
        this.fieldConfigs = list;
    }

    public DatabaseTableConfig(Class<T> cls, String str, List<DatabaseFieldConfig> list) {
        this.dataClass = cls;
        this.schemaName = null;
        this.tableName = str;
        this.fieldConfigs = list;
    }

    private FieldType[] convertFieldConfigs(DatabaseType databaseType, String str, List<DatabaseFieldConfig> list) throws SQLException {
        FieldType fieldType;
        Field declaredField;
        ArrayList arrayList = new ArrayList();
        for (DatabaseFieldConfig databaseFieldConfig : list) {
            Class<T> cls = this.dataClass;
            while (true) {
                Class<T> cls2 = cls;
                fieldType = null;
                if (cls2 == null) {
                    break;
                }
                try {
                    declaredField = cls2.getDeclaredField(databaseFieldConfig.getFieldName());
                } catch (NoSuchFieldException e) {
                }
                if (declaredField != null) {
                    fieldType = new FieldType(databaseType, str, declaredField, databaseFieldConfig, this.dataClass);
                    break;
                }
                cls = cls2.getSuperclass();
            }
            if (fieldType == null) {
                throw new SQLException("Could not find declared field with name '" + databaseFieldConfig.getFieldName() + "' for " + this.dataClass);
            }
            arrayList.add(fieldType);
        }
        if (!arrayList.isEmpty()) {
            return (FieldType[]) arrayList.toArray(new FieldType[arrayList.size()]);
        }
        throw new SQLException("No fields were configured for class " + this.dataClass);
    }

    private static <T> FieldType[] extractFieldTypes(DatabaseType databaseType, Class<T> cls, String str) throws SQLException {
        ArrayList arrayList = new ArrayList();
        Class<T> cls2 = cls;
        while (true) {
            Class<T> cls3 = cls2;
            if (cls3 == null) {
                break;
            }
            for (Field field : cls3.getDeclaredFields()) {
                FieldType createFieldType = FieldType.createFieldType(databaseType, str, field, (Class<?>) cls);
                if (createFieldType != null) {
                    arrayList.add(createFieldType);
                }
            }
            cls2 = cls3.getSuperclass();
        }
        if (!arrayList.isEmpty()) {
            return (FieldType[]) arrayList.toArray(new FieldType[arrayList.size()]);
        }
        throw new IllegalArgumentException("No fields have a " + DatabaseField.class.getSimpleName() + " annotation in " + cls);
    }

    public static <T> String extractSchemaName(Class<T> cls) {
        DatabaseTable databaseTable = (DatabaseTable) cls.getAnnotation(DatabaseTable.class);
        if (databaseTable == null || databaseTable.schemaName().length() <= 0) {
            return null;
        }
        return databaseTable.schemaName();
    }

    public static <T> String extractTableName(DatabaseType databaseType, Class<T> cls) {
        DatabaseTable databaseTable = (DatabaseTable) cls.getAnnotation(DatabaseTable.class);
        String tableName = (databaseTable == null || databaseTable.tableName() == null || databaseTable.tableName().length() <= 0) ? null : databaseTable.tableName();
        String str = tableName;
        if (tableName == null) {
            JavaxPersistenceConfigurer javaxPersistenceConfigurer2 = javaxPersistenceConfigurer;
            str = tableName;
            if (javaxPersistenceConfigurer2 != null) {
                str = javaxPersistenceConfigurer2.getEntityName(cls);
            }
        }
        String str2 = str;
        if (str == null) {
            str2 = databaseType == null ? cls.getSimpleName().toLowerCase(Locale.ENGLISH) : databaseType.downCaseString(cls.getSimpleName(), true);
        }
        return str2;
    }

    public static <T> DatabaseTableConfig<T> fromClass(DatabaseType databaseType, Class<T> cls) throws SQLException {
        String extractTableName = extractTableName(databaseType, cls);
        String extractSchemaName = extractSchemaName(cls);
        String str = extractTableName;
        String str2 = extractSchemaName;
        if (databaseType.isEntityNamesMustBeUpCase()) {
            String upCaseEntityName = databaseType.upCaseEntityName(extractTableName);
            str = upCaseEntityName;
            str2 = extractSchemaName;
            if (extractSchemaName != null) {
                str2 = databaseType.upCaseEntityName(extractSchemaName);
                str = upCaseEntityName;
            }
        }
        return new DatabaseTableConfig<>(databaseType, cls, str2, str, extractFieldTypes(databaseType, cls, str));
    }

    @Deprecated
    public static <T> DatabaseTableConfig<T> fromClass(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return fromClass(connectionSource.getDatabaseType(), cls);
    }

    public void extractFieldTypes(DatabaseType databaseType) throws SQLException {
        if (this.fieldTypes == null) {
            List<DatabaseFieldConfig> list = this.fieldConfigs;
            if (list == null) {
                this.fieldTypes = extractFieldTypes(databaseType, this.dataClass, this.tableName);
            } else {
                this.fieldTypes = convertFieldConfigs(databaseType, this.tableName, list);
            }
        }
    }

    public Class<T> getDataClass() {
        return this.dataClass;
    }

    public List<DatabaseFieldConfig> getFieldConfigs() {
        return this.fieldConfigs;
    }

    public FieldType[] getFieldTypes(DatabaseType databaseType) throws SQLException {
        FieldType[] fieldTypeArr = this.fieldTypes;
        if (fieldTypeArr != null) {
            return fieldTypeArr;
        }
        throw new SQLException("Field types have not been extracted in table config");
    }

    public String getSchemaName() {
        return this.schemaName;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void initialize() {
        Class<T> cls = this.dataClass;
        if (cls != null) {
            if (this.tableName != null) {
                return;
            }
            this.tableName = extractTableName(this.databaseType, cls);
            return;
        }
        throw new IllegalStateException("dataClass was never set on " + getClass().getSimpleName());
    }

    @Deprecated
    public void setConstructor(Constructor<T> constructor) {
    }

    public void setDataClass(Class<T> cls) {
        this.dataClass = cls;
    }

    public void setDatabaseType(DatabaseType databaseType) {
        this.databaseType = databaseType;
    }

    public void setFieldConfigs(List<DatabaseFieldConfig> list) {
        this.fieldConfigs = list;
    }

    public void setSchemaName(String str) {
        this.schemaName = str;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }
}
