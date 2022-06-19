package com.j256.ormlite.p017db;

import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.FieldConverter;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.sql.Driver;
import java.sql.SQLException;
import java.util.List;
import java.util.Locale;
/* renamed from: com.j256.ormlite.db.BaseDatabaseType */
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/db/BaseDatabaseType.class */
public abstract class BaseDatabaseType implements DatabaseType {
    protected static String DEFAULT_SEQUENCE_SUFFIX = "_id_seq";
    protected Driver driver;
    protected Logger logger = LoggerFactory.getLogger(getClass());

    /* renamed from: com.j256.ormlite.db.BaseDatabaseType$1 */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/db/BaseDatabaseType$1.class */
    static /* synthetic */ class C18091 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$field$SqlType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[SqlType.values().length];
            $SwitchMap$com$j256$ormlite$field$SqlType = iArr;
            try {
                iArr[SqlType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.LONG_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.DATE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.CHAR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BYTE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BYTE_ARRAY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.SHORT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.INTEGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.LONG.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.SERIALIZABLE.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BIG_DECIMAL.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.UUID.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.OTHER.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.UNKNOWN.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    private void addSingleUnique(StringBuilder sb, FieldType fieldType, List<String> list, List<String> list2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" UNIQUE (");
        appendEscapedEntityName(sb2, fieldType.getColumnName());
        sb2.append(')');
        list.add(sb2.toString());
    }

    private void appendCanBeNull(StringBuilder sb, FieldType fieldType) {
    }

    private void appendDefaultValue(StringBuilder sb, FieldType fieldType, Object obj) {
        if (fieldType.isEscapedDefaultValue()) {
            appendEscapedWord(sb, obj.toString());
        } else {
            sb.append(obj);
        }
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void addPrimaryKeySql(FieldType[] fieldTypeArr, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        StringBuilder sb;
        int length = fieldTypeArr.length;
        StringBuilder sb2 = null;
        int i = 0;
        while (i < length) {
            FieldType fieldType = fieldTypeArr[i];
            if (!fieldType.isGeneratedId() || generatedIdSqlAtEnd() || fieldType.isSelfGeneratedId()) {
                sb = sb2;
                if (fieldType.isId()) {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(48);
                        sb2.append("PRIMARY KEY (");
                    } else {
                        sb2.append(',');
                    }
                    appendEscapedEntityName(sb2, fieldType.getColumnName());
                    sb = sb2;
                }
            } else {
                sb = sb2;
            }
            i++;
            sb2 = sb;
        }
        if (sb2 != null) {
            sb2.append(") ");
            list.add(sb2.toString());
        }
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void addUniqueComboSql(FieldType[] fieldTypeArr, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        int length = fieldTypeArr.length;
        StringBuilder sb = null;
        int i = 0;
        while (i < length) {
            FieldType fieldType = fieldTypeArr[i];
            StringBuilder sb2 = sb;
            if (fieldType.isUniqueCombo()) {
                if (sb == null) {
                    sb = new StringBuilder(48);
                    sb.append("UNIQUE (");
                } else {
                    sb.append(',');
                }
                appendEscapedEntityName(sb, fieldType.getColumnName());
                sb2 = sb;
            }
            i++;
            sb = sb2;
        }
        if (sb != null) {
            sb.append(") ");
            list.add(sb.toString());
        }
    }

    protected void appendBigDecimalNumericType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("NUMERIC");
    }

    protected void appendBooleanType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("BOOLEAN");
    }

    protected void appendByteArrayType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("BLOB");
    }

    protected void appendByteType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("TINYINT");
    }

    protected void appendCharType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("CHAR");
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendColumnArg(String str, StringBuilder sb, FieldType fieldType, List<String> list, List<String> list2, List<String> list3, List<String> list4) throws SQLException {
        appendEscapedEntityName(sb, fieldType.getColumnName());
        sb.append(' ');
        DataPersister dataPersister = fieldType.getDataPersister();
        int width = fieldType.getWidth();
        int i = width;
        if (width == 0) {
            i = dataPersister.getDefaultWidth();
        }
        switch (C18091.$SwitchMap$com$j256$ormlite$field$SqlType[dataPersister.getSqlType().ordinal()]) {
            case 1:
                appendStringType(sb, fieldType, i);
                break;
            case 2:
                appendLongStringType(sb, fieldType, i);
                break;
            case 3:
                appendBooleanType(sb, fieldType, i);
                break;
            case 4:
                appendDateType(sb, fieldType, i);
                break;
            case 5:
                appendCharType(sb, fieldType, i);
                break;
            case 6:
                appendByteType(sb, fieldType, i);
                break;
            case 7:
                appendByteArrayType(sb, fieldType, i);
                break;
            case 8:
                appendShortType(sb, fieldType, i);
                break;
            case 9:
                appendIntegerType(sb, fieldType, i);
                break;
            case 10:
                appendLongType(sb, fieldType, i);
                break;
            case 11:
                appendFloatType(sb, fieldType, i);
                break;
            case 12:
                appendDoubleType(sb, fieldType, i);
                break;
            case 13:
                appendSerializableType(sb, fieldType, i);
                break;
            case 14:
                appendBigDecimalNumericType(sb, fieldType, i);
                break;
            case 15:
                appendUuidNativeType(sb, fieldType, i);
                break;
            case 16:
                String sqlOtherType = dataPersister.getSqlOtherType();
                if (sqlOtherType != null) {
                    sb.append(sqlOtherType);
                    break;
                }
                break;
            default:
                throw new IllegalArgumentException("Unknown SQL-type " + dataPersister.getSqlType());
        }
        sb.append(' ');
        if (fieldType.isGeneratedIdSequence() && !fieldType.isSelfGeneratedId()) {
            configureGeneratedIdSequence(sb, fieldType, list2, list, list4);
        } else if (fieldType.isGeneratedId() && !fieldType.isSelfGeneratedId()) {
            configureGeneratedId(str, sb, fieldType, list2, list3, list, list4);
        } else if (fieldType.isId()) {
            configureId(sb, fieldType, list2, list, list4);
        }
        if (!fieldType.isGeneratedId()) {
            Object defaultValue = fieldType.getDefaultValue();
            if (defaultValue != null) {
                sb.append("DEFAULT ");
                appendDefaultValue(sb, fieldType, defaultValue);
                sb.append(' ');
            }
            if (fieldType.isCanBeNull()) {
                appendCanBeNull(sb, fieldType);
            } else {
                sb.append("NOT NULL ");
            }
            if (!fieldType.isUnique()) {
                return;
            }
            addSingleUnique(sb, fieldType, list, list3);
        }
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendCreateSchemaSuffix(StringBuilder sb) {
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendCreateTableSuffix(StringBuilder sb) {
    }

    protected void appendDateType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("TIMESTAMP");
    }

    protected void appendDoubleType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("DOUBLE PRECISION");
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendEscapedEntityName(StringBuilder sb, String str) {
        sb.append('`');
        int indexOf = str.indexOf(46);
        if (indexOf > 0) {
            sb.append(str.substring(0, indexOf));
            sb.append("`.`");
            sb.append(str.substring(indexOf + 1));
        } else {
            sb.append(str);
        }
        sb.append('`');
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendEscapedWord(StringBuilder sb, String str) {
        sb.append('\'');
        sb.append(str);
        sb.append('\'');
    }

    protected void appendFloatType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("FLOAT");
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendInsertNoColumns(StringBuilder sb) {
        sb.append("() VALUES ()");
    }

    protected void appendIntegerType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("INTEGER");
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendLimitValue(StringBuilder sb, long j, Long l) {
        sb.append("LIMIT ");
        sb.append(j);
        sb.append(' ');
    }

    protected void appendLongStringType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("TEXT");
    }

    protected void appendLongType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("BIGINT");
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendOffsetValue(StringBuilder sb, long j) {
        sb.append("OFFSET ");
        sb.append(j);
        sb.append(' ');
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void appendSelectNextValFromSequence(StringBuilder sb, String str) {
    }

    protected void appendSerializableType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("BLOB");
    }

    public void appendShortType(StringBuilder sb, FieldType fieldType, int i) {
        sb.append("SMALLINT");
    }

    public void appendStringType(StringBuilder sb, FieldType fieldType, int i) {
        if (!isVarcharFieldWidthSupported()) {
            sb.append("VARCHAR");
            return;
        }
        sb.append("VARCHAR(");
        sb.append(i);
        sb.append(')');
    }

    protected void appendUuidNativeType(StringBuilder sb, FieldType fieldType, int i) {
        throw new UnsupportedOperationException("UUID is not supported by this database type");
    }

    protected void configureGeneratedId(String str, StringBuilder sb, FieldType fieldType, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        throw new IllegalStateException("GeneratedId is not supported by database " + getDatabaseName() + " for field " + fieldType);
    }

    protected void configureGeneratedIdSequence(StringBuilder sb, FieldType fieldType, List<String> list, List<String> list2, List<String> list3) throws SQLException {
        throw new SQLException("GeneratedIdSequence is not supported by database " + getDatabaseName() + " for field " + fieldType);
    }

    protected void configureId(StringBuilder sb, FieldType fieldType, List<String> list, List<String> list2, List<String> list3) {
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public String downCaseString(String str, boolean z) {
        return z ? str.toLowerCase(Locale.ENGLISH) : str.toLowerCase();
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void dropColumnArg(FieldType fieldType, List<String> list, List<String> list2) {
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public <T> DatabaseTableConfig<T> extractDatabaseTableConfig(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return null;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public String generateIdSequenceName(String str, FieldType fieldType) {
        String str2 = str + DEFAULT_SEQUENCE_SUFFIX;
        String str3 = str2;
        if (isEntityNamesMustBeUpCase()) {
            str3 = upCaseEntityName(str2);
        }
        return str3;
    }

    protected boolean generatedIdSqlAtEnd() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public String getCommentLinePrefix() {
        return "-- ";
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public DataPersister getDataPersister(DataPersister dataPersister, FieldType fieldType) {
        return dataPersister;
    }

    @Deprecated
    protected String getDriverClassName() {
        return null;
    }

    protected String[] getDriverClassNames() {
        String driverClassName = getDriverClassName();
        return driverClassName == null ? new String[0] : new String[]{driverClassName};
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public FieldConverter getFieldConverter(DataPersister dataPersister, FieldType fieldType) {
        return dataPersister;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public String getPingStatement() {
        return "SELECT 1";
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isAllowGeneratedIdInsertSupported() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isBatchUseTransaction() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateIfNotExistsSupported() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateIndexIfNotExistsSupported() {
        return isCreateIfNotExistsSupported();
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateSchemaIfNotExistsSupported() {
        return isCreateIfNotExistsSupported();
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateSchemaReturnsNegative() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateSchemaReturnsZero() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateTableReturnsNegative() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateTableReturnsZero() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isEntityNamesMustBeUpCase() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isIdSequenceNeeded() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isLimitAfterSelect() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isLimitSqlSupported() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isNestedSavePointsSupported() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isOffsetLimitArgument() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isOffsetSqlSupported() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isSelectSequenceBeforeInsert() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isTruncateSupported() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isVarcharFieldWidthSupported() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean loadDriver() {
        String[] driverClassNames;
        for (String str : getDriverClassNames()) {
            if (str != null) {
                try {
                    Class.forName(str);
                    return true;
                } catch (ClassNotFoundException e) {
                    this.logger.warn("Driver class was not found for " + getDatabaseName() + " database.  Class not found: " + str, e);
                }
            }
        }
        return false;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public void setDriver(Driver driver) {
        this.driver = driver;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public String upCaseEntityName(String str) {
        return upCaseString(str, true);
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public String upCaseString(String str, boolean z) {
        return z ? str.toUpperCase(Locale.ENGLISH) : str.toUpperCase();
    }
}
