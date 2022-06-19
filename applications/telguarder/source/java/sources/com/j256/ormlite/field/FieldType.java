package com.j256.ormlite.field;

import com.j256.ormlite.dao.BaseForeignCollection;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.dao.EagerForeignCollection;
import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.dao.LazyForeignCollection;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.types.VoidType;
import com.j256.ormlite.logger.Log;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.mapped.MappedQueryForFieldEq;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.TableInfo;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/FieldType.class */
public class FieldType {
    private static boolean DEFAULT_VALUE_BOOLEAN = false;
    private static byte DEFAULT_VALUE_BYTE = 0;
    private static char DEFAULT_VALUE_CHAR = 0;
    private static double DEFAULT_VALUE_DOUBLE = 0.0d;
    private static float DEFAULT_VALUE_FLOAT = 0.0f;
    private static int DEFAULT_VALUE_INT = 0;
    private static long DEFAULT_VALUE_LONG = 0;
    private static short DEFAULT_VALUE_SHORT = 0;
    public static final String FOREIGN_ID_FIELD_SUFFIX = "_id";
    private final String columnName;
    private DataPersister dataPersister;
    private Object dataTypeConfigObj;
    private Object defaultValue;
    private final Field field;
    private final DatabaseFieldConfig fieldConfig;
    private FieldConverter fieldConverter;
    private final Method fieldGetMethod;
    private final Method fieldSetMethod;
    private Dao<?, ?> foreignDao;
    private FieldType foreignFieldType;
    private FieldType foreignIdField;
    private FieldType foreignRefField;
    private final String generatedIdSequence;
    private final boolean isGeneratedId;
    private final boolean isId;
    private MappedQueryForFieldEq<?, ?> mappedQueryForForeignField;
    private final Class<?> parentClass;
    private final String tableName;
    private static final ThreadLocal<LevelCounters> threadLevelCounters = new ThreadLocal<>();
    private static final Logger logger = LoggerFactory.getLogger(FieldType.class);

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/FieldType$LevelCounters.class */
    public static class LevelCounters {
        int autoRefreshLevel;
        int autoRefreshLevelMax;
        int foreignCollectionLevel;
        int foreignCollectionLevelMax;

        LevelCounters() {
        }
    }

    public FieldType(DatabaseType databaseType, String str, Field field, DatabaseFieldConfig databaseFieldConfig, Class<?> cls) throws SQLException {
        DataPersister dataPersister;
        String str2;
        this.tableName = str;
        this.field = field;
        this.parentClass = cls;
        databaseFieldConfig.postProcess();
        Class<?> type = field.getType();
        if (databaseFieldConfig.getDataPersister() == null) {
            Class<? extends DataPersister> persisterClass = databaseFieldConfig.getPersisterClass();
            if (persisterClass == null || persisterClass == VoidType.class) {
                dataPersister = DataPersisterManager.lookupForField(field);
            } else {
                try {
                    try {
                        Object invoke = persisterClass.getDeclaredMethod("getSingleton", new Class[0]).invoke(null, new Object[0]);
                        if (invoke == null) {
                            throw new SQLException("Static getSingleton method should not return null on class " + persisterClass);
                        }
                        try {
                            dataPersister = (DataPersister) invoke;
                        } catch (Exception e) {
                            throw SqlExceptionUtil.create("Could not cast result of static getSingleton method to DataPersister from class " + persisterClass, e);
                        }
                    } catch (InvocationTargetException e2) {
                        throw SqlExceptionUtil.create("Could not run getSingleton method on class " + persisterClass, e2.getTargetException());
                    } catch (Exception e3) {
                        throw SqlExceptionUtil.create("Could not run getSingleton method on class " + persisterClass, e3);
                    }
                } catch (Exception e4) {
                    throw SqlExceptionUtil.create("Could not find getSingleton static method on class " + persisterClass, e4);
                }
            }
        } else {
            DataPersister dataPersister2 = databaseFieldConfig.getDataPersister();
            dataPersister = dataPersister2;
            if (!dataPersister2.isValidForField(field)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Field class ");
                sb.append(type.getName());
                sb.append(" for field ");
                sb.append(this);
                sb.append(" is not valid for type ");
                sb.append(dataPersister2);
                Class<?> primaryClass = dataPersister2.getPrimaryClass();
                if (primaryClass != null) {
                    sb.append(", maybe should be ");
                    sb.append(primaryClass);
                }
                throw new IllegalArgumentException(sb.toString());
            }
        }
        String foreignColumnName = databaseFieldConfig.getForeignColumnName();
        String name = field.getName();
        if (databaseFieldConfig.isForeign() || databaseFieldConfig.isForeignAutoRefresh() || foreignColumnName != null) {
            if (dataPersister != null && dataPersister.isPrimitive()) {
                throw new IllegalArgumentException("Field " + this + " is a primitive class " + type + " but marked as foreign");
            }
            if (foreignColumnName == null) {
                str2 = name + FOREIGN_ID_FIELD_SUFFIX;
            } else {
                str2 = name + "_" + foreignColumnName;
            }
            if (ForeignCollection.class.isAssignableFrom(type)) {
                throw new SQLException("Field '" + field.getName() + "' in class " + type + "' should use the @" + ForeignCollectionField.class.getSimpleName() + " annotation not foreign=true");
            }
        } else if (!databaseFieldConfig.isForeignCollection()) {
            str2 = name;
            if (dataPersister == null) {
                str2 = name;
                if (!databaseFieldConfig.isForeignCollection()) {
                    if (byte[].class.isAssignableFrom(type)) {
                        throw new SQLException("ORMLite does not know how to store " + type + " for field '" + field.getName() + "'. byte[] fields must specify dataType=DataType.BYTE_ARRAY or SERIALIZABLE");
                    } else if (Serializable.class.isAssignableFrom(type)) {
                        throw new SQLException("ORMLite does not know how to store " + type + " for field '" + field.getName() + "'.  Use another class, custom persister, or to serialize it use dataType=DataType.SERIALIZABLE");
                    } else {
                        throw new IllegalArgumentException("ORMLite does not know how to store " + type + " for field " + field.getName() + ". Use another class or a custom persister.");
                    }
                }
            }
        } else if (type != Collection.class && !ForeignCollection.class.isAssignableFrom(type)) {
            throw new SQLException("Field class for '" + field.getName() + "' must be of class " + ForeignCollection.class.getSimpleName() + " or Collection.");
        } else {
            Type genericType = field.getGenericType();
            if (!(genericType instanceof ParameterizedType)) {
                throw new SQLException("Field class for '" + field.getName() + "' must be a parameterized Collection.");
            } else if (((ParameterizedType) genericType).getActualTypeArguments().length == 0) {
                throw new SQLException("Field class for '" + field.getName() + "' must be a parameterized Collection with at least 1 type.");
            } else {
                str2 = name;
            }
        }
        if (databaseFieldConfig.getColumnName() == null) {
            this.columnName = str2;
        } else {
            this.columnName = databaseFieldConfig.getColumnName();
        }
        this.fieldConfig = databaseFieldConfig;
        if (databaseFieldConfig.isId()) {
            if (databaseFieldConfig.isGeneratedId() || databaseFieldConfig.getGeneratedIdSequence() != null) {
                throw new IllegalArgumentException("Must specify one of id, generatedId, and generatedIdSequence with " + field.getName());
            }
            this.isId = true;
            this.isGeneratedId = false;
            this.generatedIdSequence = null;
        } else if (databaseFieldConfig.isGeneratedId()) {
            if (databaseFieldConfig.getGeneratedIdSequence() != null) {
                throw new IllegalArgumentException("Must specify one of id, generatedId, and generatedIdSequence with " + field.getName());
            }
            this.isId = true;
            this.isGeneratedId = true;
            if (databaseType.isIdSequenceNeeded()) {
                this.generatedIdSequence = databaseType.generateIdSequenceName(str, this);
            } else {
                this.generatedIdSequence = null;
            }
        } else if (databaseFieldConfig.getGeneratedIdSequence() != null) {
            this.isId = true;
            this.isGeneratedId = true;
            String generatedIdSequence = databaseFieldConfig.getGeneratedIdSequence();
            this.generatedIdSequence = databaseType.isEntityNamesMustBeUpCase() ? databaseType.upCaseEntityName(generatedIdSequence) : generatedIdSequence;
        } else {
            this.isId = false;
            this.isGeneratedId = false;
            this.generatedIdSequence = null;
        }
        if (this.isId && databaseFieldConfig.isForeign()) {
            throw new IllegalArgumentException("Id field " + field.getName() + " cannot also be a foreign object");
        }
        if (databaseFieldConfig.isUseGetSet()) {
            this.fieldGetMethod = DatabaseFieldConfig.findGetMethod(field, databaseType, true);
            this.fieldSetMethod = DatabaseFieldConfig.findSetMethod(field, databaseType, true);
        } else {
            if (!field.isAccessible()) {
                try {
                    field.setAccessible(true);
                } catch (SecurityException e5) {
                    throw new IllegalArgumentException("Could not open access to field " + field.getName() + ".  You may have to set useGetSet=true to fix.");
                }
            }
            this.fieldGetMethod = null;
            this.fieldSetMethod = null;
        }
        if (databaseFieldConfig.isAllowGeneratedIdInsert() && !databaseFieldConfig.isGeneratedId()) {
            throw new IllegalArgumentException("Field " + field.getName() + " must be a generated-id if allowGeneratedIdInsert = true");
        } else if (databaseFieldConfig.getForeignColumnName() != null && !databaseFieldConfig.isForeign()) {
            throw new IllegalArgumentException("Field " + field.getName() + " must have foreign = true if foreignColumnName is set");
        } else if (databaseFieldConfig.isForeignAutoRefresh() && !databaseFieldConfig.isForeign()) {
            throw new IllegalArgumentException("Field " + field.getName() + " must have foreign = true if foreignAutoRefresh = true");
        } else if (databaseFieldConfig.isForeignAutoCreate() && !databaseFieldConfig.isForeign()) {
            throw new IllegalArgumentException("Field " + field.getName() + " must have foreign = true if foreignAutoCreate = true");
        } else if (!databaseFieldConfig.isVersion() || (dataPersister != null && dataPersister.isValidForVersion())) {
            assignDataType(databaseType, dataPersister);
        } else {
            throw new IllegalArgumentException("Field " + field.getName() + " is not a valid type to be a version field");
        }
    }

    private void assignDataType(DatabaseType databaseType, DataPersister dataPersister) throws SQLException {
        DataType[] values;
        DataPersister dataPersister2 = databaseType.getDataPersister(dataPersister, this);
        this.dataPersister = dataPersister2;
        if (dataPersister2 == null) {
            if (this.fieldConfig.isForeign() || this.fieldConfig.isForeignCollection()) {
                return;
            }
            throw new SQLException("Data persister for field " + this + " is null but the field is not a foreign or foreignCollection");
        }
        this.fieldConverter = databaseType.getFieldConverter(dataPersister2, this);
        if (this.isGeneratedId && !dataPersister2.isValidGeneratedType()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Generated-id field '");
            sb.append(this.field.getName());
            sb.append("' in ");
            sb.append(this.field.getDeclaringClass().getSimpleName());
            sb.append(" can't be type ");
            sb.append(dataPersister2.getSqlType());
            sb.append(".  Must be one of: ");
            for (DataType dataType : DataType.values()) {
                DataPersister dataPersister3 = dataType.getDataPersister();
                if (dataPersister3 != null && dataPersister3.isValidGeneratedType()) {
                    sb.append(dataType);
                    sb.append(' ');
                }
            }
            throw new IllegalArgumentException(sb.toString());
        } else if (this.fieldConfig.isThrowIfNull() && !dataPersister2.isPrimitive()) {
            throw new SQLException("Field " + this.field.getName() + " must be a primitive if set with throwIfNull");
        } else if (this.isId && !dataPersister2.isAppropriateId()) {
            throw new SQLException("Field '" + this.field.getName() + "' is of data type " + dataPersister2 + " which cannot be the ID field");
        } else {
            this.dataTypeConfigObj = this.fieldConverter.makeConfigObject(this);
            String defaultValue = this.fieldConfig.getDefaultValue();
            if (defaultValue == null) {
                this.defaultValue = null;
            } else if (this.isGeneratedId) {
                throw new SQLException("Field '" + this.field.getName() + "' cannot be a generatedId and have a default value '" + defaultValue + "'");
            } else {
                this.defaultValue = this.fieldConverter.parseDefaultString(this, defaultValue);
            }
        }
    }

    public static FieldType createFieldType(DatabaseType databaseType, String str, Field field, Class<?> cls) throws SQLException {
        DatabaseFieldConfig fromField = DatabaseFieldConfig.fromField(databaseType, str, field);
        if (fromField == null) {
            return null;
        }
        return new FieldType(databaseType, str, field, fromField, cls);
    }

    @Deprecated
    public static FieldType createFieldType(ConnectionSource connectionSource, String str, Field field, Class<?> cls) throws SQLException {
        return createFieldType(connectionSource.getDatabaseType(), str, field, cls);
    }

    private Object createForeignObject(ConnectionSource connectionSource, Object obj, ObjectCache objectCache) throws SQLException {
        ThreadLocal<LevelCounters> threadLocal = threadLevelCounters;
        LevelCounters levelCounters = threadLocal.get();
        LevelCounters levelCounters2 = levelCounters;
        if (levelCounters == null) {
            if (!this.fieldConfig.isForeignAutoRefresh()) {
                return createForeignShell(connectionSource, obj, objectCache);
            }
            levelCounters2 = new LevelCounters();
            threadLocal.set(levelCounters2);
        }
        if (levelCounters2.autoRefreshLevel == 0) {
            if (!this.fieldConfig.isForeignAutoRefresh()) {
                return createForeignShell(connectionSource, obj, objectCache);
            }
            levelCounters2.autoRefreshLevelMax = this.fieldConfig.getMaxForeignAutoRefreshLevel();
        }
        if (levelCounters2.autoRefreshLevel >= levelCounters2.autoRefreshLevelMax) {
            return createForeignShell(connectionSource, obj, objectCache);
        }
        if (this.mappedQueryForForeignField == null) {
            Dao<?, ?> dao = this.foreignDao;
            this.mappedQueryForForeignField = MappedQueryForFieldEq.build(dao, dao.getTableInfo(), this.foreignIdField);
        }
        levelCounters2.autoRefreshLevel++;
        try {
            DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection(this.tableName);
            Object execute = this.mappedQueryForForeignField.execute(readOnlyConnection, obj, objectCache);
            connectionSource.releaseConnection(readOnlyConnection);
            levelCounters2.autoRefreshLevel--;
            if (levelCounters2.autoRefreshLevel <= 0) {
                threadLocal.remove();
            }
            return execute;
        } catch (Throwable th) {
            levelCounters2.autoRefreshLevel--;
            if (levelCounters2.autoRefreshLevel <= 0) {
                threadLevelCounters.remove();
            }
            throw th;
        }
    }

    private <FT, FID> FT createForeignShell(ConnectionSource connectionSource, Object obj, ObjectCache objectCache) throws SQLException {
        FT ft = (FT) this.foreignDao.createObjectInstance();
        this.foreignIdField.assignField(connectionSource, ft, obj, false, objectCache);
        return ft;
    }

    private FieldType findForeignFieldType(Class<?> cls, Class<?> cls2, Dao<?, ?> dao) throws SQLException {
        FieldType[] fieldTypes;
        String foreignCollectionForeignFieldName = this.fieldConfig.getForeignCollectionForeignFieldName();
        for (FieldType fieldType : dao.getTableInfo().getFieldTypes()) {
            if (fieldType.getType() == cls2 && (foreignCollectionForeignFieldName == null || fieldType.getField().getName().equals(foreignCollectionForeignFieldName))) {
                return fieldType;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Foreign collection class ");
        sb.append(cls.getName());
        sb.append(" for field '");
        sb.append(this.field.getName());
        sb.append("' column-name does not contain a foreign field");
        if (foreignCollectionForeignFieldName != null) {
            sb.append(" named '");
            sb.append(foreignCollectionForeignFieldName);
            sb.append('\'');
        }
        sb.append(" of class ");
        sb.append(cls2.getName());
        throw new SQLException(sb.toString());
    }

    private boolean isFieldValueDefault(Object obj) {
        if (obj == null) {
            return true;
        }
        return obj.equals(getJavaDefaultValueDefault());
    }

    public void assignField(ConnectionSource connectionSource, Object obj, Object obj2, boolean z, ObjectCache objectCache) throws SQLException {
        Logger logger2 = logger;
        if (logger2.isLevelEnabled(Log.Level.TRACE)) {
            Class<?> cls = "null";
            String str = obj == null ? "null" : obj.getClass();
            if (obj2 != null) {
                cls = obj2.getClass();
            }
            logger2.trace("assiging from data {}, val {}: {}", str, cls, obj2);
        }
        Object obj3 = obj2;
        if (this.foreignRefField != null) {
            obj3 = obj2;
            if (obj2 != null) {
                Object extractJavaFieldValue = extractJavaFieldValue(obj);
                if (extractJavaFieldValue != null && extractJavaFieldValue.equals(obj2)) {
                    return;
                }
                ObjectCache objectCache2 = this.foreignDao.getObjectCache();
                obj3 = objectCache2 == null ? null : objectCache2.get(getType(), obj2);
                if (obj3 == null) {
                    obj3 = obj2;
                    if (!z) {
                        obj3 = createForeignObject(connectionSource, obj2, objectCache);
                    }
                }
            }
        }
        Method method = this.fieldSetMethod;
        if (method != null) {
            try {
                method.invoke(obj, obj3);
                return;
            } catch (Exception e) {
                throw SqlExceptionUtil.create("Could not call " + this.fieldSetMethod + " on object with '" + obj3 + "' for " + this, e);
            }
        }
        try {
            this.field.set(obj, obj3);
        } catch (IllegalAccessException e2) {
            throw SqlExceptionUtil.create("Could not assign object '" + obj3 + "' of type " + obj3.getClass() + "' to field " + this, e2);
        } catch (IllegalArgumentException e3) {
            if (obj3 == null) {
                throw SqlExceptionUtil.create("Could not assign object '" + obj3 + "' to field " + this, e3);
            }
            throw SqlExceptionUtil.create("Could not assign object '" + obj3 + "' of type " + obj3.getClass() + " to field " + this, e3);
        }
    }

    public Object assignIdValue(ConnectionSource connectionSource, Object obj, Number number, ObjectCache objectCache) throws SQLException {
        Object convertIdNumber = this.dataPersister.convertIdNumber(number);
        if (convertIdNumber != null) {
            assignField(connectionSource, obj, convertIdNumber, false, objectCache);
            return convertIdNumber;
        }
        throw new SQLException("Invalid class " + this.dataPersister + " for sequence-id " + this);
    }

    public <FT, FID> BaseForeignCollection<FT, FID> buildForeignCollection(Object obj, FID fid) throws SQLException {
        if (this.foreignFieldType == null) {
            return null;
        }
        Dao<?, ?> dao = this.foreignDao;
        if (!this.fieldConfig.isForeignCollectionEager()) {
            return new LazyForeignCollection(dao, obj, fid, this.foreignFieldType, this.fieldConfig.getForeignCollectionOrderColumnName(), this.fieldConfig.isForeignCollectionOrderAscending());
        }
        ThreadLocal<LevelCounters> threadLocal = threadLevelCounters;
        LevelCounters levelCounters = threadLocal.get();
        LevelCounters levelCounters2 = levelCounters;
        if (levelCounters == null) {
            if (this.fieldConfig.getForeignCollectionMaxEagerLevel() == 0) {
                return new LazyForeignCollection(dao, obj, fid, this.foreignFieldType, this.fieldConfig.getForeignCollectionOrderColumnName(), this.fieldConfig.isForeignCollectionOrderAscending());
            }
            levelCounters2 = new LevelCounters();
            threadLocal.set(levelCounters2);
        }
        if (levelCounters2.foreignCollectionLevel == 0) {
            levelCounters2.foreignCollectionLevelMax = this.fieldConfig.getForeignCollectionMaxEagerLevel();
        }
        if (levelCounters2.foreignCollectionLevel >= levelCounters2.foreignCollectionLevelMax) {
            return new LazyForeignCollection(dao, obj, fid, this.foreignFieldType, this.fieldConfig.getForeignCollectionOrderColumnName(), this.fieldConfig.isForeignCollectionOrderAscending());
        }
        levelCounters2.foreignCollectionLevel++;
        try {
            EagerForeignCollection eagerForeignCollection = new EagerForeignCollection(dao, obj, fid, this.foreignFieldType, this.fieldConfig.getForeignCollectionOrderColumnName(), this.fieldConfig.isForeignCollectionOrderAscending());
            levelCounters2.foreignCollectionLevel--;
            return eagerForeignCollection;
        } catch (Throwable th) {
            levelCounters2.foreignCollectionLevel--;
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <FT, FID> void configDaoInformation(ConnectionSource connectionSource, Class<?> cls) throws SQLException {
        Dao<?, ?> dao;
        FieldType fieldType;
        FieldType fieldType2;
        FieldType fieldType3;
        TableInfo<?, ?> tableInfo;
        Dao<?, ?> dao2;
        Class<?> type = this.field.getType();
        DatabaseType databaseType = connectionSource.getDatabaseType();
        String foreignColumnName = this.fieldConfig.getForeignColumnName();
        MappedQueryForFieldEq<?, ?> mappedQueryForFieldEq = null;
        if (this.fieldConfig.isForeignAutoRefresh() || foreignColumnName != null) {
            DatabaseTableConfig<?> foreignTableConfig = this.fieldConfig.getForeignTableConfig();
            if (foreignTableConfig == null) {
                dao2 = DaoManager.createDao(connectionSource, type);
                tableInfo = dao2.getTableInfo();
            } else {
                foreignTableConfig.extractFieldTypes(databaseType);
                dao2 = DaoManager.createDao(connectionSource, foreignTableConfig);
                tableInfo = dao2.getTableInfo();
            }
            FieldType idField = tableInfo.getIdField();
            if (idField == null) {
                throw new IllegalArgumentException("Foreign field " + type + " does not have id field");
            }
            if (foreignColumnName == null) {
                fieldType2 = idField;
            } else {
                fieldType2 = tableInfo.getFieldTypeByColumnName(foreignColumnName);
                if (fieldType2 == null) {
                    throw new IllegalArgumentException("Foreign field " + type + " does not have field named '" + foreignColumnName + "'");
                }
            }
            mappedQueryForFieldEq = MappedQueryForFieldEq.build(dao2, tableInfo, fieldType2);
            fieldType = null;
            dao = dao2;
            fieldType3 = idField;
        } else if (this.fieldConfig.isForeign()) {
            DataPersister dataPersister = this.dataPersister;
            if (dataPersister != null && dataPersister.isPrimitive()) {
                throw new IllegalArgumentException("Field " + this + " is a primitive class " + type + " but marked as foreign");
            }
            DatabaseTableConfig<?> foreignTableConfig2 = this.fieldConfig.getForeignTableConfig();
            if (foreignTableConfig2 != null) {
                foreignTableConfig2.extractFieldTypes(databaseType);
                dao = DaoManager.createDao(connectionSource, foreignTableConfig2);
            } else {
                dao = DaoManager.createDao(connectionSource, type);
            }
            fieldType3 = dao.getTableInfo().getIdField();
            if (fieldType3 == null) {
                throw new IllegalArgumentException("Foreign field " + type + " does not have id field");
            } else if (isForeignAutoCreate() && !fieldType3.isGeneratedId()) {
                throw new IllegalArgumentException("Field " + this.field.getName() + ", if foreignAutoCreate = true then class " + type.getSimpleName() + " must have id field with generatedId = true");
            } else {
                fieldType2 = fieldType3;
                fieldType = null;
            }
        } else {
            if (!this.fieldConfig.isForeignCollection()) {
                dao = null;
                fieldType = null;
            } else if (type != Collection.class && !ForeignCollection.class.isAssignableFrom(type)) {
                throw new SQLException("Field class for '" + this.field.getName() + "' must be of class " + ForeignCollection.class.getSimpleName() + " or Collection.");
            } else {
                Type genericType = this.field.getGenericType();
                if (!(genericType instanceof ParameterizedType)) {
                    throw new SQLException("Field class for '" + this.field.getName() + "' must be a parameterized Collection.");
                }
                Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
                if (actualTypeArguments.length == 0) {
                    throw new SQLException("Field class for '" + this.field.getName() + "' must be a parameterized Collection with at least 1 type.");
                }
                Class<?>[] clsArr = actualTypeArguments;
                if (actualTypeArguments[0] instanceof TypeVariable) {
                    clsArr = ((ParameterizedType) cls.getGenericSuperclass()).getActualTypeArguments();
                }
                if (!(clsArr[0] instanceof Class)) {
                    throw new SQLException("Field class for '" + this.field.getName() + "' must be a parameterized Collection whose generic argument is an entity class not: " + clsArr[0]);
                }
                Class<?> cls2 = clsArr[0];
                DatabaseTableConfig<?> foreignTableConfig3 = this.fieldConfig.getForeignTableConfig();
                dao = foreignTableConfig3 == null ? DaoManager.createDao(connectionSource, cls2) : DaoManager.createDao(connectionSource, foreignTableConfig3);
                fieldType = findForeignFieldType(cls2, cls, dao);
            }
            fieldType3 = null;
            fieldType2 = null;
        }
        this.mappedQueryForForeignField = mappedQueryForFieldEq;
        this.foreignFieldType = fieldType;
        this.foreignDao = dao;
        this.foreignIdField = fieldType3;
        this.foreignRefField = fieldType2;
        if (fieldType2 != null) {
            assignDataType(databaseType, fieldType2.getDataPersister());
        }
    }

    public Object convertJavaFieldToSqlArgValue(Object obj) throws SQLException {
        if (obj == null) {
            return null;
        }
        return this.fieldConverter.javaToSqlArg(this, obj);
    }

    public Object convertStringToJavaField(String str, int i) throws SQLException {
        if (str == null) {
            return null;
        }
        return this.fieldConverter.resultStringToJava(this, str, i);
    }

    public <T> int createWithForeignDao(T t) throws SQLException {
        return this.foreignDao.create((Dao<?, ?>) t);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
        if (r0 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
        if (r0.equals(r0) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0054, code lost:
        r6 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L56
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            r1 = r3
            java.lang.Class r1 = r1.getClass()
            if (r0 == r1) goto L18
            r0 = r5
            r6 = r0
            goto L56
        L18:
            r0 = r4
            com.j256.ormlite.field.FieldType r0 = (com.j256.ormlite.field.FieldType) r0
            r7 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.reflect.Field r0 = r0.field
            r1 = r7
            java.lang.reflect.Field r1 = r1.field
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L56
            r0 = r3
            java.lang.Class<?> r0 = r0.parentClass
            r4 = r0
            r0 = r7
            java.lang.Class<?> r0 = r0.parentClass
            r7 = r0
            r0 = r4
            if (r0 != 0) goto L49
            r0 = r5
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L56
            goto L54
        L49:
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L56
        L54:
            r0 = 1
            r6 = r0
        L56:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.field.FieldType.equals(java.lang.Object):boolean");
    }

    public Object extractJavaFieldToSqlArgValue(Object obj) throws SQLException {
        return convertJavaFieldToSqlArgValue(extractJavaFieldValue(obj));
    }

    public Object extractJavaFieldValue(Object obj) throws SQLException {
        Object extractRawJavaFieldValue = extractRawJavaFieldValue(obj);
        FieldType fieldType = this.foreignRefField;
        Object obj2 = extractRawJavaFieldValue;
        if (fieldType != null) {
            obj2 = extractRawJavaFieldValue;
            if (extractRawJavaFieldValue != null) {
                obj2 = fieldType.extractRawJavaFieldValue(extractRawJavaFieldValue);
            }
        }
        return obj2;
    }

    public <FV> FV extractRawJavaFieldValue(Object obj) throws SQLException {
        Object invoke;
        Method method = this.fieldGetMethod;
        if (method == null) {
            try {
                invoke = this.field.get(obj);
            } catch (Exception e) {
                throw SqlExceptionUtil.create("Could not get field value for " + this, e);
            }
        } else {
            try {
                invoke = method.invoke(obj, new Object[0]);
            } catch (Exception e2) {
                throw SqlExceptionUtil.create("Could not call " + this.fieldGetMethod + " for " + this, e2);
            }
        }
        return (FV) invoke;
    }

    public Object generateId() {
        return this.dataPersister.generateId();
    }

    public String getColumnDefinition() {
        String fullColumnDefinition = this.fieldConfig.getFullColumnDefinition();
        String str = fullColumnDefinition;
        if (fullColumnDefinition == null) {
            str = this.fieldConfig.getColumnDefinition();
        }
        return str;
    }

    public String getColumnName() {
        return this.columnName;
    }

    public DataPersister getDataPersister() {
        return this.dataPersister;
    }

    public Object getDataTypeConfigObj() {
        return this.dataTypeConfigObj;
    }

    public Object getDefaultValue() {
        return this.defaultValue;
    }

    public Field getField() {
        return this.field;
    }

    public String getFieldName() {
        return this.field.getName();
    }

    public <FV> FV getFieldValueIfNotDefault(Object obj) throws SQLException {
        Object extractJavaFieldValue = extractJavaFieldValue(obj);
        Object obj2 = extractJavaFieldValue;
        if (isFieldValueDefault(extractJavaFieldValue)) {
            obj2 = null;
        }
        return (FV) obj2;
    }

    public FieldType getForeignIdField() {
        return this.foreignIdField;
    }

    public FieldType getForeignRefField() {
        return this.foreignRefField;
    }

    public String getFormat() {
        return this.fieldConfig.getFormat();
    }

    public String getGeneratedIdSequence() {
        return this.generatedIdSequence;
    }

    public Type getGenericType() {
        return this.field.getGenericType();
    }

    public String getIndexName() {
        return this.fieldConfig.getIndexName(this.tableName);
    }

    public Object getJavaDefaultValueDefault() {
        if (this.field.getType() == Boolean.TYPE) {
            return Boolean.valueOf(DEFAULT_VALUE_BOOLEAN);
        }
        if (this.field.getType() == Byte.TYPE || this.field.getType() == Byte.class) {
            return Byte.valueOf(DEFAULT_VALUE_BYTE);
        }
        if (this.field.getType() == Character.TYPE || this.field.getType() == Character.class) {
            return Character.valueOf(DEFAULT_VALUE_CHAR);
        }
        if (this.field.getType() == Short.TYPE || this.field.getType() == Short.class) {
            return Short.valueOf(DEFAULT_VALUE_SHORT);
        }
        if (this.field.getType() == Integer.TYPE || this.field.getType() == Integer.class) {
            return Integer.valueOf(DEFAULT_VALUE_INT);
        }
        if (this.field.getType() == Long.TYPE || this.field.getType() == Long.class) {
            return Long.valueOf(DEFAULT_VALUE_LONG);
        }
        if (this.field.getType() == Float.TYPE || this.field.getType() == Float.class) {
            return Float.valueOf(DEFAULT_VALUE_FLOAT);
        }
        if (this.field.getType() != Double.TYPE && this.field.getType() != Double.class) {
            return null;
        }
        return Double.valueOf(DEFAULT_VALUE_DOUBLE);
    }

    public SqlType getSqlType() {
        return this.fieldConverter.getSqlType();
    }

    public String getTableName() {
        return this.tableName;
    }

    public Class<?> getType() {
        return this.field.getType();
    }

    public String getUniqueIndexName() {
        return this.fieldConfig.getUniqueIndexName(this.tableName);
    }

    public Enum<?> getUnknownEnumVal() {
        return this.fieldConfig.getUnknownEnumValue();
    }

    public int getWidth() {
        return this.fieldConfig.getWidth();
    }

    public int hashCode() {
        return this.field.hashCode();
    }

    public boolean isAllowGeneratedIdInsert() {
        return this.fieldConfig.isAllowGeneratedIdInsert();
    }

    public boolean isArgumentHolderRequired() {
        return this.dataPersister.isArgumentHolderRequired();
    }

    public boolean isCanBeNull() {
        return this.fieldConfig.isCanBeNull();
    }

    public boolean isComparable() throws SQLException {
        if (this.fieldConfig.isForeignCollection()) {
            return false;
        }
        DataPersister dataPersister = this.dataPersister;
        if (dataPersister != null) {
            return dataPersister.isComparable();
        }
        throw new SQLException("Internal error.  Data-persister is not configured for field.  Please post _full_ exception with associated data objects to mailing list: " + this);
    }

    public boolean isEscapedDefaultValue() {
        return this.dataPersister.isEscapedDefaultValue();
    }

    public boolean isEscapedValue() {
        return this.dataPersister.isEscapedValue();
    }

    public boolean isForeign() {
        return this.fieldConfig.isForeign();
    }

    public boolean isForeignAutoCreate() {
        return this.fieldConfig.isForeignAutoCreate();
    }

    public boolean isForeignCollection() {
        return this.fieldConfig.isForeignCollection();
    }

    public boolean isGeneratedId() {
        return this.isGeneratedId;
    }

    public boolean isGeneratedIdSequence() {
        return this.generatedIdSequence != null;
    }

    public boolean isId() {
        return this.isId;
    }

    public boolean isObjectsFieldValueDefault(Object obj) throws SQLException {
        return isFieldValueDefault(extractJavaFieldValue(obj));
    }

    public boolean isReadOnly() {
        return this.fieldConfig.isReadOnly();
    }

    public boolean isSelfGeneratedId() {
        return this.dataPersister.isSelfGeneratedId();
    }

    public boolean isUnique() {
        return this.fieldConfig.isUnique();
    }

    public boolean isUniqueCombo() {
        return this.fieldConfig.isUniqueCombo();
    }

    public boolean isVersion() {
        return this.fieldConfig.isVersion();
    }

    public Object moveToNextValue(Object obj) throws SQLException {
        DataPersister dataPersister = this.dataPersister;
        if (dataPersister == null) {
            return null;
        }
        return dataPersister.moveToNextValue(obj);
    }

    public <T> T resultToJava(DatabaseResults databaseResults, Map<String, Integer> map) throws SQLException {
        Integer num = map.get(this.columnName);
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(databaseResults.findColumn(this.columnName));
            map.put(this.columnName, num2);
        }
        T t = (T) this.fieldConverter.resultToJava(this, databaseResults, num2.intValue());
        if (this.fieldConfig.isForeign()) {
            if (databaseResults.wasNull(num2.intValue())) {
                return null;
            }
        } else if (this.dataPersister.isPrimitive()) {
            if (this.fieldConfig.isThrowIfNull() && databaseResults.wasNull(num2.intValue())) {
                throw new SQLException("Results value for primitive field '" + this.field.getName() + "' was an invalid null value");
            }
        } else if (!this.fieldConverter.isStreamType() && databaseResults.wasNull(num2.intValue())) {
            return null;
        }
        return t;
    }

    public String toString() {
        return getClass().getSimpleName() + ":name=" + this.field.getName() + ",class=" + this.field.getDeclaringClass().getSimpleName();
    }
}
