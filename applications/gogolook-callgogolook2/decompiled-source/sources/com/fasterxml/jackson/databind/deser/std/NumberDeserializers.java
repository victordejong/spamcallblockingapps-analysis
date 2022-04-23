package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers.class */
public class NumberDeserializers {
    public static final HashSet<String> _classNames = new HashSet<>();

    /* renamed from: com.fasterxml.jackson.databind.deser.std.NumberDeserializers$1 */
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$1.class */
    public static /* synthetic */ class C27281 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = new int[JsonParser.NumberType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.BIG_INTEGER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer.class */
    public static class BigDecimalDeserializer extends StdScalarDeserializer<BigDecimal> {
        public static final BigDecimalDeserializer instance = new BigDecimalDeserializer();

        public BigDecimalDeserializer() {
            super(BigDecimal.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public BigDecimal deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int currentTokenId = jsonParser.getCurrentTokenId();
            if (currentTokenId != 3) {
                if (currentTokenId == 6) {
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return null;
                    }
                    try {
                        return new BigDecimal(trim);
                    } catch (IllegalArgumentException e) {
                        throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid representation");
                    }
                } else if (currentTokenId == 7 || currentTokenId == 8) {
                    return jsonParser.getDecimalValue();
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                BigDecimal deserialize = deserialize(jsonParser, deserializationContext);
                JsonToken nextToken = jsonParser.nextToken();
                JsonToken jsonToken = JsonToken.END_ARRAY;
                if (nextToken == jsonToken) {
                    return deserialize;
                }
                throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'BigDecimal' value but there was more than a single value in the array");
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer.class */
    public static class BigIntegerDeserializer extends StdScalarDeserializer<BigInteger> {
        public static final BigIntegerDeserializer instance = new BigIntegerDeserializer();

        public BigIntegerDeserializer() {
            super(BigInteger.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public BigInteger deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int currentTokenId = jsonParser.getCurrentTokenId();
            if (currentTokenId != 3) {
                if (currentTokenId == 6) {
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return null;
                    }
                    try {
                        return new BigInteger(trim);
                    } catch (IllegalArgumentException e) {
                        throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid representation");
                    }
                } else if (currentTokenId == 7) {
                    int i = C27281.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[jsonParser.getNumberType().ordinal()];
                    if (i == 1 || i == 2 || i == 3) {
                        return jsonParser.getBigIntegerValue();
                    }
                } else if (currentTokenId == 8) {
                    if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                        return jsonParser.getDecimalValue().toBigInteger();
                    }
                    _failDoubleToIntCoercion(jsonParser, deserializationContext, "java.math.BigInteger");
                    throw null;
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                BigInteger deserialize = deserialize(jsonParser, deserializationContext);
                JsonToken nextToken = jsonParser.nextToken();
                JsonToken jsonToken = JsonToken.END_ARRAY;
                if (nextToken == jsonToken) {
                    return deserialize;
                }
                throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'BigInteger' value but there was more than a single value in the array");
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer.class */
    public static final class BooleanDeserializer extends PrimitiveOrWrapperDeserializer<Boolean> {
        public static final BooleanDeserializer primitiveInstance = new BooleanDeserializer(Boolean.TYPE, Boolean.FALSE);
        public static final BooleanDeserializer wrapperInstance = new BooleanDeserializer(Boolean.class, null);

        public BooleanDeserializer(Class<Boolean> cls, Boolean bool) {
            super(cls, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Boolean deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseBoolean(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Boolean deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseBoolean(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer.class */
    public static class ByteDeserializer extends PrimitiveOrWrapperDeserializer<Byte> {
        public static final ByteDeserializer primitiveInstance = new ByteDeserializer(Byte.TYPE, (byte) 0);
        public static final ByteDeserializer wrapperInstance = new ByteDeserializer(Byte.class, null);

        public ByteDeserializer(Class<Byte> cls, Byte b) {
            super(cls, b);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Byte deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseByte(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer.class */
    public static class CharacterDeserializer extends PrimitiveOrWrapperDeserializer<Character> {
        public static final CharacterDeserializer primitiveInstance = new CharacterDeserializer(Character.TYPE, 0);
        public static final CharacterDeserializer wrapperInstance = new CharacterDeserializer(Character.class, null);

        public CharacterDeserializer(Class<Character> cls, Character ch) {
            super(cls, ch);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Character deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int intValue;
            int currentTokenId = jsonParser.getCurrentTokenId();
            if (currentTokenId != 3) {
                if (currentTokenId == 6) {
                    String text = jsonParser.getText();
                    if (text.length() == 1) {
                        return Character.valueOf(text.charAt(0));
                    }
                    if (text.length() == 0) {
                        return getEmptyValue(deserializationContext);
                    }
                } else if (currentTokenId == 7 && (intValue = jsonParser.getIntValue()) >= 0 && intValue <= 65535) {
                    return Character.valueOf((char) intValue);
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                Character deserialize = deserialize(jsonParser, deserializationContext);
                JsonToken nextToken = jsonParser.nextToken();
                JsonToken jsonToken = JsonToken.END_ARRAY;
                if (nextToken == jsonToken) {
                    return deserialize;
                }
                throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single '" + this._valueClass.getName() + "' value but there was more than a single value in the array");
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer.class */
    public static class DoubleDeserializer extends PrimitiveOrWrapperDeserializer<Double> {
        public static final DoubleDeserializer primitiveInstance = new DoubleDeserializer(Double.TYPE, Double.valueOf(0.0d));
        public static final DoubleDeserializer wrapperInstance = new DoubleDeserializer(Double.class, null);

        public DoubleDeserializer(Class<Double> cls, Double d) {
            super(cls, d);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Double deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseDouble(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Double deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseDouble(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer.class */
    public static class FloatDeserializer extends PrimitiveOrWrapperDeserializer<Float> {
        public static final FloatDeserializer primitiveInstance = new FloatDeserializer(Float.TYPE, Float.valueOf(0.0f));
        public static final FloatDeserializer wrapperInstance = new FloatDeserializer(Float.class, null);

        public FloatDeserializer(Class<Float> cls, Float f) {
            super(cls, f);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Float deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseFloat(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer.class */
    public static final class IntegerDeserializer extends PrimitiveOrWrapperDeserializer<Integer> {
        public static final IntegerDeserializer primitiveInstance = new IntegerDeserializer(Integer.TYPE, 0);
        public static final IntegerDeserializer wrapperInstance = new IntegerDeserializer(Integer.class, null);

        public IntegerDeserializer(Class<Integer> cls, Integer num) {
            super(cls, num);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Integer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Integer.valueOf(jsonParser.getIntValue()) : _parseInteger(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Integer deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Integer.valueOf(jsonParser.getIntValue()) : _parseInteger(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public boolean isCachable() {
            return true;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer.class */
    public static final class LongDeserializer extends PrimitiveOrWrapperDeserializer<Long> {
        public static final LongDeserializer primitiveInstance = new LongDeserializer(Long.TYPE, 0L);
        public static final LongDeserializer wrapperInstance = new LongDeserializer(Long.class, null);

        public LongDeserializer(Class<Long> cls, Long l) {
            super(cls, l);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Long deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Long.valueOf(jsonParser.getLongValue()) : _parseLong(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public boolean isCachable() {
            return true;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer.class */
    public static class NumberDeserializer extends StdScalarDeserializer<Object> {
        public static final NumberDeserializer instance = new NumberDeserializer();

        public NumberDeserializer() {
            super(Number.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int currentTokenId = jsonParser.getCurrentTokenId();
            if (currentTokenId != 3) {
                if (currentTokenId == 6) {
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return getEmptyValue(deserializationContext);
                    }
                    if (_hasTextualNull(trim)) {
                        return getNullValue(deserializationContext);
                    }
                    if (_isPosInf(trim)) {
                        return Double.valueOf(Double.POSITIVE_INFINITY);
                    }
                    if (_isNegInf(trim)) {
                        return Double.valueOf(Double.NEGATIVE_INFINITY);
                    }
                    if (_isNaN(trim)) {
                        return Double.valueOf(Double.NaN);
                    }
                    try {
                        if (!_isIntNumber(trim)) {
                            return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? new BigDecimal(trim) : new Double(trim);
                        }
                        if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                            return new BigInteger(trim);
                        }
                        long parseLong = Long.parseLong(trim);
                        return (deserializationContext.isEnabled(DeserializationFeature.USE_LONG_FOR_INTS) || parseLong > 2147483647L || parseLong < -2147483648L) ? Long.valueOf(parseLong) : Integer.valueOf((int) parseLong);
                    } catch (IllegalArgumentException e) {
                        throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid number");
                    }
                } else if (currentTokenId == 7) {
                    return deserializationContext.hasSomeOfFeatures(StdDeserializer.F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
                } else {
                    if (currentTokenId == 8) {
                        return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
                    }
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.nextToken();
                Object deserialize = deserialize(jsonParser, deserializationContext);
                JsonToken nextToken = jsonParser.nextToken();
                JsonToken jsonToken = JsonToken.END_ARRAY;
                if (nextToken == jsonToken) {
                    return deserialize;
                }
                throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single '" + this._valueClass.getName() + "' value but there was more than a single value in the array");
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            int currentTokenId = jsonParser.getCurrentTokenId();
            return (currentTokenId == 6 || currentTokenId == 7 || currentTokenId == 8) ? deserialize(jsonParser, deserializationContext) : typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer.class */
    public static abstract class PrimitiveOrWrapperDeserializer<T> extends StdScalarDeserializer<T> {
        public final T _nullValue;
        public final boolean _primitive;

        public PrimitiveOrWrapperDeserializer(Class<T> cls, T t) {
            super(cls);
            this._nullValue = t;
            this._primitive = cls.isPrimitive();
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public T getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            if (!this._primitive || !deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                return this._nullValue;
            }
            throw deserializationContext.mappingException("Can not map Empty String as null into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", handledType().toString());
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        @Deprecated
        public final T getNullValue() {
            return this._nullValue;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final T getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
            if (!this._primitive || !deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                return this._nullValue;
            }
            throw deserializationContext.mappingException("Can not map JSON null into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", handledType().toString());
        }
    }

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer.class */
    public static class ShortDeserializer extends PrimitiveOrWrapperDeserializer<Short> {
        public static final ShortDeserializer primitiveInstance = new ShortDeserializer(Short.TYPE, 0);
        public static final ShortDeserializer wrapperInstance = new ShortDeserializer(Short.class, null);

        public ShortDeserializer(Class<Short> cls, Short sh) {
            super(cls, sh);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Short deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseShort(jsonParser, deserializationContext);
        }
    }

    static {
        for (Class cls : new Class[]{Boolean.class, Byte.class, Short.class, Character.class, Integer.class, Long.class, Float.class, Double.class, Number.class, BigDecimal.class, BigInteger.class}) {
            _classNames.add(cls.getName());
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return IntegerDeserializer.primitiveInstance;
            }
            if (cls == Boolean.TYPE) {
                return BooleanDeserializer.primitiveInstance;
            }
            if (cls == Long.TYPE) {
                return LongDeserializer.primitiveInstance;
            }
            if (cls == Double.TYPE) {
                return DoubleDeserializer.primitiveInstance;
            }
            if (cls == Character.TYPE) {
                return CharacterDeserializer.primitiveInstance;
            }
            if (cls == Byte.TYPE) {
                return ByteDeserializer.primitiveInstance;
            }
            if (cls == Short.TYPE) {
                return ShortDeserializer.primitiveInstance;
            }
            if (cls == Float.TYPE) {
                return FloatDeserializer.primitiveInstance;
            }
        } else if (!_classNames.contains(str)) {
            return null;
        } else {
            if (cls == Integer.class) {
                return IntegerDeserializer.wrapperInstance;
            }
            if (cls == Boolean.class) {
                return BooleanDeserializer.wrapperInstance;
            }
            if (cls == Long.class) {
                return LongDeserializer.wrapperInstance;
            }
            if (cls == Double.class) {
                return DoubleDeserializer.wrapperInstance;
            }
            if (cls == Character.class) {
                return CharacterDeserializer.wrapperInstance;
            }
            if (cls == Byte.class) {
                return ByteDeserializer.wrapperInstance;
            }
            if (cls == Short.class) {
                return ShortDeserializer.wrapperInstance;
            }
            if (cls == Float.class) {
                return FloatDeserializer.wrapperInstance;
            }
            if (cls == Number.class) {
                return NumberDeserializer.instance;
            }
            if (cls == BigDecimal.class) {
                return BigDecimalDeserializer.instance;
            }
            if (cls == BigInteger.class) {
                return BigIntegerDeserializer.instance;
            }
        }
        throw new IllegalArgumentException("Internal error: can't find deserializer for " + cls.getName());
    }
}
