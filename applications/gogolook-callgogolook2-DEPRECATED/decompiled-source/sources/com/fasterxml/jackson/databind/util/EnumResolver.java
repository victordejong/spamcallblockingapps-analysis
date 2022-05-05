package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/EnumResolver.class */
public class EnumResolver implements Serializable {
    public final Class<Enum<?>> _enumClass;
    public final Enum<?>[] _enums;
    public final HashMap<String, Enum<?>> _enumsById;

    public EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> hashMap) {
        this._enumClass = cls;
        this._enums = enumArr;
        this._enumsById = hashMap;
    }

    public static EnumResolver constructFor(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        Enum<?>[] enumConstants = cls.getEnumConstants();
        if (enumConstants != null) {
            String[] findEnumValues = annotationIntrospector.findEnumValues(cls, enumConstants, new String[enumConstants.length]);
            HashMap hashMap = new HashMap();
            int length = enumConstants.length;
            for (int i = 0; i < length; i++) {
                String str = findEnumValues[i];
                String str2 = str;
                if (str == null) {
                    str2 = enumConstants[i].name();
                }
                hashMap.put(str2, enumConstants[i]);
            }
            return new EnumResolver(cls, enumConstants, hashMap);
        }
        throw new IllegalArgumentException("No enum constants for class " + cls.getName());
    }

    public static EnumResolver constructUnsafe(Class<?> cls, AnnotationIntrospector annotationIntrospector) {
        return constructFor(cls, annotationIntrospector);
    }

    public static EnumResolver constructUnsafeUsingMethod(Class<?> cls, Method method) {
        return constructUsingMethod(cls, method);
    }

    public static EnumResolver constructUnsafeUsingToString(Class<?> cls) {
        return constructUsingToString(cls);
    }

    public static EnumResolver constructUsingMethod(Class<Enum<?>> cls, Method method) {
        Enum<?>[] enumConstants = cls.getEnumConstants();
        HashMap hashMap = new HashMap();
        int length = enumConstants.length;
        while (true) {
            int i = length - 1;
            if (i < 0) {
                return new EnumResolver(cls, enumConstants, hashMap);
            }
            Enum<?> r0 = enumConstants[i];
            try {
                Object invoke = method.invoke(r0, new Object[0]);
                length = i;
                if (invoke != null) {
                    hashMap.put(invoke.toString(), r0);
                    length = i;
                }
            } catch (Exception e) {
                throw new IllegalArgumentException("Failed to access @JsonValue of Enum value " + r0 + ": " + e.getMessage());
            }
        }
    }

    public static EnumResolver constructUsingToString(Class<Enum<?>> cls) {
        Enum<?>[] enumConstants = cls.getEnumConstants();
        HashMap hashMap = new HashMap();
        int length = enumConstants.length;
        while (true) {
            length--;
            if (length < 0) {
                return new EnumResolver(cls, enumConstants, hashMap);
            }
            Enum<?> r0 = enumConstants[length];
            hashMap.put(r0.toString(), r0);
        }
    }

    public CompactStringObjectMap constructLookup() {
        return CompactStringObjectMap.construct(this._enumsById);
    }

    public Enum<?> findEnum(String str) {
        return this._enumsById.get(str);
    }

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }

    public Enum<?>[] getRawEnums() {
        return this._enums;
    }
}
