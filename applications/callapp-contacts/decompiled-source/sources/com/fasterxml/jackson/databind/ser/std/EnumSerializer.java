package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.EnumValues;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.Objects;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/EnumSerializer.class */
public class EnumSerializer extends StdScalarSerializer<Enum<?>> implements ContextualSerializer {
    private static final long serialVersionUID = 1;
    protected final Boolean _serializeAsIndex;
    protected final EnumValues _values;

    public EnumSerializer(EnumValues enumValues, Boolean bool) {
        super(enumValues.getEnumClass(), false);
        this._values = enumValues;
        this._serializeAsIndex = bool;
    }

    protected static Boolean _isShapeWrittenUsingIndex(Class<?> cls, JsonFormat.Value value, boolean z, Boolean bool) {
        JsonFormat.Shape shape = value == null ? null : value.getShape();
        if (shape == null) {
            return bool;
        }
        if (shape == JsonFormat.Shape.ANY || shape == JsonFormat.Shape.SCALAR) {
            return bool;
        }
        if (shape == JsonFormat.Shape.STRING || shape == JsonFormat.Shape.NATURAL) {
            return Boolean.FALSE;
        }
        if (shape.isNumeric() || shape == JsonFormat.Shape.ARRAY) {
            return Boolean.TRUE;
        }
        throw new IllegalArgumentException(String.format("Unsupported serialization shape (%s) for Enum %s, not supported as %s annotation", shape, cls.getName(), z ? "class" : "property"));
    }

    public static EnumSerializer construct(Class<?> cls, SerializationConfig serializationConfig, BeanDescription beanDescription, JsonFormat.Value value) {
        return new EnumSerializer(EnumValues.constructFromName(serializationConfig, cls), _isShapeWrittenUsingIndex(cls, value, true, null));
    }

    protected final boolean _serializeAsIndex(SerializerProvider serializerProvider) {
        Boolean bool = this._serializeAsIndex;
        return bool != null ? bool.booleanValue() : serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_INDEX);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        SerializerProvider provider = jsonFormatVisitorWrapper.getProvider();
        if (_serializeAsIndex(provider)) {
            visitIntFormat(jsonFormatVisitorWrapper, javaType, JsonParser.NumberType.INT);
            return;
        }
        JsonStringFormatVisitor expectStringFormat = jsonFormatVisitorWrapper.expectStringFormat(javaType);
        if (expectStringFormat != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (provider == null || !provider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
                for (SerializableString serializableString : this._values.values()) {
                    linkedHashSet.add(serializableString.getValue());
                }
            } else {
                for (Enum<?> r1 : this._values.enums()) {
                    linkedHashSet.add(r1.toString());
                }
            }
            expectStringFormat.enumTypes(linkedHashSet);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Value findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, handledType());
        if (findFormatOverrides != null) {
            Boolean _isShapeWrittenUsingIndex = _isShapeWrittenUsingIndex(handledType(), findFormatOverrides, false, this._serializeAsIndex);
            if (!Objects.equals(_isShapeWrittenUsingIndex, this._serializeAsIndex)) {
                return new EnumSerializer(this._values, _isShapeWrittenUsingIndex);
            }
        }
        return this;
    }

    public EnumValues getEnumValues() {
        return this._values;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        if (_serializeAsIndex(serializerProvider)) {
            return createSchemaNode("integer", true);
        }
        ObjectNode createSchemaNode = createSchemaNode("string", true);
        if (type != null && serializerProvider.constructType(type).isEnumType()) {
            ArrayNode putArray = createSchemaNode.putArray("enum");
            for (SerializableString serializableString : this._values.values()) {
                putArray.add(serializableString.getValue());
            }
        }
        return createSchemaNode;
    }

    public final void serialize(Enum<?> r5, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (_serializeAsIndex(serializerProvider)) {
            jsonGenerator.writeNumber(r5.ordinal());
        } else if (serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
            jsonGenerator.writeString(r5.toString());
        } else {
            jsonGenerator.writeString(this._values.serializedValueFor(r5));
        }
    }
}
