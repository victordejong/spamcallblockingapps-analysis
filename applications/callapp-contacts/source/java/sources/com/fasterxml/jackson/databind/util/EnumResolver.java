package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/EnumResolver.class */
public class EnumResolver implements Serializable {
    protected final Enum<?> _defaultValue;
    protected final Class<Enum<?>> _enumClass;
    protected final Enum<?>[] _enums;
    protected final HashMap<String, Enum<?>> _enumsById;
    protected final boolean _isIgnoreCase;

    @Deprecated
    protected EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> hashMap, Enum<?> r11) {
        this(cls, enumArr, hashMap, r11, false);
    }

    protected EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> hashMap, Enum<?> r7, boolean z) {
        this._enumClass = cls;
        this._enums = enumArr;
        this._enumsById = hashMap;
        this._defaultValue = r7;
        this._isIgnoreCase = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.String[], java.lang.String[][]] */
    protected static EnumResolver _constructFor(Class<?> cls, AnnotationIntrospector annotationIntrospector, boolean z) {
        Class<Enum<?>> _enumClass = _enumClass(cls);
        Enum<?>[] _enumConstants = _enumConstants(cls);
        String[] findEnumValues = annotationIntrospector.findEnumValues(_enumClass, _enumConstants, new String[_enumConstants.length]);
        ?? r0 = new String[findEnumValues.length];
        annotationIntrospector.findEnumAliases(_enumClass, _enumConstants, r0);
        HashMap hashMap = new HashMap();
        int length = _enumConstants.length;
        for (int i = 0; i < length; i++) {
            Enum<?> r02 = _enumConstants[i];
            String str = findEnumValues[i];
            String str2 = str;
            if (str == null) {
                str2 = r02.name();
            }
            hashMap.put(str2, r02);
            Object[] objArr = r0[i];
            if (objArr != 0) {
                for (Object[] objArr2 : objArr) {
                    if (!hashMap.containsKey(objArr2)) {
                        hashMap.put(objArr2, r02);
                    }
                }
            }
        }
        return new EnumResolver(_enumClass, _enumConstants, hashMap, _enumDefault(annotationIntrospector, _enumClass), z);
    }

    protected static EnumResolver _constructUsingMethod(Class<?> cls, AnnotatedMember annotatedMember, AnnotationIntrospector annotationIntrospector, boolean z) {
        Class<Enum<?>> _enumClass = _enumClass(cls);
        Enum<?>[] _enumConstants = _enumConstants(cls);
        HashMap hashMap = new HashMap();
        int length = _enumConstants.length;
        while (true) {
            int i = length - 1;
            if (i >= 0) {
                Enum<?> r0 = _enumConstants[i];
                try {
                    Object value = annotatedMember.getValue(r0);
                    length = i;
                    if (value != null) {
                        hashMap.put(value.toString(), r0);
                        length = i;
                    }
                } catch (Exception e) {
                    throw new IllegalArgumentException("Failed to access @JsonValue of Enum value " + r0 + ": " + e.getMessage());
                }
            } else {
                return new EnumResolver(_enumClass, _enumConstants, hashMap, _enumDefault(annotationIntrospector, _enumClass), z);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.String[], java.lang.String[][]] */
    protected static EnumResolver _constructUsingToString(Class<?> cls, AnnotationIntrospector annotationIntrospector, boolean z) {
        Class<Enum<?>> _enumClass = _enumClass(cls);
        Enum<?>[] _enumConstants = _enumConstants(cls);
        HashMap hashMap = new HashMap();
        ?? r0 = new String[_enumConstants.length];
        annotationIntrospector.findEnumAliases(_enumClass, _enumConstants, r0);
        int length = _enumConstants.length;
        while (true) {
            int i = length - 1;
            if (i >= 0) {
                Enum<?> r02 = _enumConstants[i];
                hashMap.put(r02.toString(), r02);
                Object[] objArr = r0[i];
                length = i;
                if (objArr != 0) {
                    int length2 = objArr.length;
                    int i2 = 0;
                    while (true) {
                        length = i;
                        if (i2 < length2) {
                            Object[] objArr2 = objArr[i2];
                            if (!hashMap.containsKey(objArr2)) {
                                hashMap.put(objArr2, r02);
                            }
                            i2++;
                        }
                    }
                }
            } else {
                return new EnumResolver(_enumClass, _enumConstants, hashMap, _enumDefault(annotationIntrospector, _enumClass), z);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static Class<Enum<?>> _enumClass(Class<?> cls) {
        return cls;
    }

    protected static Enum<?>[] _enumConstants(Class<?> cls) {
        Enum<?>[] enumConstants = _enumClass(cls).getEnumConstants();
        if (enumConstants != null) {
            return enumConstants;
        }
        throw new IllegalArgumentException("No enum constants for class " + cls.getName());
    }

    protected static Enum<?> _enumDefault(AnnotationIntrospector annotationIntrospector, Class<?> cls) {
        if (annotationIntrospector != null) {
            return annotationIntrospector.findDefaultEnumValue(_enumClass(cls));
        }
        return null;
    }

    public static EnumResolver constructFor(DeserializationConfig deserializationConfig, Class<?> cls) {
        return _constructFor(cls, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    public static EnumResolver constructUsingMethod(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMember annotatedMember) {
        return _constructUsingMethod(cls, annotatedMember, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    public static EnumResolver constructUsingToString(DeserializationConfig deserializationConfig, Class<?> cls) {
        return _constructUsingToString(cls, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    protected Enum<?> _findEnumCaseInsensitive(String str) {
        for (Map.Entry<String, Enum<?>> entry : this._enumsById.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                return entry.getValue();
            }
        }
        return null;
    }

    public CompactStringObjectMap constructLookup() {
        return CompactStringObjectMap.construct(this._enumsById);
    }

    public Enum<?> findEnum(String str) {
        Enum<?> r0 = this._enumsById.get(str);
        return (r0 != null || !this._isIgnoreCase) ? r0 : _findEnumCaseInsensitive(str);
    }

    public Enum<?> getDefaultValue() {
        return this._defaultValue;
    }

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }

    public Collection<String> getEnumIds() {
        return this._enumsById.keySet();
    }

    public Enum<?>[] getRawEnums() {
        return this._enums;
    }
}
