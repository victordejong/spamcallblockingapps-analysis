package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/BaseDateType.class */
public abstract class BaseDateType extends BaseDataType {
    protected static final DateStringFormatConfig defaultDateFormatConfig = new DateStringFormatConfig("yyyy-MM-dd HH:mm:ss.SSSSSS");

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig.class */
    public static class DateStringFormatConfig {
        private final DateFormat dateFormat;
        private final String dateFormatStr;

        public DateStringFormatConfig(String str) {
            this.dateFormatStr = str;
            this.dateFormat = new SimpleDateFormat(str);
        }

        public DateFormat getDateFormat() {
            return (DateFormat) this.dateFormat.clone();
        }

        public String toString() {
            return this.dateFormatStr;
        }
    }

    public BaseDateType(SqlType sqlType) {
        super(sqlType);
    }

    public BaseDateType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }

    public static DateStringFormatConfig convertDateStringConfig(FieldType fieldType, DateStringFormatConfig dateStringFormatConfig) {
        DateStringFormatConfig dateStringFormatConfig2;
        if (fieldType != null && (dateStringFormatConfig2 = (DateStringFormatConfig) fieldType.getDataTypeConfigObj()) != null) {
            return dateStringFormatConfig2;
        }
        return dateStringFormatConfig;
    }

    public static String normalizeDateString(DateStringFormatConfig dateStringFormatConfig, String str) throws ParseException {
        DateFormat dateFormat = dateStringFormatConfig.getDateFormat();
        return dateFormat.format(dateFormat.parse(str));
    }

    public static Date parseDateString(DateStringFormatConfig dateStringFormatConfig, String str) throws ParseException {
        return dateStringFormatConfig.getDateFormat().parse(str);
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isValidForField(Field field) {
        return field.getType() == Date.class;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isValidForVersion() {
        return true;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public Object moveToNextValue(Object obj) {
        long currentTimeMillis = System.currentTimeMillis();
        if (obj != null && currentTimeMillis == ((Date) obj).getTime()) {
            return new Date(currentTimeMillis + 1);
        }
        return new Date(currentTimeMillis);
    }
}
