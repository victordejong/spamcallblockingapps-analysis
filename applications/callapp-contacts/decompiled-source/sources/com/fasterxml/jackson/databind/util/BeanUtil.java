package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.JavaType;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/BeanUtil.class */
public class BeanUtil {
    public static String checkUnsupportedType(JavaType javaType) {
        String str;
        String str2;
        String name = javaType.getRawClass().getName();
        if (isJava8TimeClass(name)) {
            if (name.indexOf(46, 10) >= 0) {
                return null;
            }
            str2 = "Java 8 date/time";
            str = "com.fasterxml.jackson.datatype:jackson-datatype-jsr310";
        } else if (!isJodaTimeClass(name)) {
            return null;
        } else {
            str2 = "Joda date/time";
            str = "com.fasterxml.jackson.datatype:jackson-datatype-joda";
        }
        return String.format("%s type %s not supported by default: add Module \"%s\" to enable handling", str2, ClassUtil.getTypeDescription(javaType), str);
    }

    public static Object getDefaultValue(JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        Class<?> primitiveType = ClassUtil.primitiveType(rawClass);
        if (primitiveType != null) {
            return ClassUtil.defaultValue(primitiveType);
        }
        if (javaType.isContainerType() || javaType.isReferenceType()) {
            return JsonInclude.Include.NON_EMPTY;
        }
        if (rawClass == String.class) {
            return "";
        }
        if (javaType.isTypeOrSubTypeOf(Date.class)) {
            return new Date(0L);
        }
        if (!javaType.isTypeOrSubTypeOf(Calendar.class)) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(0L);
        return gregorianCalendar;
    }

    private static boolean isJava8TimeClass(String str) {
        return str.startsWith("java.time.");
    }

    private static boolean isJodaTimeClass(String str) {
        return str.startsWith("org.joda.time.");
    }
}
