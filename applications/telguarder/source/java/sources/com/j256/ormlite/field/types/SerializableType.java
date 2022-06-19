package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/SerializableType.class */
public class SerializableType extends BaseDataType {
    private static final SerializableType singleTon = new SerializableType();

    private SerializableType() {
        super(SqlType.SERIALIZABLE);
    }

    protected SerializableType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }

    public static SerializableType getSingleton() {
        return singleTon;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public Class<?> getPrimaryClass() {
        return Serializable.class;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isAppropriateId() {
        return false;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isArgumentHolderRequired() {
        return true;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isComparable() {
        return false;
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public boolean isStreamType() {
        return true;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isValidForField(Field field) {
        return Serializable.class.isAssignableFrom(field.getType());
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object javaToSqlArg(FieldType fieldType, Object obj) throws SQLException {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        ObjectOutputStream objectOutputStream2;
        Exception e;
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Exception e2) {
                e = e2;
                objectOutputStream2 = null;
            }
        } catch (Throwable th2) {
            objectOutputStream = objectOutputStream3;
            th = th2;
        }
        try {
            objectOutputStream2.writeObject(obj);
            objectOutputStream2.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            IOUtils.closeQuietly(null);
            return byteArray;
        } catch (Exception e3) {
            e = e3;
            ObjectOutputStream objectOutputStream4 = objectOutputStream2;
            StringBuilder sb = new StringBuilder();
            ObjectOutputStream objectOutputStream5 = objectOutputStream2;
            sb.append("Could not write serialized object to byte array: ");
            ObjectOutputStream objectOutputStream6 = objectOutputStream2;
            sb.append(obj);
            objectOutputStream3 = objectOutputStream2;
            throw SqlExceptionUtil.create(sb.toString(), e);
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream = objectOutputStream2;
            IOUtils.closeQuietly(objectOutputStream);
            throw th;
        }
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object parseDefaultString(FieldType fieldType, String str) throws SQLException {
        throw new SQLException("Default values for serializable types are not supported");
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.FieldConverter
    public Object resultStringToJava(FieldType fieldType, String str, int i) throws SQLException {
        throw new SQLException("Serializable type cannot be converted from string to Java");
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i) throws SQLException {
        return databaseResults.getBytes(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable] */
    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object sqlArgToJava(FieldType fieldType, Object obj, int i) throws SQLException {
        Throwable th;
        Exception e;
        ObjectInputStream objectInputStream;
        byte[] bArr = (byte[]) obj;
        try {
            try {
                objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
                try {
                    Object readObject = objectInputStream.readObject();
                    IOUtils.closeQuietly(objectInputStream);
                    return readObject;
                } catch (Exception e2) {
                    e = e2;
                    ObjectInputStream objectInputStream2 = objectInputStream;
                    StringBuilder sb = new StringBuilder();
                    ObjectInputStream objectInputStream3 = objectInputStream;
                    sb.append("Could not read serialized object from byte array: ");
                    ObjectInputStream objectInputStream4 = objectInputStream;
                    sb.append(Arrays.toString(bArr));
                    ObjectInputStream objectInputStream5 = objectInputStream;
                    sb.append("(len ");
                    ObjectInputStream objectInputStream6 = objectInputStream;
                    sb.append(bArr.length);
                    ObjectInputStream objectInputStream7 = objectInputStream;
                    sb.append(")");
                    ObjectInputStream objectInputStream8 = objectInputStream;
                    throw SqlExceptionUtil.create(sb.toString(), e);
                }
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly(fieldType);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            objectInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fieldType = null;
            IOUtils.closeQuietly(fieldType);
            throw th;
        }
    }
}
