package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer.class */
public class AsArrayTypeSerializer extends TypeSerializerBase {
    public AsArrayTypeSerializer(TypeIdResolver typeIdResolver, BeanProperty beanProperty) {
        super(typeIdResolver, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public AsArrayTypeSerializer forProperty(BeanProperty beanProperty) {
        return this._property == beanProperty ? this : new AsArrayTypeSerializer(this._idResolver, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public JsonTypeInfo.EnumC2723As getTypeInclusion() {
        return JsonTypeInfo.EnumC2723As.WRAPPER_ARRAY;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeStartArray();
            jsonGenerator.writeString(str);
        } else if (str != null) {
            jsonGenerator.writeTypeId(str);
        }
        jsonGenerator.writeStartArray();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeStartArray();
            jsonGenerator.writeString(str);
        } else if (str != null) {
            jsonGenerator.writeTypeId(str);
        }
        jsonGenerator.writeStartObject();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            writeTypeSuffixForArray(obj, jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            writeTypeSuffixForObject(obj, jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
        String idFromValue = idFromValue(obj);
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeStartArray();
            jsonGenerator.writeString(idFromValue);
        } else if (idFromValue != null) {
            jsonGenerator.writeTypeId(idFromValue);
        }
        jsonGenerator.writeStartArray();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
        String idFromValue = idFromValue(obj);
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeStartArray();
            jsonGenerator.writeString(idFromValue);
        } else if (idFromValue != null) {
            jsonGenerator.writeTypeId(idFromValue);
        }
        jsonGenerator.writeStartObject();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
        String idFromValue = idFromValue(obj);
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeStartArray();
            jsonGenerator.writeString(idFromValue);
        } else if (idFromValue != null) {
            jsonGenerator.writeTypeId(idFromValue);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        String idFromValueAndType = idFromValueAndType(obj, cls);
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeStartArray();
            jsonGenerator.writeString(idFromValueAndType);
        } else if (idFromValueAndType != null) {
            jsonGenerator.writeTypeId(idFromValueAndType);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeEndArray();
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeEndArray();
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeEndObject();
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeEndArray();
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeEndArray();
        }
    }
}
