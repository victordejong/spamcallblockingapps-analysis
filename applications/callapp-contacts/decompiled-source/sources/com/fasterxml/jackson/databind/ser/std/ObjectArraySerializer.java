package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
import java.util.Objects;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/ObjectArraySerializer.class */
public class ObjectArraySerializer extends ArraySerializerBase<Object[]> implements ContextualSerializer {
    protected PropertySerializerMap _dynamicSerializers;
    protected JsonSerializer<Object> _elementSerializer;
    protected final JavaType _elementType;
    protected final boolean _staticTyping;
    protected final TypeSerializer _valueTypeSerializer;

    public ObjectArraySerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(Object[].class);
        this._elementType = javaType;
        this._staticTyping = z;
        this._valueTypeSerializer = typeSerializer;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
        this._elementSerializer = jsonSerializer;
    }

    public ObjectArraySerializer(ObjectArraySerializer objectArraySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(objectArraySerializer, beanProperty, bool);
        this._elementType = objectArraySerializer._elementType;
        this._valueTypeSerializer = typeSerializer;
        this._staticTyping = objectArraySerializer._staticTyping;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
        this._elementSerializer = jsonSerializer;
    }

    public ObjectArraySerializer(ObjectArraySerializer objectArraySerializer, TypeSerializer typeSerializer) {
        super(objectArraySerializer);
        this._elementType = objectArraySerializer._elementType;
        this._valueTypeSerializer = typeSerializer;
        this._staticTyping = objectArraySerializer._staticTyping;
        this._dynamicSerializers = objectArraySerializer._dynamicSerializers;
        this._elementSerializer = objectArraySerializer._elementSerializer;
    }

    protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, JavaType javaType, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(javaType, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(cls, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public JsonSerializer<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new ObjectArraySerializer(this, beanProperty, this._valueTypeSerializer, this._elementSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new ObjectArraySerializer(this._elementType, this._staticTyping, typeSerializer, this._elementSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonArrayFormatVisitor expectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType);
        if (expectArrayFormat != null) {
            JavaType javaType2 = this._elementType;
            JsonSerializer<Object> jsonSerializer = this._elementSerializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                jsonSerializer2 = jsonFormatVisitorWrapper.getProvider().findContentValueSerializer(javaType2, this._property);
            }
            expectArrayFormat.itemsFormat(jsonSerializer2, javaType2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonSerializer<?> createContextual(com.fasterxml.jackson.databind.SerializerProvider r7, com.fasterxml.jackson.databind.BeanProperty r8) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r6 = this;
            r0 = r6
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r0 = r0._valueTypeSerializer
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0013
            r0 = r9
            r1 = r8
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r0 = r0.forProperty(r1)
            r10 = r0
        L_0x0013:
            r0 = 0
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0043
            r0 = r8
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r0 = r0.getMember()
            r9 = r0
            r0 = r7
            com.fasterxml.jackson.databind.AnnotationIntrospector r0 = r0.getAnnotationIntrospector()
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0043
            r0 = r12
            r1 = r9
            java.lang.Object r0 = r0.findContentSerializer(r1)
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0043
            r0 = r7
            r1 = r9
            r2 = r12
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.serializerInstance(r1, r2)
            r9 = r0
            goto L_0x0045
        L_0x0043:
            r0 = 0
            r9 = r0
        L_0x0045:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r6
            java.lang.Class r3 = r3.handledType()
            com.fasterxml.jackson.annotation.JsonFormat$Value r0 = r0.findFormatOverrides(r1, r2, r3)
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0060
            r0 = r12
            com.fasterxml.jackson.annotation.JsonFormat$Feature r1 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r0 = r0.getFeature(r1)
            r11 = r0
        L_0x0060:
            r0 = r9
            r12 = r0
            r0 = r9
            if (r0 != 0) goto L_0x006d
            r0 = r6
            com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> r0 = r0._elementSerializer
            r12 = r0
        L_0x006d:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r12
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.findContextualConvertingSerializer(r1, r2, r3)
            r12 = r0
            r0 = r12
            r9 = r0
            r0 = r12
            if (r0 != 0) goto L_0x00ac
            r0 = r6
            com.fasterxml.jackson.databind.JavaType r0 = r0._elementType
            r13 = r0
            r0 = r12
            r9 = r0
            r0 = r13
            if (r0 == 0) goto L_0x00ac
            r0 = r12
            r9 = r0
            r0 = r6
            boolean r0 = r0._staticTyping
            if (r0 == 0) goto L_0x00ac
            r0 = r12
            r9 = r0
            r0 = r13
            boolean r0 = r0.isJavaLangObject()
            if (r0 != 0) goto L_0x00ac
            r0 = r7
            r1 = r6
            com.fasterxml.jackson.databind.JavaType r1 = r1._elementType
            r2 = r8
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.findContentValueSerializer(r1, r2)
            r9 = r0
        L_0x00ac:
            r0 = r6
            r1 = r8
            r2 = r10
            r3 = r9
            r4 = r11
            com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer r0 = r0.withResolved(r1, r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JsonSerializer<?> getContentSerializer() {
        return this._elementSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this._elementType;
    }

    public boolean hasSingleElement(Object[] objArr) {
        return objArr.length == 1;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Object[] objArr) {
        return objArr.length == 0;
    }

    public final void serialize(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = objArr.length;
        if (length != 1 || ((this._unwrapSingle != null || !serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) && this._unwrapSingle != Boolean.TRUE)) {
            jsonGenerator.writeStartArray(objArr, length);
            serializeContents(objArr, jsonGenerator, serializerProvider);
            jsonGenerator.writeEndArray();
            return;
        }
        serializeContents(objArr, jsonGenerator, serializerProvider);
    }

    public void serializeContents(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = objArr.length;
        if (length != 0) {
            JsonSerializer<Object> jsonSerializer = this._elementSerializer;
            if (jsonSerializer != null) {
                serializeContentsUsing(objArr, jsonGenerator, serializerProvider, jsonSerializer);
            } else if (this._valueTypeSerializer != null) {
                serializeTypedContents(objArr, jsonGenerator, serializerProvider);
            } else {
                int i = 0;
                Object obj = null;
                try {
                    PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
                    for (int i2 = 0; i2 < length; i2++) {
                        Object obj2 = objArr[i2];
                        if (obj2 == null) {
                            serializerProvider.defaultSerializeNull(jsonGenerator);
                        } else {
                            i = i2;
                            obj = obj2;
                            Class<?> cls = obj2.getClass();
                            JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                            JsonSerializer<Object> jsonSerializer2 = serializerFor;
                            if (serializerFor == null) {
                                jsonSerializer2 = this._elementType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                            }
                            jsonSerializer2.serialize(obj2, jsonGenerator, serializerProvider);
                        }
                    }
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, obj, i);
                }
            }
        }
    }

    public void serializeContentsUsing(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        Object obj;
        int length = objArr.length;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        for (int i = 0; i < length; i++) {
            Object obj2 = objArr[i];
            if (obj2 == null) {
                obj = obj2;
                try {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                    continue;
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, obj, i);
                    return;
                }
            } else if (typeSerializer == null) {
                obj = obj2;
                jsonSerializer.serialize(obj2, jsonGenerator, serializerProvider);
                continue;
            } else {
                obj = obj2;
                jsonSerializer.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
                continue;
            }
        }
    }

    public void serializeTypedContents(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = objArr.length;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        int i = 0;
        Object obj = null;
        try {
            PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
            for (int i2 = 0; i2 < length; i2++) {
                Object obj2 = objArr[i2];
                if (obj2 == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    i = i2;
                    obj = obj2;
                    Class<?> cls = obj2.getClass();
                    JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                    JsonSerializer<Object> jsonSerializer = serializerFor;
                    if (serializerFor == null) {
                        jsonSerializer = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                    }
                    jsonSerializer.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, obj, i);
        }
    }

    public ObjectArraySerializer withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        return (this._property == beanProperty && jsonSerializer == this._elementSerializer && this._valueTypeSerializer == typeSerializer && Objects.equals(this._unwrapSingle, bool)) ? this : new ObjectArraySerializer(this, beanProperty, typeSerializer, jsonSerializer, bool);
    }
}
