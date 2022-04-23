package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/PropertyBuilder.class */
public class PropertyBuilder {
    public static final Object NO_DEFAULT_MARKER = Boolean.FALSE;
    public final AnnotationIntrospector _annotationIntrospector;
    public final BeanDescription _beanDesc;
    public final SerializationConfig _config;
    public Object _defaultBean;
    public final JsonInclude.Value _defaultInclusion;

    /* renamed from: com.fasterxml.jackson.databind.ser.PropertyBuilder$1 */
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/PropertyBuilder$1.class */
    public static /* synthetic */ class C27441 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = new int[JsonInclude.Include.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.ALWAYS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public PropertyBuilder(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        this._config = serializationConfig;
        this._beanDesc = beanDescription;
        this._defaultInclusion = beanDescription.findPropertyInclusion(serializationConfig.getDefaultPropertyInclusion());
        this._annotationIntrospector = this._config.getAnnotationIntrospector();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r5 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object _throwWrapped(java.lang.Exception r5, java.lang.String r6, java.lang.Object r7) {
        /*
            r4 = this;
        L_0x0000:
            r0 = r5
            java.lang.Throwable r0 = r0.getCause()
            if (r0 == 0) goto L_0x000f
            r0 = r5
            java.lang.Throwable r0 = r0.getCause()
            r5 = r0
            goto L_0x0000
        L_0x000f:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Error
            if (r0 != 0) goto L_0x005d
            r0 = r5
            boolean r0 = r0 instanceof java.lang.RuntimeException
            if (r0 == 0) goto L_0x0022
            r0 = r5
            java.lang.RuntimeException r0 = (java.lang.RuntimeException) r0
            throw r0
        L_0x0022:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "Failed to get property '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = "' of default "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " instance"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x005d:
            r0 = r5
            java.lang.Error r0 = (java.lang.Error) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.PropertyBuilder._throwWrapped(java.lang.Exception, java.lang.String, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.ser.BeanPropertyWriter buildWriter(com.fasterxml.jackson.databind.SerializerProvider r13, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition r14, com.fasterxml.jackson.databind.JavaType r15, com.fasterxml.jackson.databind.JsonSerializer<?> r16, com.fasterxml.jackson.databind.jsontype.TypeSerializer r17, com.fasterxml.jackson.databind.jsontype.TypeSerializer r18, com.fasterxml.jackson.databind.introspect.AnnotatedMember r19, boolean r20) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.PropertyBuilder.buildWriter(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition, com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.introspect.AnnotatedMember, boolean):com.fasterxml.jackson.databind.ser.BeanPropertyWriter");
    }

    public JavaType findSerializationType(Annotated annotated, boolean z, JavaType javaType) throws JsonMappingException {
        JavaType refineSerializationType = this._annotationIntrospector.refineSerializationType(this._config, annotated, javaType);
        JavaType javaType2 = javaType;
        if (refineSerializationType != javaType) {
            Class<?> rawClass = refineSerializationType.getRawClass();
            Class<?> rawClass2 = javaType.getRawClass();
            if (!rawClass.isAssignableFrom(rawClass2) && !rawClass2.isAssignableFrom(rawClass)) {
                throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + annotated.getName() + "': class " + rawClass.getName() + " not a super-type of (declared) class " + rawClass2.getName());
            }
            javaType2 = refineSerializationType;
            z = true;
        }
        JsonSerialize.Typing findSerializationTyping = this._annotationIntrospector.findSerializationTyping(annotated);
        boolean z2 = z;
        if (findSerializationTyping != null) {
            z2 = z;
            if (findSerializationTyping != JsonSerialize.Typing.DEFAULT_TYPING) {
                z2 = findSerializationTyping == JsonSerialize.Typing.STATIC;
            }
        }
        if (z2) {
            return javaType2.withStaticTyping();
        }
        return null;
    }

    public Annotations getClassAnnotations() {
        return this._beanDesc.getClassAnnotations();
    }

    public Object getDefaultBean() {
        Object obj = this._defaultBean;
        Object obj2 = obj;
        if (obj == null) {
            Object instantiateBean = this._beanDesc.instantiateBean(this._config.canOverrideAccessModifiers());
            obj2 = instantiateBean;
            if (instantiateBean == null) {
                obj2 = NO_DEFAULT_MARKER;
            }
            this._defaultBean = obj2;
        }
        return obj2 == NO_DEFAULT_MARKER ? null : this._defaultBean;
    }

    public Object getDefaultValue(JavaType javaType) {
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
        return null;
    }

    public Object getPropertyDefaultValue(String str, AnnotatedMember annotatedMember, JavaType javaType) {
        Object defaultBean = getDefaultBean();
        if (defaultBean == null) {
            return getDefaultValue(javaType);
        }
        try {
            return annotatedMember.getValue(defaultBean);
        } catch (Exception e) {
            _throwWrapped(e, str, defaultBean);
            throw null;
        }
    }
}
