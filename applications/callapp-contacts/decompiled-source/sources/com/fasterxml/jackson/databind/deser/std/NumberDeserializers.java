package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers.class */
public class NumberDeserializers {
    private static final HashSet<String> _classNames = new HashSet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.databind.deser.std.NumberDeserializers$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CoercionAction.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction = iArr;
            try {
                iArr[CoercionAction.Fail.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.AsEmpty.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer.class */
    public static class BigDecimalDeserializer extends StdScalarDeserializer<BigDecimal> {
        public static final BigDecimalDeserializer instance = new BigDecimalDeserializer();

        public BigDecimalDeserializer() {
            super(BigDecimal.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public BigDecimal deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String str;
            int currentTokenId = jsonParser.currentTokenId();
            if (currentTokenId == 1) {
                str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
            } else if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            } else {
                if (currentTokenId != 6) {
                    return (currentTokenId == 7 || currentTokenId == 8) ? jsonParser.getDecimalValue() : (BigDecimal) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                }
                str = jsonParser.getText();
            }
            CoercionAction _checkFromStringCoercion = _checkFromStringCoercion(deserializationContext, str);
            if (_checkFromStringCoercion == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (_checkFromStringCoercion == CoercionAction.AsEmpty) {
                return (BigDecimal) getEmptyValue(deserializationContext);
            }
            String trim = str.trim();
            if (_hasTextualNull(trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                return new BigDecimal(trim);
            } catch (IllegalArgumentException e) {
                return (BigDecimal) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid representation", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return BigDecimal.ZERO;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final LogicalType logicalType() {
            return LogicalType.Float;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer.class */
    public static class BigIntegerDeserializer extends StdScalarDeserializer<BigInteger> {
        public static final BigIntegerDeserializer instance = new BigIntegerDeserializer();

        public BigIntegerDeserializer() {
            super(BigInteger.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public BigInteger deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String str;
            if (jsonParser.isExpectedNumberIntToken()) {
                return jsonParser.getBigIntegerValue();
            }
            int currentTokenId = jsonParser.currentTokenId();
            if (currentTokenId == 1) {
                str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
            } else if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            } else {
                if (currentTokenId == 6) {
                    str = jsonParser.getText();
                } else if (currentTokenId != 8) {
                    return (BigInteger) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                } else {
                    CoercionAction _checkFloatToIntCoercion = _checkFloatToIntCoercion(jsonParser, deserializationContext, this._valueClass);
                    return _checkFloatToIntCoercion == CoercionAction.AsNull ? getNullValue(deserializationContext) : _checkFloatToIntCoercion == CoercionAction.AsEmpty ? (BigInteger) getEmptyValue(deserializationContext) : jsonParser.getDecimalValue().toBigInteger();
                }
            }
            CoercionAction _checkFromStringCoercion = _checkFromStringCoercion(deserializationContext, str);
            if (_checkFromStringCoercion == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (_checkFromStringCoercion == CoercionAction.AsEmpty) {
                return (BigInteger) getEmptyValue(deserializationContext);
            }
            String trim = str.trim();
            if (_hasTextualNull(trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                return new BigInteger(trim);
            } catch (IllegalArgumentException e) {
                return (BigInteger) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid representation", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return BigInteger.ZERO;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final LogicalType logicalType() {
            return LogicalType.Integer;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer.class */
    public static final class BooleanDeserializer extends PrimitiveOrWrapperDeserializer<Boolean> {
        private static final long serialVersionUID = 1;
        static final BooleanDeserializer primitiveInstance = new BooleanDeserializer(Boolean.TYPE, Boolean.FALSE);
        static final BooleanDeserializer wrapperInstance = new BooleanDeserializer(Boolean.class, null);

        public BooleanDeserializer(Class<Boolean> cls, Boolean bool) {
            super(cls, LogicalType.Boolean, bool, Boolean.FALSE);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final Boolean deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonToken currentToken = jsonParser.currentToken();
            return currentToken == JsonToken.VALUE_TRUE ? Boolean.TRUE : currentToken == JsonToken.VALUE_FALSE ? Boolean.FALSE : this._primitive ? Boolean.valueOf(_parseBooleanPrimitive(jsonParser, deserializationContext)) : _parseBoolean(jsonParser, deserializationContext, this._valueClass);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final Boolean deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            JsonToken currentToken = jsonParser.currentToken();
            return currentToken == JsonToken.VALUE_TRUE ? Boolean.TRUE : currentToken == JsonToken.VALUE_FALSE ? Boolean.FALSE : this._primitive ? Boolean.valueOf(_parseBooleanPrimitive(jsonParser, deserializationContext)) : _parseBoolean(jsonParser, deserializationContext, this._valueClass);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer.class */
    public static class ByteDeserializer extends PrimitiveOrWrapperDeserializer<Byte> {
        private static final long serialVersionUID = 1;
        static final ByteDeserializer primitiveInstance = new ByteDeserializer(Byte.TYPE, (byte) 0);
        static final ByteDeserializer wrapperInstance = new ByteDeserializer(Byte.class, null);

        public ByteDeserializer(Class<Byte> cls, Byte b2) {
            super(cls, LogicalType.Integer, b2, (byte) 0);
        }

        protected Byte _parseByte(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String str;
            int currentTokenId = jsonParser.currentTokenId();
            if (currentTokenId == 1) {
                str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
            } else if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            } else {
                if (currentTokenId == 11) {
                    return getNullValue(deserializationContext);
                }
                if (currentTokenId == 6) {
                    str = jsonParser.getText();
                } else if (currentTokenId == 7) {
                    return Byte.valueOf(jsonParser.getByteValue());
                } else {
                    if (currentTokenId != 8) {
                        return (Byte) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    CoercionAction _checkFloatToIntCoercion = _checkFloatToIntCoercion(jsonParser, deserializationContext, this._valueClass);
                    return _checkFloatToIntCoercion == CoercionAction.AsNull ? getNullValue(deserializationContext) : _checkFloatToIntCoercion == CoercionAction.AsEmpty ? (Byte) getEmptyValue(deserializationContext) : Byte.valueOf(jsonParser.getByteValue());
                }
            }
            CoercionAction _checkFromStringCoercion = _checkFromStringCoercion(deserializationContext, str);
            if (_checkFromStringCoercion == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (_checkFromStringCoercion == CoercionAction.AsEmpty) {
                return (Byte) getEmptyValue(deserializationContext);
            }
            String trim = str.trim();
            if (_checkTextualNull(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                int parseInt = NumberInput.parseInt(trim);
                return _byteOverflow(parseInt) ? (Byte) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "overflow, value cannot be represented as 8-bit value", new Object[0]) : Byte.valueOf((byte) parseInt);
            } catch (IllegalArgumentException e) {
                return (Byte) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid Byte value", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Byte deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.isExpectedNumberIntToken() ? Byte.valueOf(jsonParser.getByteValue()) : this._primitive ? Byte.valueOf(_parseBytePrimitive(jsonParser, deserializationContext)) : _parseByte(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer.class */
    public static class CharacterDeserializer extends PrimitiveOrWrapperDeserializer<Character> {
        private static final long serialVersionUID = 1;
        static final CharacterDeserializer primitiveInstance = new CharacterDeserializer(Character.TYPE, 0);
        static final CharacterDeserializer wrapperInstance = new CharacterDeserializer(Character.class, null);

        public CharacterDeserializer(Class<Character> cls, Character ch) {
            super(cls, LogicalType.Integer, ch, (char) 0);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Character deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String str;
            int currentTokenId = jsonParser.currentTokenId();
            if (currentTokenId == 1) {
                str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
            } else if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            } else {
                if (currentTokenId == 11) {
                    if (this._primitive) {
                        _verifyNullForPrimitive(deserializationContext);
                    }
                    return getNullValue(deserializationContext);
                } else if (currentTokenId == 6) {
                    str = jsonParser.getText();
                } else if (currentTokenId != 7) {
                    return (Character) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                } else {
                    CoercionAction findCoercionAction = deserializationContext.findCoercionAction(logicalType(), this._valueClass, CoercionInputShape.Integer);
                    int i = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[findCoercionAction.ordinal()];
                    if (i == 1) {
                        Class<?> cls = this._valueClass;
                        Number numberValue = jsonParser.getNumberValue();
                        _checkCoercionFail(deserializationContext, findCoercionAction, cls, numberValue, "Integer value (" + jsonParser.getText() + ")");
                    } else if (i != 2) {
                        if (i == 3) {
                            return (Character) getEmptyValue(deserializationContext);
                        }
                        int intValue = jsonParser.getIntValue();
                        return (intValue < 0 || intValue > 65535) ? (Character) deserializationContext.handleWeirdNumberValue(handledType(), Integer.valueOf(intValue), "value outside valid Character range (0x0000 - 0xFFFF)", new Object[0]) : Character.valueOf((char) intValue);
                    }
                    return getNullValue(deserializationContext);
                }
            }
            if (str.length() == 1) {
                return Character.valueOf(str.charAt(0));
            }
            CoercionAction _checkFromStringCoercion = _checkFromStringCoercion(deserializationContext, str);
            if (_checkFromStringCoercion == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (_checkFromStringCoercion == CoercionAction.AsEmpty) {
                return (Character) getEmptyValue(deserializationContext);
            }
            String trim = str.trim();
            return _checkTextualNull(deserializationContext, trim) ? getNullValue(deserializationContext) : (Character) deserializationContext.handleWeirdStringValue(handledType(), trim, "Expected either Integer value code or 1-character String", new Object[0]);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer.class */
    public static class DoubleDeserializer extends PrimitiveOrWrapperDeserializer<Double> {
        private static final long serialVersionUID = 1;
        static final DoubleDeserializer primitiveInstance = new DoubleDeserializer(Double.TYPE, Double.valueOf(0.0d));
        static final DoubleDeserializer wrapperInstance = new DoubleDeserializer(Double.class, null);

        public DoubleDeserializer(Class<Double> cls, Double d2) {
            super(cls, LogicalType.Float, d2, Double.valueOf(0.0d));
        }

        protected final Double _parseDouble(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String str;
            int currentTokenId = jsonParser.currentTokenId();
            if (currentTokenId == 1) {
                str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
            } else if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            } else {
                if (currentTokenId == 11) {
                    return getNullValue(deserializationContext);
                }
                if (currentTokenId != 6) {
                    return (currentTokenId == 7 || currentTokenId == 8) ? Double.valueOf(jsonParser.getDoubleValue()) : (Double) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                }
                str = jsonParser.getText();
            }
            Double _checkDoubleSpecialValue = _checkDoubleSpecialValue(str);
            if (_checkDoubleSpecialValue != null) {
                return _checkDoubleSpecialValue;
            }
            CoercionAction _checkFromStringCoercion = _checkFromStringCoercion(deserializationContext, str);
            if (_checkFromStringCoercion == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (_checkFromStringCoercion == CoercionAction.AsEmpty) {
                return (Double) getEmptyValue(deserializationContext);
            }
            String trim = str.trim();
            if (_checkTextualNull(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                return Double.valueOf(_parseDouble(trim));
            } catch (IllegalArgumentException e) {
                return (Double) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid `Double` value", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Double deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_FLOAT) ? Double.valueOf(jsonParser.getDoubleValue()) : this._primitive ? Double.valueOf(_parseDoublePrimitive(jsonParser, deserializationContext)) : _parseDouble(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Double deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_FLOAT) ? Double.valueOf(jsonParser.getDoubleValue()) : this._primitive ? Double.valueOf(_parseDoublePrimitive(jsonParser, deserializationContext)) : _parseDouble(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer.class */
    public static class FloatDeserializer extends PrimitiveOrWrapperDeserializer<Float> {
        private static final long serialVersionUID = 1;
        static final FloatDeserializer primitiveInstance = new FloatDeserializer(Float.TYPE, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
        static final FloatDeserializer wrapperInstance = new FloatDeserializer(Float.class, null);

        public FloatDeserializer(Class<Float> cls, Float f) {
            super(cls, LogicalType.Float, f, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
        }

        protected final Float _parseFloat(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String str;
            int currentTokenId = jsonParser.currentTokenId();
            if (currentTokenId == 1) {
                str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
            } else if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            } else {
                if (currentTokenId == 11) {
                    return getNullValue(deserializationContext);
                }
                if (currentTokenId != 6) {
                    return (currentTokenId == 7 || currentTokenId == 8) ? Float.valueOf(jsonParser.getFloatValue()) : (Float) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                }
                str = jsonParser.getText();
            }
            Float _checkFloatSpecialValue = _checkFloatSpecialValue(str);
            if (_checkFloatSpecialValue != null) {
                return _checkFloatSpecialValue;
            }
            CoercionAction _checkFromStringCoercion = _checkFromStringCoercion(deserializationContext, str);
            if (_checkFromStringCoercion == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (_checkFromStringCoercion == CoercionAction.AsEmpty) {
                return (Float) getEmptyValue(deserializationContext);
            }
            String trim = str.trim();
            if (_checkTextualNull(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                return Float.valueOf(Float.parseFloat(trim));
            } catch (IllegalArgumentException e) {
                return (Float) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid `Float` value", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Float deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_FLOAT) ? Float.valueOf(jsonParser.getFloatValue()) : this._primitive ? Float.valueOf(_parseFloatPrimitive(jsonParser, deserializationContext)) : _parseFloat(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer.class */
    public static final class IntegerDeserializer extends PrimitiveOrWrapperDeserializer<Integer> {
        private static final long serialVersionUID = 1;
        static final IntegerDeserializer primitiveInstance = new IntegerDeserializer(Integer.TYPE, 0);
        static final IntegerDeserializer wrapperInstance = new IntegerDeserializer(Integer.class, null);

        public IntegerDeserializer(Class<Integer> cls, Integer num) {
            super(cls, LogicalType.Integer, num, 0);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final Integer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.isExpectedNumberIntToken() ? Integer.valueOf(jsonParser.getIntValue()) : this._primitive ? Integer.valueOf(_parseIntPrimitive(jsonParser, deserializationContext)) : _parseInteger(jsonParser, deserializationContext, Integer.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final Integer deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return jsonParser.isExpectedNumberIntToken() ? Integer.valueOf(jsonParser.getIntValue()) : this._primitive ? Integer.valueOf(_parseIntPrimitive(jsonParser, deserializationContext)) : _parseInteger(jsonParser, deserializationContext, Integer.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final boolean isCachable() {
            return true;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer.class */
    public static final class LongDeserializer extends PrimitiveOrWrapperDeserializer<Long> {
        private static final long serialVersionUID = 1;
        static final LongDeserializer primitiveInstance = new LongDeserializer(Long.TYPE, 0L);
        static final LongDeserializer wrapperInstance = new LongDeserializer(Long.class, null);

        public LongDeserializer(Class<Long> cls, Long l) {
            super(cls, LogicalType.Integer, l, 0L);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final Long deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.isExpectedNumberIntToken() ? Long.valueOf(jsonParser.getLongValue()) : this._primitive ? Long.valueOf(_parseLongPrimitive(jsonParser, deserializationContext)) : _parseLong(jsonParser, deserializationContext, Long.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final boolean isCachable() {
            return true;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer.class */
    public static class NumberDeserializer extends StdScalarDeserializer<Object> {
        public static final NumberDeserializer instance = new NumberDeserializer();

        public NumberDeserializer() {
            super(Number.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String str;
            int currentTokenId = jsonParser.currentTokenId();
            if (currentTokenId == 1) {
                str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
            } else if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            } else {
                if (currentTokenId != 6) {
                    return currentTokenId != 7 ? currentTokenId != 8 ? deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser) : (!deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) || jsonParser.isNaN()) ? jsonParser.getNumberValue() : jsonParser.getDecimalValue() : deserializationContext.hasSomeOfFeatures(F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
                }
                str = jsonParser.getText();
            }
            CoercionAction _checkFromStringCoercion = _checkFromStringCoercion(deserializationContext, str);
            if (_checkFromStringCoercion == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (_checkFromStringCoercion == CoercionAction.AsEmpty) {
                return getEmptyValue(deserializationContext);
            }
            String trim = str.trim();
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
                    return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? new BigDecimal(trim) : Double.valueOf(trim);
                }
                if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                    return new BigInteger(trim);
                }
                long parseLong = Long.parseLong(trim);
                return (deserializationContext.isEnabled(DeserializationFeature.USE_LONG_FOR_INTS) || parseLong > 2147483647L || parseLong < -2147483648L) ? Long.valueOf(parseLong) : Integer.valueOf((int) parseLong);
            } catch (IllegalArgumentException e) {
                return deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid number", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            int currentTokenId = jsonParser.currentTokenId();
            return (currentTokenId == 6 || currentTokenId == 7 || currentTokenId == 8) ? deserialize(jsonParser, deserializationContext) : typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final LogicalType logicalType() {
            return LogicalType.Integer;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer.class */
    public static abstract class PrimitiveOrWrapperDeserializer<T> extends StdScalarDeserializer<T> {
        private static final long serialVersionUID = 1;
        protected final T _emptyValue;
        protected final LogicalType _logicalType;
        protected final T _nullValue;
        protected final boolean _primitive;

        protected PrimitiveOrWrapperDeserializer(Class<T> cls, LogicalType logicalType, T t, T t2) {
            super((Class<?>) cls);
            this._logicalType = logicalType;
            this._nullValue = t;
            this._emptyValue = t2;
            this._primitive = cls.isPrimitive();
        }

        @Deprecated
        protected PrimitiveOrWrapperDeserializer(Class<T> cls, T t, T t2) {
            this(cls, LogicalType.OtherScalar, t, t2);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return this._emptyValue;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public AccessPattern getNullAccessPattern() {
            return this._primitive ? AccessPattern.DYNAMIC : this._nullValue == null ? AccessPattern.ALWAYS_NULL : AccessPattern.CONSTANT;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer, com.fasterxml.jackson.databind.deser.NullValueProvider
        public final T getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
            if (this._primitive && deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                deserializationContext.reportInputMismatch(this, "Cannot map `null` into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", ClassUtil.classNameOf(handledType()));
            }
            return this._nullValue;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public final LogicalType logicalType() {
            return this._logicalType;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer.class */
    public static class ShortDeserializer extends PrimitiveOrWrapperDeserializer<Short> {
        private static final long serialVersionUID = 1;
        static final ShortDeserializer primitiveInstance = new ShortDeserializer(Short.TYPE, 0);
        static final ShortDeserializer wrapperInstance = new ShortDeserializer(Short.class, null);

        public ShortDeserializer(Class<Short> cls, Short sh) {
            super(cls, LogicalType.Integer, sh, (short) 0);
        }

        protected Short _parseShort(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String str;
            int currentTokenId = jsonParser.currentTokenId();
            if (currentTokenId == 1) {
                str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
            } else if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            } else {
                if (currentTokenId == 11) {
                    return getNullValue(deserializationContext);
                }
                if (currentTokenId == 6) {
                    str = jsonParser.getText();
                } else if (currentTokenId == 7) {
                    return Short.valueOf(jsonParser.getShortValue());
                } else {
                    if (currentTokenId != 8) {
                        return (Short) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    CoercionAction _checkFloatToIntCoercion = _checkFloatToIntCoercion(jsonParser, deserializationContext, this._valueClass);
                    return _checkFloatToIntCoercion == CoercionAction.AsNull ? getNullValue(deserializationContext) : _checkFloatToIntCoercion == CoercionAction.AsEmpty ? (Short) getEmptyValue(deserializationContext) : Short.valueOf(jsonParser.getShortValue());
                }
            }
            CoercionAction _checkFromStringCoercion = _checkFromStringCoercion(deserializationContext, str);
            if (_checkFromStringCoercion == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (_checkFromStringCoercion == CoercionAction.AsEmpty) {
                return (Short) getEmptyValue(deserializationContext);
            }
            String trim = str.trim();
            if (_checkTextualNull(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                int parseInt = NumberInput.parseInt(trim);
                return _shortOverflow(parseInt) ? (Short) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "overflow, value cannot be represented as 16-bit value", new Object[0]) : Short.valueOf((short) parseInt);
            } catch (IllegalArgumentException e) {
                return (Short) deserializationContext.handleWeirdStringValue(this._valueClass, trim, "not a valid Short value", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Short deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.isExpectedNumberIntToken() ? Short.valueOf(jsonParser.getShortValue()) : this._primitive ? Short.valueOf(_parseShortPrimitive(jsonParser, deserializationContext)) : _parseShort(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }
    }

    static {
        for (int i = 0; i < 11; i++) {
            _classNames.add(new Class[]{Boolean.class, Byte.class, Short.class, Character.class, Integer.class, Long.class, Float.class, Double.class, Number.class, BigDecimal.class, BigInteger.class}[i].getName());
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
            if (cls == Void.TYPE) {
                return NullifyingDeserializer.instance;
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
