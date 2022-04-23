package io.objectbox.converter;
/* loaded from: classes5-dex2jar.jar:io/objectbox/converter/NullToEmptyStringConverter.class */
public class NullToEmptyStringConverter implements PropertyConverter<String, String> {
    public String convertToDatabaseValue(String str) {
        return str;
    }

    public String convertToEntityProperty(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }
}
