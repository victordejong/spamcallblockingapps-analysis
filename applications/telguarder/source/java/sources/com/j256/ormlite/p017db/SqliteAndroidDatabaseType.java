package com.j256.ormlite.p017db;

import com.j256.ormlite.android.DatabaseTableConfigUtil;
import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.field.types.DateStringType;
import com.j256.ormlite.field.types.SqlDateStringType;
import com.j256.ormlite.field.types.SqlDateType;
import com.j256.ormlite.field.types.TimeStampStringType;
import com.j256.ormlite.field.types.TimeStampType;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.sql.SQLException;
/* renamed from: com.j256.ormlite.db.SqliteAndroidDatabaseType */
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/db/SqliteAndroidDatabaseType.class */
public class SqliteAndroidDatabaseType extends BaseSqliteDatabaseType {

    /* renamed from: com.j256.ormlite.db.SqliteAndroidDatabaseType$1 */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/db/SqliteAndroidDatabaseType$1.class */
    static /* synthetic */ class C18111 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$field$SqlType;

        static {
            int[] iArr = new int[SqlType.values().length];
            $SwitchMap$com$j256$ormlite$field$SqlType = iArr;
            try {
                iArr[SqlType.DATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType
    protected void appendBooleanType(StringBuilder sb, FieldType fieldType, int i) {
        appendShortType(sb, fieldType, i);
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType
    protected void appendDateType(StringBuilder sb, FieldType fieldType, int i) {
        appendStringType(sb, fieldType, i);
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public void appendEscapedEntityName(StringBuilder sb, String str) {
        sb.append('`');
        sb.append(str);
        sb.append('`');
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public <T> DatabaseTableConfig<T> extractDatabaseTableConfig(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return DatabaseTableConfigUtil.fromClass(connectionSource, cls);
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public DataPersister getDataPersister(DataPersister dataPersister, FieldType fieldType) {
        if (dataPersister != null && C18111.$SwitchMap$com$j256$ormlite$field$SqlType[dataPersister.getSqlType().ordinal()] == 1) {
            return dataPersister instanceof TimeStampType ? TimeStampStringType.getSingleton() : dataPersister instanceof SqlDateType ? SqlDateStringType.getSingleton() : DateStringType.getSingleton();
        }
        return super.getDataPersister(dataPersister, fieldType);
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public String getDatabaseName() {
        return "Android SQLite";
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public boolean isBatchUseTransaction() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.DatabaseType
    public boolean isDatabaseUrlThisType(String str, String str2) {
        return true;
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public boolean isNestedSavePointsSupported() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public boolean loadDriver() {
        return true;
    }
}
