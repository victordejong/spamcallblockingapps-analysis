package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/EnumSetDeserializer.class */
public class EnumSetDeserializer extends StdDeserializer<EnumSet<?>> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected JsonDeserializer<Enum<?>> _enumDeserializer;
    protected final JavaType _enumType;
    protected final NullValueProvider _nullProvider;
    protected final boolean _skipNullValues;
    protected final Boolean _unwrapSingle;

    /* JADX WARN: Multi-variable type inference failed */
    public EnumSetDeserializer(JavaType javaType, JsonDeserializer<?> jsonDeserializer) {
        super(EnumSet.class);
        this._enumType = javaType;
        if (javaType.isEnumType()) {
            this._enumDeserializer = jsonDeserializer;
            this._unwrapSingle = null;
            this._nullProvider = null;
            this._skipNullValues = false;
            return;
        }
        throw new IllegalArgumentException("Type " + javaType + " not Java Enum type");
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected EnumSetDeserializer(EnumSetDeserializer enumSetDeserializer, JsonDeserializer<?> jsonDeserializer, NullValueProvider nullValueProvider, Boolean bool) {
        super(enumSetDeserializer);
        this._enumType = enumSetDeserializer._enumType;
        this._enumDeserializer = jsonDeserializer;
        this._nullProvider = nullValueProvider;
        this._skipNullValues = NullsConstantProvider.isSkipper(nullValueProvider);
        this._unwrapSingle = bool;
    }

    @Deprecated
    protected EnumSetDeserializer(EnumSetDeserializer enumSetDeserializer, JsonDeserializer<?> jsonDeserializer, Boolean bool) {
        this(enumSetDeserializer, jsonDeserializer, enumSetDeserializer._nullProvider, bool);
    }

    private EnumSet constructSet() {
        return EnumSet.noneOf(this._enumType.getRawClass());
    }

    protected final EnumSet<?> _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, EnumSet enumSet) throws IOException {
        Enum<?> deserialize;
        while (true) {
            try {
                JsonToken nextToken = jsonParser.nextToken();
                if (nextToken == JsonToken.END_ARRAY) {
                    return enumSet;
                }
                if (nextToken != JsonToken.VALUE_NULL) {
                    deserialize = this._enumDeserializer.deserialize(jsonParser, deserializationContext);
                } else if (!this._skipNullValues) {
                    deserialize = (Enum) this._nullProvider.getNullValue(deserializationContext);
                }
                if (deserialize != null) {
                    enumSet.add(deserialize);
                }
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, enumSet, enumSet.size());
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, EnumSet.class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        JsonDeserializer<Enum<?>> jsonDeserializer = this._enumDeserializer;
        JsonDeserializer<?> findContextualValueDeserializer = jsonDeserializer == null ? deserializationContext.findContextualValueDeserializer(this._enumType, beanProperty) : deserializationContext.handleSecondaryContextualization(jsonDeserializer, beanProperty, this._enumType);
        return withResolved(findContextualValueDeserializer, findContentNullProvider(deserializationContext, beanProperty, findContextualValueDeserializer), findFormatFeature);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public EnumSet<?> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        EnumSet constructSet = constructSet();
        return !jsonParser.isExpectedStartArrayToken() ? handleNonArray(jsonParser, deserializationContext, constructSet) : _deserialize(jsonParser, deserializationContext, constructSet);
    }

    public EnumSet<?> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, EnumSet<?> enumSet) throws IOException {
        return !jsonParser.isExpectedStartArrayToken() ? handleNonArray(jsonParser, deserializationContext, enumSet) : _deserialize(jsonParser, deserializationContext, enumSet);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return constructSet();
    }

    protected EnumSet<?> handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext, EnumSet enumSet) throws IOException {
        if (!(this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            return (EnumSet) deserializationContext.handleUnexpectedToken(EnumSet.class, jsonParser);
        }
        if (jsonParser.hasToken(JsonToken.VALUE_NULL)) {
            return (EnumSet) deserializationContext.handleUnexpectedToken(this._enumType, jsonParser);
        }
        try {
            Enum<?> deserialize = this._enumDeserializer.deserialize(jsonParser, deserializationContext);
            if (deserialize != null) {
                enumSet.add(deserialize);
            }
            return enumSet;
        } catch (Exception e) {
            throw JsonMappingException.wrapWithPath(e, enumSet, enumSet.size());
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._enumType.getValueHandler() == null;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.Collection;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }

    public EnumSetDeserializer withDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return this._enumDeserializer == jsonDeserializer ? this : new EnumSetDeserializer(this, jsonDeserializer, this._nullProvider, this._unwrapSingle);
    }

    public EnumSetDeserializer withResolved(JsonDeserializer<?> jsonDeserializer, NullValueProvider nullValueProvider, Boolean bool) {
        return (Objects.equals(this._unwrapSingle, bool) && this._enumDeserializer == jsonDeserializer && this._nullProvider == jsonDeserializer) ? this : new EnumSetDeserializer(this, jsonDeserializer, nullValueProvider, bool);
    }

    @Deprecated
    public EnumSetDeserializer withResolved(JsonDeserializer<?> jsonDeserializer, Boolean bool) {
        return withResolved(jsonDeserializer, this._nullProvider, bool);
    }
}
