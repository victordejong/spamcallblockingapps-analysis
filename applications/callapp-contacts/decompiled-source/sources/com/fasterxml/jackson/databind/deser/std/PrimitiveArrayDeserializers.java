package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsFailProvider;
import com.fasterxml.jackson.databind.exc.InvalidNullException;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers.class */
public abstract class PrimitiveArrayDeserializers<T> extends StdDeserializer<T> implements ContextualDeserializer {
    private transient Object _emptyValue;
    protected final NullValueProvider _nuller;
    protected final Boolean _unwrapSingle;

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser.class */
    static final class BooleanDeser extends PrimitiveArrayDeserializers<boolean[]> {
        private static final long serialVersionUID = 1;

        public BooleanDeser() {
            super(boolean[].class);
        }

        protected BooleanDeser(BooleanDeser booleanDeser, NullValueProvider nullValueProvider, Boolean bool) {
            super(booleanDeser, nullValueProvider, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final boolean[] _concat(boolean[] zArr, boolean[] zArr2) {
            int length = zArr.length;
            int length2 = zArr2.length;
            boolean[] copyOf = Arrays.copyOf(zArr, length + length2);
            System.arraycopy(zArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final boolean[] _constructEmpty() {
            return new boolean[0];
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final boolean[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            boolean z;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.BooleanBuilder booleanBuilder = deserializationContext.getArrayBuilders().getBooleanBuilder();
            boolean[] resetAndStart = booleanBuilder.resetAndStart();
            int i = 0;
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return booleanBuilder.completeAndClearBuffer(resetAndStart, i);
                    }
                    if (nextToken == JsonToken.VALUE_TRUE) {
                        z = true;
                    } else {
                        if (nextToken != JsonToken.VALUE_FALSE) {
                            if (nextToken != JsonToken.VALUE_NULL) {
                                z = _parseBooleanPrimitive(jsonParser, deserializationContext);
                            } else if (this._nuller != null) {
                                this._nuller.getNullValue(deserializationContext);
                            } else {
                                _verifyNullForPrimitive(deserializationContext);
                            }
                        }
                        z = false;
                    }
                    boolean[] zArr = resetAndStart;
                    int i2 = i;
                    if (i >= resetAndStart.length) {
                        zArr = booleanBuilder.appendCompletedChunk(resetAndStart, i);
                        i2 = 0;
                    }
                    zArr[i2] = z;
                    i = i2 + 1;
                    resetAndStart = zArr;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, booleanBuilder.bufferedSize() + i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final boolean[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new boolean[]{_parseBooleanPrimitive(jsonParser, deserializationContext)};
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected final PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool) {
            return new BooleanDeser(this, nullValueProvider, bool);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser.class */
    static final class ByteDeser extends PrimitiveArrayDeserializers<byte[]> {
        private static final long serialVersionUID = 1;

        public ByteDeser() {
            super(byte[].class);
        }

        protected ByteDeser(ByteDeser byteDeser, NullValueProvider nullValueProvider, Boolean bool) {
            super(byteDeser, nullValueProvider, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final byte[] _concat(byte[] bArr, byte[] bArr2) {
            int length = bArr.length;
            int length2 = bArr2.length;
            byte[] copyOf = Arrays.copyOf(bArr, length + length2);
            System.arraycopy(bArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final byte[] _constructEmpty() {
            return new byte[0];
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final byte[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            byte byteValue;
            JsonToken currentToken = jsonParser.currentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                try {
                    return jsonParser.getBinaryValue(deserializationContext.getBase64Variant());
                } catch (JsonParseException e) {
                    String originalMessage = e.getOriginalMessage();
                    if (originalMessage.contains("base64")) {
                        return (byte[]) deserializationContext.handleWeirdStringValue(byte[].class, jsonParser.getText(), originalMessage, new Object[0]);
                    }
                }
            }
            if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                Object embeddedObject = jsonParser.getEmbeddedObject();
                if (embeddedObject == null) {
                    return null;
                }
                if (embeddedObject instanceof byte[]) {
                    return (byte[]) embeddedObject;
                }
            }
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.ByteBuilder byteBuilder = deserializationContext.getArrayBuilders().getByteBuilder();
            byte[] resetAndStart = byteBuilder.resetAndStart();
            int i = 0;
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return byteBuilder.completeAndClearBuffer(resetAndStart, i);
                    }
                    if (nextToken == JsonToken.VALUE_NUMBER_INT) {
                        byteValue = jsonParser.getByteValue();
                    } else if (nextToken != JsonToken.VALUE_NULL) {
                        byteValue = _parseBytePrimitive(jsonParser, deserializationContext);
                    } else if (this._nuller != null) {
                        this._nuller.getNullValue(deserializationContext);
                    } else {
                        _verifyNullForPrimitive(deserializationContext);
                        byteValue = 0;
                    }
                    byte[] bArr = resetAndStart;
                    int i2 = i;
                    if (i >= resetAndStart.length) {
                        bArr = byteBuilder.appendCompletedChunk(resetAndStart, i);
                        i2 = 0;
                    }
                    bArr[i2] = byteValue;
                    i = i2 + 1;
                    resetAndStart = bArr;
                } catch (Exception e2) {
                    throw JsonMappingException.wrapWithPath(e2, resetAndStart, byteBuilder.bufferedSize() + i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final byte[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            byte b2;
            JsonToken currentToken = jsonParser.currentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT) {
                b2 = jsonParser.getByteValue();
            } else if (currentToken != JsonToken.VALUE_NULL) {
                b2 = ((Number) deserializationContext.handleUnexpectedToken(this._valueClass.getComponentType(), jsonParser)).byteValue();
            } else if (this._nuller != null) {
                this._nuller.getNullValue(deserializationContext);
                return (byte[]) getEmptyValue(deserializationContext);
            } else {
                _verifyNullForPrimitive(deserializationContext);
                return null;
            }
            return new byte[]{b2};
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers, com.fasterxml.jackson.databind.JsonDeserializer
        public final LogicalType logicalType() {
            return LogicalType.Binary;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected final PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool) {
            return new ByteDeser(this, nullValueProvider, bool);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser.class */
    static final class CharDeser extends PrimitiveArrayDeserializers<char[]> {
        private static final long serialVersionUID = 1;

        public CharDeser() {
            super(char[].class);
        }

        protected CharDeser(CharDeser charDeser, NullValueProvider nullValueProvider, Boolean bool) {
            super(charDeser, nullValueProvider, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final char[] _concat(char[] cArr, char[] cArr2) {
            int length = cArr.length;
            int length2 = cArr2.length;
            char[] copyOf = Arrays.copyOf(cArr, length + length2);
            System.arraycopy(cArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final char[] _constructEmpty() {
            return new char[0];
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final char[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String text;
            if (jsonParser.hasToken(JsonToken.VALUE_STRING)) {
                char[] textCharacters = jsonParser.getTextCharacters();
                int textOffset = jsonParser.getTextOffset();
                int textLength = jsonParser.getTextLength();
                char[] cArr = new char[textLength];
                System.arraycopy(textCharacters, textOffset, cArr, 0, textLength);
                return cArr;
            } else if (jsonParser.isExpectedStartArrayToken()) {
                StringBuilder sb = new StringBuilder(64);
                while (true) {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return sb.toString().toCharArray();
                    }
                    if (nextToken == JsonToken.VALUE_STRING) {
                        text = jsonParser.getText();
                    } else if (nextToken != JsonToken.VALUE_NULL) {
                        text = ((CharSequence) deserializationContext.handleUnexpectedToken(Character.TYPE, jsonParser)).toString();
                    } else if (this._nuller != null) {
                        this._nuller.getNullValue(deserializationContext);
                    } else {
                        _verifyNullForPrimitive(deserializationContext);
                        text = "��";
                    }
                    if (text.length() != 1) {
                        deserializationContext.reportInputMismatch(this, "Cannot convert a JSON String of length %d into a char element of char array", Integer.valueOf(text.length()));
                    }
                    sb.append(text.charAt(0));
                }
            } else {
                if (jsonParser.hasToken(JsonToken.VALUE_EMBEDDED_OBJECT)) {
                    Object embeddedObject = jsonParser.getEmbeddedObject();
                    if (embeddedObject == null) {
                        return null;
                    }
                    if (embeddedObject instanceof char[]) {
                        return (char[]) embeddedObject;
                    }
                    if (embeddedObject instanceof String) {
                        return ((String) embeddedObject).toCharArray();
                    }
                    if (embeddedObject instanceof byte[]) {
                        return Base64Variants.getDefaultVariant().encode((byte[]) embeddedObject, false).toCharArray();
                    }
                }
                return (char[]) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final char[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return (char[]) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected final PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool) {
            return this;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser.class */
    static final class DoubleDeser extends PrimitiveArrayDeserializers<double[]> {
        private static final long serialVersionUID = 1;

        public DoubleDeser() {
            super(double[].class);
        }

        protected DoubleDeser(DoubleDeser doubleDeser, NullValueProvider nullValueProvider, Boolean bool) {
            super(doubleDeser, nullValueProvider, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final double[] _concat(double[] dArr, double[] dArr2) {
            int length = dArr.length;
            int length2 = dArr2.length;
            double[] copyOf = Arrays.copyOf(dArr, length + length2);
            System.arraycopy(dArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final double[] _constructEmpty() {
            return new double[0];
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final double[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.DoubleBuilder doubleBuilder = deserializationContext.getArrayBuilders().getDoubleBuilder();
            double[] resetAndStart = doubleBuilder.resetAndStart();
            int i = 0;
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return doubleBuilder.completeAndClearBuffer(resetAndStart, i);
                    }
                    if (nextToken != JsonToken.VALUE_NULL || this._nuller == null) {
                        double _parseDoublePrimitive = _parseDoublePrimitive(jsonParser, deserializationContext);
                        double[] dArr = resetAndStart;
                        int i2 = i;
                        if (i >= resetAndStart.length) {
                            dArr = doubleBuilder.appendCompletedChunk(resetAndStart, i);
                            i2 = 0;
                        }
                        dArr[i2] = _parseDoublePrimitive;
                        i = i2 + 1;
                        resetAndStart = dArr;
                    } else {
                        this._nuller.getNullValue(deserializationContext);
                    }
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, doubleBuilder.bufferedSize() + i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final double[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new double[]{_parseDoublePrimitive(jsonParser, deserializationContext)};
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected final PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool) {
            return new DoubleDeser(this, nullValueProvider, bool);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser.class */
    static final class FloatDeser extends PrimitiveArrayDeserializers<float[]> {
        private static final long serialVersionUID = 1;

        public FloatDeser() {
            super(float[].class);
        }

        protected FloatDeser(FloatDeser floatDeser, NullValueProvider nullValueProvider, Boolean bool) {
            super(floatDeser, nullValueProvider, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final float[] _concat(float[] fArr, float[] fArr2) {
            int length = fArr.length;
            int length2 = fArr2.length;
            float[] copyOf = Arrays.copyOf(fArr, length + length2);
            System.arraycopy(fArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final float[] _constructEmpty() {
            return new float[0];
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final float[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.FloatBuilder floatBuilder = deserializationContext.getArrayBuilders().getFloatBuilder();
            float[] resetAndStart = floatBuilder.resetAndStart();
            int i = 0;
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return floatBuilder.completeAndClearBuffer(resetAndStart, i);
                    }
                    if (nextToken != JsonToken.VALUE_NULL || this._nuller == null) {
                        float _parseFloatPrimitive = _parseFloatPrimitive(jsonParser, deserializationContext);
                        float[] fArr = resetAndStart;
                        int i2 = i;
                        if (i >= resetAndStart.length) {
                            fArr = floatBuilder.appendCompletedChunk(resetAndStart, i);
                            i2 = 0;
                        }
                        fArr[i2] = _parseFloatPrimitive;
                        i = i2 + 1;
                        resetAndStart = fArr;
                    } else {
                        this._nuller.getNullValue(deserializationContext);
                    }
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, floatBuilder.bufferedSize() + i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final float[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new float[]{_parseFloatPrimitive(jsonParser, deserializationContext)};
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected final PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool) {
            return new FloatDeser(this, nullValueProvider, bool);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser.class */
    static final class IntDeser extends PrimitiveArrayDeserializers<int[]> {
        public static final IntDeser instance = new IntDeser();
        private static final long serialVersionUID = 1;

        public IntDeser() {
            super(int[].class);
        }

        protected IntDeser(IntDeser intDeser, NullValueProvider nullValueProvider, Boolean bool) {
            super(intDeser, nullValueProvider, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final int[] _concat(int[] iArr, int[] iArr2) {
            int length = iArr.length;
            int length2 = iArr2.length;
            int[] copyOf = Arrays.copyOf(iArr, length + length2);
            System.arraycopy(iArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final int[] _constructEmpty() {
            return new int[0];
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final int[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int intValue;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.IntBuilder intBuilder = deserializationContext.getArrayBuilders().getIntBuilder();
            int[] resetAndStart = intBuilder.resetAndStart();
            int i = 0;
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return intBuilder.completeAndClearBuffer(resetAndStart, i);
                    }
                    if (nextToken == JsonToken.VALUE_NUMBER_INT) {
                        intValue = jsonParser.getIntValue();
                    } else if (nextToken != JsonToken.VALUE_NULL) {
                        intValue = _parseIntPrimitive(jsonParser, deserializationContext);
                    } else if (this._nuller != null) {
                        this._nuller.getNullValue(deserializationContext);
                    } else {
                        _verifyNullForPrimitive(deserializationContext);
                        intValue = 0;
                    }
                    int[] iArr = resetAndStart;
                    int i2 = i;
                    if (i >= resetAndStart.length) {
                        iArr = intBuilder.appendCompletedChunk(resetAndStart, i);
                        i2 = 0;
                    }
                    iArr[i2] = intValue;
                    i = i2 + 1;
                    resetAndStart = iArr;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, intBuilder.bufferedSize() + i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final int[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new int[]{_parseIntPrimitive(jsonParser, deserializationContext)};
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected final PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool) {
            return new IntDeser(this, nullValueProvider, bool);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser.class */
    static final class LongDeser extends PrimitiveArrayDeserializers<long[]> {
        public static final LongDeser instance = new LongDeser();
        private static final long serialVersionUID = 1;

        public LongDeser() {
            super(long[].class);
        }

        protected LongDeser(LongDeser longDeser, NullValueProvider nullValueProvider, Boolean bool) {
            super(longDeser, nullValueProvider, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final long[] _concat(long[] jArr, long[] jArr2) {
            int length = jArr.length;
            int length2 = jArr2.length;
            long[] copyOf = Arrays.copyOf(jArr, length + length2);
            System.arraycopy(jArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final long[] _constructEmpty() {
            return new long[0];
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final long[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            long longValue;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.LongBuilder longBuilder = deserializationContext.getArrayBuilders().getLongBuilder();
            long[] resetAndStart = longBuilder.resetAndStart();
            int i = 0;
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return longBuilder.completeAndClearBuffer(resetAndStart, i);
                    }
                    if (nextToken == JsonToken.VALUE_NUMBER_INT) {
                        longValue = jsonParser.getLongValue();
                    } else if (nextToken != JsonToken.VALUE_NULL) {
                        longValue = _parseLongPrimitive(jsonParser, deserializationContext);
                    } else if (this._nuller != null) {
                        this._nuller.getNullValue(deserializationContext);
                    } else {
                        _verifyNullForPrimitive(deserializationContext);
                        longValue = 0;
                    }
                    long[] jArr = resetAndStart;
                    int i2 = i;
                    if (i >= resetAndStart.length) {
                        jArr = longBuilder.appendCompletedChunk(resetAndStart, i);
                        i2 = 0;
                    }
                    jArr[i2] = longValue;
                    i = i2 + 1;
                    resetAndStart = jArr;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, longBuilder.bufferedSize() + i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final long[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new long[]{_parseLongPrimitive(jsonParser, deserializationContext)};
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected final PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool) {
            return new LongDeser(this, nullValueProvider, bool);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser.class */
    static final class ShortDeser extends PrimitiveArrayDeserializers<short[]> {
        private static final long serialVersionUID = 1;

        public ShortDeser() {
            super(short[].class);
        }

        protected ShortDeser(ShortDeser shortDeser, NullValueProvider nullValueProvider, Boolean bool) {
            super(shortDeser, nullValueProvider, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final short[] _concat(short[] sArr, short[] sArr2) {
            int length = sArr.length;
            int length2 = sArr2.length;
            short[] copyOf = Arrays.copyOf(sArr, length + length2);
            System.arraycopy(sArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final short[] _constructEmpty() {
            return new short[0];
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final short[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            short _parseShortPrimitive;
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ArrayBuilders.ShortBuilder shortBuilder = deserializationContext.getArrayBuilders().getShortBuilder();
            short[] resetAndStart = shortBuilder.resetAndStart();
            int i = 0;
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return shortBuilder.completeAndClearBuffer(resetAndStart, i);
                    }
                    if (nextToken != JsonToken.VALUE_NULL) {
                        _parseShortPrimitive = _parseShortPrimitive(jsonParser, deserializationContext);
                    } else if (this._nuller != null) {
                        this._nuller.getNullValue(deserializationContext);
                    } else {
                        _verifyNullForPrimitive(deserializationContext);
                        _parseShortPrimitive = 0;
                    }
                    short[] sArr = resetAndStart;
                    int i2 = i;
                    if (i >= resetAndStart.length) {
                        sArr = shortBuilder.appendCompletedChunk(resetAndStart, i);
                        i2 = 0;
                    }
                    sArr[i2] = _parseShortPrimitive;
                    i = i2 + 1;
                    resetAndStart = sArr;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, resetAndStart, shortBuilder.bufferedSize() + i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        public final short[] handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new short[]{_parseShortPrimitive(jsonParser, deserializationContext)};
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected final PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool) {
            return new ShortDeser(this, nullValueProvider, bool);
        }
    }

    protected PrimitiveArrayDeserializers(PrimitiveArrayDeserializers<?> primitiveArrayDeserializers, NullValueProvider nullValueProvider, Boolean bool) {
        super(primitiveArrayDeserializers._valueClass);
        this._unwrapSingle = bool;
        this._nuller = nullValueProvider;
    }

    protected PrimitiveArrayDeserializers(Class<T> cls) {
        super((Class<?>) cls);
        this._unwrapSingle = null;
        this._nuller = null;
    }

    public static JsonDeserializer<?> forType(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return IntDeser.instance;
        }
        if (cls == Long.TYPE) {
            return LongDeser.instance;
        }
        if (cls == Byte.TYPE) {
            return new ByteDeser();
        }
        if (cls == Short.TYPE) {
            return new ShortDeser();
        }
        if (cls == Float.TYPE) {
            return new FloatDeser();
        }
        if (cls == Double.TYPE) {
            return new DoubleDeser();
        }
        if (cls == Boolean.TYPE) {
            return new BooleanDeser();
        }
        if (cls == Character.TYPE) {
            return new CharDeser();
        }
        throw new IllegalStateException();
    }

    protected abstract T _concat(T t, T t2);

    protected abstract T _constructEmpty();

    protected void _failOnNull(DeserializationContext deserializationContext) throws IOException {
        throw InvalidNullException.from(deserializationContext, (PropertyName) null, deserializationContext.constructType(this._valueClass));
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, this._valueClass, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        Nulls findContentNullStyle = findContentNullStyle(deserializationContext, beanProperty);
        NullValueProvider skipper = findContentNullStyle == Nulls.SKIP ? NullsConstantProvider.skipper() : findContentNullStyle == Nulls.FAIL ? beanProperty == null ? NullsFailProvider.constructForRootValue(deserializationContext.constructType(this._valueClass.getComponentType())) : NullsFailProvider.constructForProperty(beanProperty, beanProperty.getType().getContentType()) : null;
        return (!Objects.equals(findFormatFeature, this._unwrapSingle) || skipper != this._nuller) ? withResolved(skipper, findFormatFeature) : this;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, T t) throws IOException {
        T deserialize = deserialize(jsonParser, deserializationContext);
        if (!(t == null || Array.getLength(t) == 0)) {
            return _concat(t, deserialize);
        }
        return deserialize;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.CONSTANT;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        Object obj = this._emptyValue;
        Object obj2 = obj;
        if (obj == null) {
            obj2 = _constructEmpty();
            this._emptyValue = obj2;
        }
        return obj2;
    }

    protected T handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.hasToken(JsonToken.VALUE_STRING)) {
            return _deserializeFromString(jsonParser, deserializationContext);
        }
        return this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) ? handleSingleElementUnwrapped(jsonParser, deserializationContext) : (T) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
    }

    protected abstract T handleSingleElementUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.Array;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }

    protected abstract PrimitiveArrayDeserializers<?> withResolved(NullValueProvider nullValueProvider, Boolean bool);
}
