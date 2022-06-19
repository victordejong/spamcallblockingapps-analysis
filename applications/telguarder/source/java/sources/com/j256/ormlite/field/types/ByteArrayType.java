package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/ByteArrayType.class */
public class ByteArrayType extends BaseDataType {
    private static final ByteArrayType singleTon = new ByteArrayType();

    private ByteArrayType() {
        super(SqlType.BYTE_ARRAY);
    }

    protected ByteArrayType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }

    private Object getBytesImpl(FieldType fieldType, String str) throws SQLException {
        if (fieldType == null || fieldType.getFormat() == null) {
            return str.getBytes();
        }
        try {
            return str.getBytes(fieldType.getFormat());
        } catch (UnsupportedEncodingException e) {
            throw SqlExceptionUtil.create("Could not convert default string: " + str, e);
        }
    }

    public static ByteArrayType getSingleton() {
        return singleTon;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean dataIsEqual(Object obj, Object obj2) {
        boolean z = false;
        if (obj == null) {
            if (obj2 == null) {
                z = true;
            }
            return z;
        } else if (obj2 != null) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        } else {
            return false;
        }
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public Class<?> getPrimaryClass() {
        return byte[].class;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isArgumentHolderRequired() {
        return true;
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object parseDefaultString(FieldType fieldType, String str) throws SQLException {
        return str == null ? null : getBytesImpl(fieldType, str);
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.FieldConverter
    public Object resultStringToJava(FieldType fieldType, String str, int i) throws SQLException {
        return getBytesImpl(fieldType, str);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i) throws SQLException {
        return databaseResults.getBytes(i);
    }
}
