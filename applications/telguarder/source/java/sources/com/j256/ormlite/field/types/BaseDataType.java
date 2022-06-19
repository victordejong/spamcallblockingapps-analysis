package com.j256.ormlite.field.types;

import com.j256.ormlite.field.BaseFieldConverter;
import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.lang.reflect.Field;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/BaseDataType.class */
public abstract class BaseDataType extends BaseFieldConverter implements DataPersister {
    private static final Class<?>[] NO_CLASSES = new Class[0];
    private final Class<?>[] classes;
    private final SqlType sqlType;

    public BaseDataType(SqlType sqlType) {
        this.sqlType = sqlType;
        this.classes = NO_CLASSES;
    }

    public BaseDataType(SqlType sqlType, Class<?>[] clsArr) {
        this.sqlType = sqlType;
        this.classes = clsArr;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public Object convertIdNumber(Number number) {
        return null;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean dataIsEqual(Object obj, Object obj2) {
        boolean z = false;
        if (obj == null) {
            if (obj2 == null) {
                z = true;
            }
            return z;
        } else if (obj2 != null) {
            return obj.equals(obj2);
        } else {
            return false;
        }
    }

    @Override // com.j256.ormlite.field.DataPersister
    public Object generateId() {
        throw new IllegalStateException("Should not have tried to generate this type");
    }

    @Override // com.j256.ormlite.field.DataPersister
    public String[] getAssociatedClassNames() {
        return null;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public Class<?>[] getAssociatedClasses() {
        return this.classes;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public int getDefaultWidth() {
        return 0;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public Class<?> getPrimaryClass() {
        Class<?>[] clsArr = this.classes;
        if (clsArr.length == 0) {
            return null;
        }
        return clsArr[0];
    }

    @Override // com.j256.ormlite.field.DataPersister
    public String getSqlOtherType() {
        return null;
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public SqlType getSqlType() {
        return this.sqlType;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isAppropriateId() {
        return true;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isArgumentHolderRequired() {
        return false;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isComparable() {
        return true;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isEscapedDefaultValue() {
        return isEscapedValue();
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isEscapedValue() {
        return true;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isPrimitive() {
        return false;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isSelfGeneratedId() {
        return false;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isValidForField(Field field) {
        Class<?>[] clsArr = this.classes;
        if (clsArr.length == 0) {
            return true;
        }
        for (Class<?> cls : clsArr) {
            if (cls.isAssignableFrom(field.getType())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isValidForVersion() {
        return false;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public boolean isValidGeneratedType() {
        return false;
    }

    @Override // com.j256.ormlite.field.DataPersister
    public Object moveToNextValue(Object obj) throws SQLException {
        return null;
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultStringToJava(FieldType fieldType, String str, int i) throws SQLException {
        return sqlArgToJava(fieldType, parseDefaultString(fieldType, str), i);
    }
}
