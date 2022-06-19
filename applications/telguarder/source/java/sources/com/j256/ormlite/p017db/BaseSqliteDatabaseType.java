package com.j256.ormlite.p017db;

import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.FieldConverter;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.field.converter.BooleanNumberFieldConverter;
import com.j256.ormlite.field.types.BigDecimalStringType;
import java.util.List;
/* renamed from: com.j256.ormlite.db.BaseSqliteDatabaseType */
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/db/BaseSqliteDatabaseType.class */
public abstract class BaseSqliteDatabaseType extends BaseDatabaseType {
    private static final FieldConverter booleanConverter = new BooleanNumberFieldConverter();

    /* renamed from: com.j256.ormlite.db.BaseSqliteDatabaseType$1 */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/db/BaseSqliteDatabaseType$1.class */
    static /* synthetic */ class C18101 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$field$SqlType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[SqlType.values().length];
            $SwitchMap$com$j256$ormlite$field$SqlType = iArr;
            try {
                iArr[SqlType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BIG_DECIMAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public void appendInsertNoColumns(StringBuilder sb) {
        sb.append("DEFAULT VALUES");
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType
    protected void appendLongType(StringBuilder sb, FieldType fieldType, int i) {
        if (fieldType.getSqlType() != SqlType.LONG || !fieldType.isGeneratedId()) {
            sb.append("BIGINT");
        } else {
            sb.append("INTEGER");
        }
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType
    protected void configureGeneratedId(String str, StringBuilder sb, FieldType fieldType, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        if (fieldType.getSqlType() == SqlType.INTEGER || fieldType.getSqlType() == SqlType.LONG) {
            sb.append("PRIMARY KEY AUTOINCREMENT ");
            return;
        }
        throw new IllegalArgumentException("Sqlite requires that auto-increment generated-id be integer or long type");
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType
    protected boolean generatedIdSqlAtEnd() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public FieldConverter getFieldConverter(DataPersister dataPersister, FieldType fieldType) {
        int i = C18101.$SwitchMap$com$j256$ormlite$field$SqlType[dataPersister.getSqlType().ordinal()];
        return i != 1 ? i != 2 ? super.getFieldConverter(dataPersister, fieldType) : BigDecimalStringType.getSingleton() : booleanConverter;
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateIfNotExistsSupported() {
        return true;
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public boolean isCreateTableReturnsZero() {
        return false;
    }

    @Override // com.j256.ormlite.p017db.BaseDatabaseType, com.j256.ormlite.p017db.DatabaseType
    public boolean isVarcharFieldWidthSupported() {
        return false;
    }
}
