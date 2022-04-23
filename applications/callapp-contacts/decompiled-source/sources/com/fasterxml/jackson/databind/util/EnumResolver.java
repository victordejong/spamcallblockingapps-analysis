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
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static com.fasterxml.jackson.databind.util.EnumResolver _constructFor(java.lang.Class<?> r8, com.fasterxml.jackson.databind.AnnotationIntrospector r9, boolean r10) {
        /*
            r0 = r8
            java.lang.Class r0 = _enumClass(r0)
            r11 = r0
            r0 = r8
            java.lang.Enum[] r0 = _enumConstants(r0)
            r12 = r0
            r0 = r9
            r1 = r11
            r2 = r12
            r3 = r12
            int r3 = r3.length
            java.lang.String[] r3 = new java.lang.String[r3]
            java.lang.String[] r0 = r0.findEnumValues(r1, r2, r3)
            r13 = r0
            r0 = r13
            int r0 = r0.length
            java.lang.String[] r0 = new java.lang.String[r0]
            r14 = r0
            r0 = r9
            r1 = r11
            r2 = r12
            r3 = r14
            r0.findEnumAliases(r1, r2, r3)
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r15 = r0
            r0 = r12
            int r0 = r0.length
            r16 = r0
            r0 = 0
            r17 = r0
        L_0x003c:
            r0 = r17
            r1 = r16
            if (r0 >= r1) goto L_0x00a7
            r0 = r12
            r1 = r17
            r0 = r0[r1]
            r18 = r0
            r0 = r13
            r1 = r17
            r0 = r0[r1]
            r19 = r0
            r0 = r19
            r8 = r0
            r0 = r19
            if (r0 != 0) goto L_0x005f
            r0 = r18
            java.lang.String r0 = r0.name()
            r8 = r0
        L_0x005f:
            r0 = r15
            r1 = r8
            r2 = r18
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r14
            r1 = r17
            r0 = r0[r1]
            r19 = r0
            r0 = r19
            if (r0 == 0) goto L_0x00a1
            r0 = r19
            int r0 = r0.length
            r20 = r0
            r0 = 0
            r21 = r0
        L_0x007c:
            r0 = r21
            r1 = r20
            if (r0 >= r1) goto L_0x00a1
            r0 = r19
            r1 = r21
            r0 = r0[r1]
            r8 = r0
            r0 = r15
            r1 = r8
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x009b
            r0 = r15
            r1 = r8
            r2 = r18
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x009b:
            int r21 = r21 + 1
            goto L_0x007c
        L_0x00a1:
            int r17 = r17 + 1
            goto L_0x003c
        L_0x00a7:
            com.fasterxml.jackson.databind.util.EnumResolver r0 = new com.fasterxml.jackson.databind.util.EnumResolver
            r1 = r0
            r2 = r11
            r3 = r12
            r4 = r15
            r5 = r9
            r6 = r11
            java.lang.Enum r5 = _enumDefault(r5, r6)
            r6 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.EnumResolver._constructFor(java.lang.Class, com.fasterxml.jackson.databind.AnnotationIntrospector, boolean):com.fasterxml.jackson.databind.util.EnumResolver");
    }

    protected static EnumResolver _constructUsingMethod(Class<?> cls, AnnotatedMember annotatedMember, AnnotationIntrospector annotationIntrospector, boolean z) {
        Class<Enum<?>> _enumClass = _enumClass(cls);
        Enum<?>[] _enumConstants = _enumConstants(cls);
        HashMap hashMap = new HashMap();
        int length = _enumConstants.length;
        while (true) {
            int i = length - 1;
            if (i < 0) {
                return new EnumResolver(_enumClass, _enumConstants, hashMap, _enumDefault(annotationIntrospector, _enumClass), z);
            }
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
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.String[], java.lang.String[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static com.fasterxml.jackson.databind.util.EnumResolver _constructUsingToString(java.lang.Class<?> r8, com.fasterxml.jackson.databind.AnnotationIntrospector r9, boolean r10) {
        /*
            r0 = r8
            java.lang.Class r0 = _enumClass(r0)
            r11 = r0
            r0 = r8
            java.lang.Enum[] r0 = _enumConstants(r0)
            r12 = r0
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r12
            int r0 = r0.length
            java.lang.String[] r0 = new java.lang.String[r0]
            r8 = r0
            r0 = r9
            r1 = r11
            r2 = r12
            r3 = r8
            r0.findEnumAliases(r1, r2, r3)
            r0 = r12
            int r0 = r0.length
            r14 = r0
        L_0x0028:
            r0 = r14
            r1 = 1
            int r0 = r0 - r1
            r15 = r0
            r0 = r15
            if (r0 < 0) goto L_0x008a
            r0 = r12
            r1 = r15
            r0 = r0[r1]
            r16 = r0
            r0 = r13
            r1 = r16
            java.lang.String r1 = r1.toString()
            r2 = r16
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r8
            r1 = r15
            r0 = r0[r1]
            r17 = r0
            r0 = r15
            r14 = r0
            r0 = r17
            if (r0 == 0) goto L_0x0028
            r0 = r17
            int r0 = r0.length
            r18 = r0
            r0 = 0
            r19 = r0
        L_0x005e:
            r0 = r15
            r14 = r0
            r0 = r19
            r1 = r18
            if (r0 >= r1) goto L_0x0028
            r0 = r17
            r1 = r19
            r0 = r0[r1]
            r20 = r0
            r0 = r13
            r1 = r20
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0084
            r0 = r13
            r1 = r20
            r2 = r16
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x0084:
            int r19 = r19 + 1
            goto L_0x005e
        L_0x008a:
            com.fasterxml.jackson.databind.util.EnumResolver r0 = new com.fasterxml.jackson.databind.util.EnumResolver
            r1 = r0
            r2 = r11
            r3 = r12
            r4 = r13
            r5 = r9
            r6 = r11
            java.lang.Enum r5 = _enumDefault(r5, r6)
            r6 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.EnumResolver._constructUsingToString(java.lang.Class, com.fasterxml.jackson.databind.AnnotationIntrospector, boolean):com.fasterxml.jackson.databind.util.EnumResolver");
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
