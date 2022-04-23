package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.CompactStringObjectMap;
import com.fasterxml.jackson.databind.util.EnumResolver;
import java.io.IOException;
import java.lang.reflect.Method;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/EnumDeserializer.class */
public class EnumDeserializer extends StdScalarDeserializer<Object> {
    public final CompactStringObjectMap _enumLookup;
    public Object[] _enumsByIndex;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer.class */
    public static class FactoryBasedDeserializer extends StdDeserializer<Object> implements ContextualDeserializer {
        public final JsonDeserializer<?> _deser;
        public final Method _factory;
        public final Class<?> _inputType;

        public FactoryBasedDeserializer(FactoryBasedDeserializer factoryBasedDeserializer, JsonDeserializer<?> jsonDeserializer) {
            super(factoryBasedDeserializer._valueClass);
            this._inputType = factoryBasedDeserializer._inputType;
            this._factory = factoryBasedDeserializer._factory;
            this._deser = jsonDeserializer;
        }

        public FactoryBasedDeserializer(Class<?> cls, AnnotatedMethod annotatedMethod, Class<?> cls2) {
            super(cls);
            this._factory = annotatedMethod.getAnnotated();
            this._inputType = cls2;
            this._deser = null;
        }

        @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            Class<?> cls;
            return (this._deser != null || (cls = this._inputType) == String.class) ? this : new FactoryBasedDeserializer(this, deserializationContext.findContextualValueDeserializer(deserializationContext.constructType(cls), beanProperty));
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Object obj;
            JsonDeserializer<?> jsonDeserializer = this._deser;
            if (jsonDeserializer != null) {
                obj = jsonDeserializer.deserialize(jsonParser, deserializationContext);
            } else {
                JsonToken currentToken = jsonParser.getCurrentToken();
                obj = (currentToken == JsonToken.VALUE_STRING || currentToken == JsonToken.FIELD_NAME) ? jsonParser.getText() : jsonParser.getValueAsString();
            }
            try {
                return this._factory.invoke(this._valueClass, obj);
            } catch (Exception e) {
                Throwable rootCause = ClassUtil.getRootCause(e);
                if (rootCause instanceof IOException) {
                    throw ((IOException) rootCause);
                }
                throw deserializationContext.instantiationException(this._valueClass, rootCause);
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return this._deser == null ? deserialize(jsonParser, deserializationContext) : typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
        }
    }

    public EnumDeserializer(EnumResolver enumResolver) {
        super(enumResolver.getEnumClass());
        this._enumLookup = enumResolver.constructLookup();
        this._enumsByIndex = enumResolver.getRawEnums();
    }

    public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod) {
        Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
        if (deserializationConfig.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(annotatedMethod.getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return new FactoryBasedDeserializer(cls, annotatedMethod, rawParameterType);
    }

    public final Object _deserializeAltString(JsonParser jsonParser, DeserializationContext deserializationContext, String str) throws IOException {
        String trim = str.trim();
        if (trim.length() != 0) {
            char charAt = trim.charAt(0);
            if (charAt >= '0' && charAt <= '9') {
                try {
                    int parseInt = Integer.parseInt(trim);
                    if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                        _failOnNumber(deserializationContext, jsonParser, parseInt);
                        throw null;
                    } else if (parseInt >= 0 && parseInt <= this._enumsByIndex.length) {
                        return this._enumsByIndex[parseInt];
                    }
                } catch (NumberFormatException e) {
                }
            }
        } else if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
            return null;
        }
        if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
            return null;
        }
        Class<?> _enumClass = _enumClass();
        throw deserializationContext.weirdStringException(trim, _enumClass, "value not one of declared Enum instance names: " + this._enumLookup.keys());
    }

    public Object _deserializeOther(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        jsonParser.getCurrentToken();
        if (!deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS) || !jsonParser.isExpectedStartArrayToken()) {
            throw deserializationContext.mappingException(_enumClass());
        }
        jsonParser.nextToken();
        Object deserialize = deserialize(jsonParser, deserializationContext);
        JsonToken nextToken = jsonParser.nextToken();
        JsonToken jsonToken = JsonToken.END_ARRAY;
        if (nextToken == jsonToken) {
            return deserialize;
        }
        throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single '" + _enumClass().getName() + "' value but there was more than a single value in the array");
    }

    public Class<?> _enumClass() {
        return handledType();
    }

    public void _failOnNumber(DeserializationContext deserializationContext, JsonParser jsonParser, int i) throws IOException {
        throw InvalidFormatException.from(jsonParser, String.format("Not allowed to deserialize Enum value out of JSON number (%d): disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow", Integer.valueOf(i)), Integer.valueOf(i), _enumClass());
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING || currentToken == JsonToken.FIELD_NAME) {
            String text = jsonParser.getText();
            Object find = this._enumLookup.find(text);
            return find == null ? _deserializeAltString(jsonParser, deserializationContext, text) : find;
        } else if (currentToken != JsonToken.VALUE_NUMBER_INT) {
            return _deserializeOther(jsonParser, deserializationContext);
        } else {
            int intValue = jsonParser.getIntValue();
            if (!deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                if (intValue >= 0) {
                    Object[] objArr = this._enumsByIndex;
                    if (intValue <= objArr.length) {
                        return objArr[intValue];
                    }
                }
                if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                    return null;
                }
                Class<?> _enumClass = _enumClass();
                throw deserializationContext.weirdNumberException(Integer.valueOf(intValue), _enumClass, "index value outside legal index range [0.." + (this._enumsByIndex.length - 1) + "]");
            }
            _failOnNumber(deserializationContext, jsonParser, intValue);
            throw null;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }
}
