package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.RuntimeJsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer.class */
public class AtomicReferenceSerializer extends StdSerializer<AtomicReference<?>> implements ContextualSerializer {
    public final JsonInclude.Include _contentInclusion;
    public transient PropertySerializerMap _dynamicSerializers;
    public final BeanProperty _property;
    public final JavaType _referredType;
    public final NameTransformer _unwrapper;
    public final JsonSerializer<Object> _valueSerializer;
    public final TypeSerializer _valueTypeSerializer;

    public AtomicReferenceSerializer(AtomicReferenceSerializer atomicReferenceSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, NameTransformer nameTransformer, JsonInclude.Include include) {
        super(atomicReferenceSerializer);
        this._referredType = atomicReferenceSerializer._referredType;
        this._dynamicSerializers = atomicReferenceSerializer._dynamicSerializers;
        this._property = beanProperty;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._unwrapper = nameTransformer;
        if (include == JsonInclude.Include.USE_DEFAULTS || include == JsonInclude.Include.ALWAYS) {
            this._contentInclusion = null;
        } else {
            this._contentInclusion = include;
        }
    }

    public AtomicReferenceSerializer(ReferenceType referenceType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(referenceType);
        this._referredType = referenceType.getReferencedType();
        this._property = null;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._unwrapper = null;
        this._contentInclusion = null;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
    }

    public final JsonSerializer<Object> _findCachedSerializer(SerializerProvider serializerProvider, Class<?> cls) throws JsonMappingException {
        JsonSerializer<Object> serializerFor = this._dynamicSerializers.serializerFor(cls);
        JsonSerializer<Object> jsonSerializer = serializerFor;
        if (serializerFor == null) {
            JsonSerializer<Object> _findSerializer = _findSerializer(serializerProvider, cls, this._property);
            NameTransformer nameTransformer = this._unwrapper;
            JsonSerializer<Object> jsonSerializer2 = _findSerializer;
            if (nameTransformer != null) {
                jsonSerializer2 = _findSerializer.unwrappingSerializer(nameTransformer);
            }
            this._dynamicSerializers = this._dynamicSerializers.newWith(cls, jsonSerializer2);
            jsonSerializer = jsonSerializer2;
        }
        return jsonSerializer;
    }

    public final JsonSerializer<Object> _findSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return serializerProvider.findTypedValueSerializer(javaType, true, beanProperty);
    }

    public final JsonSerializer<Object> _findSerializer(SerializerProvider serializerProvider, Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        return serializerProvider.findTypedValueSerializer(cls, true, beanProperty);
    }

    public boolean _useStatic(SerializerProvider serializerProvider, BeanProperty beanProperty, JavaType javaType) {
        if (javaType.isJavaLangObject()) {
            return false;
        }
        if (javaType.isFinal() || javaType.useStaticType()) {
            return true;
        }
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        if (!(annotationIntrospector == null || beanProperty == null || beanProperty.getMember() == null)) {
            JsonSerialize.Typing findSerializationTyping = annotationIntrospector.findSerializationTyping(beanProperty.getMember());
            if (findSerializationTyping == JsonSerialize.Typing.STATIC) {
                return true;
            }
            if (findSerializationTyping == JsonSerialize.Typing.DYNAMIC) {
                return false;
            }
        }
        return serializerProvider.isEnabled(MapperFeature.USE_STATIC_TYPING);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            JsonSerializer<Object> _findSerializer = _findSerializer(jsonFormatVisitorWrapper.getProvider(), this._referredType, this._property);
            NameTransformer nameTransformer = this._unwrapper;
            jsonSerializer2 = _findSerializer;
            if (nameTransformer != null) {
                jsonSerializer2 = _findSerializer.unwrappingSerializer(nameTransformer);
            }
        }
        jsonSerializer2.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, this._referredType);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0062, code lost:
        if (r8 != com.fasterxml.jackson.annotation.JsonInclude.Include.USE_DEFAULTS) goto L_0x006b;
     */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonSerializer<?> createContextual(com.fasterxml.jackson.databind.SerializerProvider r8, com.fasterxml.jackson.databind.BeanProperty r9) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r7 = this;
            r0 = r7
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r0 = r0._valueTypeSerializer
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0013
            r0 = r10
            r1 = r9
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r0 = r0.forProperty(r1)
            r11 = r0
        L_0x0013:
            r0 = r7
            com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> r0 = r0._valueSerializer
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0037
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r7
            com.fasterxml.jackson.databind.JavaType r3 = r3._referredType
            boolean r0 = r0._useStatic(r1, r2, r3)
            if (r0 == 0) goto L_0x003e
            r0 = r7
            r1 = r8
            r2 = r7
            com.fasterxml.jackson.databind.JavaType r2 = r2._referredType
            r3 = r9
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0._findSerializer(r1, r2, r3)
            r10 = r0
            goto L_0x003e
        L_0x0037:
            r0 = r8
            r1 = r10
            r2 = r9
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.handlePrimaryContextualization(r1, r2)
            r10 = r0
        L_0x003e:
            r0 = r7
            com.fasterxml.jackson.annotation.JsonInclude$Include r0 = r0._contentInclusion
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0068
            r0 = r9
            r1 = r8
            com.fasterxml.jackson.databind.SerializationConfig r1 = r1.getConfig()
            java.lang.Class<java.util.concurrent.atomic.AtomicReference> r2 = java.util.concurrent.atomic.AtomicReference.class
            com.fasterxml.jackson.annotation.JsonInclude$Value r0 = r0.findPropertyInclusion(r1, r2)
            com.fasterxml.jackson.annotation.JsonInclude$Include r0 = r0.getContentInclusion()
            r8 = r0
            r0 = r8
            r1 = r12
            if (r0 == r1) goto L_0x0068
            r0 = r8
            com.fasterxml.jackson.annotation.JsonInclude$Include r1 = com.fasterxml.jackson.annotation.JsonInclude.Include.USE_DEFAULTS
            if (r0 == r1) goto L_0x0068
            goto L_0x006b
        L_0x0068:
            r0 = r12
            r8 = r0
        L_0x006b:
            r0 = r7
            r1 = r9
            r2 = r11
            r3 = r10
            r4 = r7
            com.fasterxml.jackson.databind.util.NameTransformer r4 = r4._unwrapper
            r5 = r8
            com.fasterxml.jackson.databind.ser.std.AtomicReferenceSerializer r0 = r0.withResolved(r1, r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.AtomicReferenceSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    public boolean isEmpty(SerializerProvider serializerProvider, AtomicReference<?> atomicReference) {
        Object obj;
        if (atomicReference == null || (obj = atomicReference.get()) == null) {
            return true;
        }
        if (this._contentInclusion == null) {
            return false;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            try {
                jsonSerializer2 = _findCachedSerializer(serializerProvider, atomicReference.getClass());
            } catch (JsonMappingException e) {
                throw new RuntimeJsonMappingException(e);
            }
        }
        return jsonSerializer2.isEmpty(serializerProvider, obj);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isUnwrappingSerializer() {
        return this._unwrapper != null;
    }

    public void serialize(AtomicReference<?> atomicReference, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Object obj = atomicReference.get();
        if (obj != null) {
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                jsonSerializer2 = _findCachedSerializer(serializerProvider, obj.getClass());
            }
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            if (typeSerializer != null) {
                jsonSerializer2.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
            } else {
                jsonSerializer2.serialize(obj, jsonGenerator, serializerProvider);
            }
        } else if (this._unwrapper == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        }
    }

    public void serializeWithType(AtomicReference<?> atomicReference, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        if (atomicReference.get() != null) {
            typeSerializer.writeTypePrefixForScalar(atomicReference, jsonGenerator);
            serialize(atomicReference, jsonGenerator, serializerProvider);
            typeSerializer.writeTypeSuffixForScalar(atomicReference, jsonGenerator);
        } else if (this._unwrapper == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public JsonSerializer<AtomicReference<?>> unwrappingSerializer(NameTransformer nameTransformer) {
        JsonSerializer<?> jsonSerializer = this._valueSerializer;
        JsonSerializer<?> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer != null) {
            jsonSerializer2 = jsonSerializer.unwrappingSerializer(nameTransformer);
        }
        NameTransformer nameTransformer2 = this._unwrapper;
        if (nameTransformer2 != null) {
            nameTransformer = NameTransformer.chainedTransformer(nameTransformer, nameTransformer2);
        }
        return withResolved(this._property, this._valueTypeSerializer, jsonSerializer2, nameTransformer, this._contentInclusion);
    }

    public AtomicReferenceSerializer withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, NameTransformer nameTransformer, JsonInclude.Include include) {
        return (this._property == beanProperty && include == this._contentInclusion && this._valueTypeSerializer == typeSerializer && this._valueSerializer == jsonSerializer && this._unwrapper == nameTransformer) ? this : new AtomicReferenceSerializer(this, beanProperty, typeSerializer, jsonSerializer, nameTransformer, include);
    }
}
