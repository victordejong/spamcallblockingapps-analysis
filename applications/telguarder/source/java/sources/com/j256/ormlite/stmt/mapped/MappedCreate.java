package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Log;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.GeneratedKeyHolder;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/MappedCreate.class */
public class MappedCreate<T, ID> extends BaseMappedStatement<T, ID> {
    private String dataClassName;
    private final String queryNextSequenceStmt;
    private int versionFieldTypeIndex;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder.class */
    public static class KeyHolder implements GeneratedKeyHolder {
        final String columnName;
        Number key;

        public KeyHolder(String str) {
            this.columnName = str;
        }

        @Override // com.j256.ormlite.support.GeneratedKeyHolder
        public void addKey(Number number) throws SQLException {
            if (this.key == null) {
                this.key = number;
                return;
            }
            throw new SQLException("generated key has already been set to " + this.key + ", trying now to set to " + number);
        }

        @Override // com.j256.ormlite.support.GeneratedKeyHolder
        public String getColumnName() {
            return this.columnName;
        }

        public Number getKey() {
            return this.key;
        }
    }

    private MappedCreate(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr, String str2, int i) {
        super(dao, tableInfo, str, fieldTypeArr);
        this.dataClassName = tableInfo.getDataClass().getSimpleName();
        this.queryNextSequenceStmt = str2;
        this.versionFieldTypeIndex = i;
    }

    private void assignIdValue(T t, Number number, String str, ObjectCache objectCache) throws SQLException {
        this.idField.assignIdValue(this.connectionSource, t, number, objectCache);
        if (logger.isLevelEnabled(Log.Level.DEBUG)) {
            logger.debug("assigned id '{}' from {} to '{}' in {} object", new Object[]{number, str, this.idField.getFieldName(), this.dataClassName});
        }
    }

    private void assignSequenceId(DatabaseConnection databaseConnection, T t, ObjectCache objectCache) throws SQLException {
        long queryForLong = databaseConnection.queryForLong(this.queryNextSequenceStmt);
        logger.debug("queried for sequence {} using stmt: {}", Long.valueOf(queryForLong), this.queryNextSequenceStmt);
        if (queryForLong != 0) {
            assignIdValue(t, Long.valueOf(queryForLong), "sequence", objectCache);
            return;
        }
        throw new SQLException("Should not have returned 0 for stmt: " + this.queryNextSequenceStmt);
    }

    public static <T, ID> MappedCreate<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo) {
        int i;
        FieldType[] fieldTypes;
        DatabaseType databaseType = dao.getConnectionSource().getDatabaseType();
        StringBuilder sb = new StringBuilder(128);
        appendTableName(databaseType, sb, "INSERT INTO ", (TableInfo<?, ?>) tableInfo);
        FieldType[] fieldTypes2 = tableInfo.getFieldTypes();
        int length = fieldTypes2.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i = i4;
            if (i2 >= length) {
                break;
            }
            FieldType fieldType = fieldTypes2[i2];
            int i5 = i3;
            int i6 = i;
            if (isFieldCreatable(databaseType, fieldType)) {
                if (fieldType.isVersion()) {
                    i = i3;
                }
                i5 = i3 + 1;
                i6 = i;
            }
            i2++;
            i3 = i5;
            i4 = i6;
        }
        FieldType[] fieldTypeArr = new FieldType[i3];
        if (i3 == 0) {
            databaseType.appendInsertNoColumns(sb);
        } else {
            sb.append('(');
            boolean z = true;
            int i7 = 0;
            for (FieldType fieldType2 : tableInfo.getFieldTypes()) {
                if (isFieldCreatable(databaseType, fieldType2)) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(',');
                    }
                    appendFieldColumnName(databaseType, sb, fieldType2, null);
                    fieldTypeArr[i7] = fieldType2;
                    i7++;
                }
            }
            sb.append(") VALUES (");
            boolean z2 = true;
            for (FieldType fieldType3 : tableInfo.getFieldTypes()) {
                if (isFieldCreatable(databaseType, fieldType3)) {
                    if (z2) {
                        z2 = false;
                    } else {
                        sb.append(',');
                    }
                    sb.append('?');
                }
            }
            sb.append(')');
        }
        return new MappedCreate<>(dao, tableInfo, sb.toString(), fieldTypeArr, buildQueryNextSequence(databaseType, tableInfo.getIdField()), i);
    }

    private static String buildQueryNextSequence(DatabaseType databaseType, FieldType fieldType) {
        String generatedIdSequence;
        if (fieldType == null || (generatedIdSequence = fieldType.getGeneratedIdSequence()) == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(64);
        databaseType.appendSelectNextValFromSequence(sb, generatedIdSequence);
        return sb.toString();
    }

    private boolean foreignCollectionsAreAssigned(FieldType[] fieldTypeArr, Object obj) throws SQLException {
        for (FieldType fieldType : fieldTypeArr) {
            if (fieldType.extractJavaFieldValue(obj) == null) {
                return false;
            }
        }
        return true;
    }

    private static boolean isFieldCreatable(DatabaseType databaseType, FieldType fieldType) {
        if (!fieldType.isForeignCollection() && !fieldType.isReadOnly()) {
            return (databaseType.isIdSequenceNeeded() && databaseType.isSelectSequenceBeforeInsert()) || !fieldType.isGeneratedId() || fieldType.isSelfGeneratedId() || fieldType.isAllowGeneratedIdInsert();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b1 A[Catch: SQLException -> 0x0235, TRY_LEAVE, TryCatch #1 {SQLException -> 0x0235, blocks: (B:30:0x00a7, B:32:0x00b1, B:37:0x00d1, B:40:0x00dc, B:42:0x00e9, B:44:0x00f6, B:45:0x00fe, B:46:0x0104, B:51:0x0126, B:54:0x015a, B:55:0x015d, B:57:0x0178, B:62:0x018d, B:65:0x01a6, B:67:0x01af, B:69:0x01b8, B:70:0x01c6, B:71:0x01d2, B:72:0x01d3, B:73:0x01d6, B:74:0x01df, B:77:0x01e5, B:79:0x01f4, B:83:0x020e, B:85:0x0228, B:87:0x0234, B:53:0x0148), top: B:93:0x00a7, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0178 A[Catch: SQLException -> 0x0235, TryCatch #1 {SQLException -> 0x0235, blocks: (B:30:0x00a7, B:32:0x00b1, B:37:0x00d1, B:40:0x00dc, B:42:0x00e9, B:44:0x00f6, B:45:0x00fe, B:46:0x0104, B:51:0x0126, B:54:0x015a, B:55:0x015d, B:57:0x0178, B:62:0x018d, B:65:0x01a6, B:67:0x01af, B:69:0x01b8, B:70:0x01c6, B:71:0x01d2, B:72:0x01d3, B:73:0x01d6, B:74:0x01df, B:77:0x01e5, B:79:0x01f4, B:83:0x020e, B:85:0x0228, B:87:0x0234, B:53:0x0148), top: B:93:0x00a7, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0188  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int insert(com.j256.ormlite.p017db.DatabaseType r8, com.j256.ormlite.support.DatabaseConnection r9, T r10, com.j256.ormlite.dao.ObjectCache r11) throws java.sql.SQLException {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.stmt.mapped.MappedCreate.insert(com.j256.ormlite.db.DatabaseType, com.j256.ormlite.support.DatabaseConnection, java.lang.Object, com.j256.ormlite.dao.ObjectCache):int");
    }
}
