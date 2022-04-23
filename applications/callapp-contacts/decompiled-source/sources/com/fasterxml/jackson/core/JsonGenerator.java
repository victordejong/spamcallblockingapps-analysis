package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.core.util.JacksonFeatureSet;
import com.fasterxml.jackson.core.util.VersionUtil;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonGenerator.class */
public abstract class JsonGenerator implements Versioned, Closeable, Flushable {
    protected static final JacksonFeatureSet<StreamWriteCapability> DEFAULT_BINARY_WRITE_CAPABILITIES;
    public static final JacksonFeatureSet<StreamWriteCapability> DEFAULT_TEXTUAL_WRITE_CAPABILITIES;
    protected static final JacksonFeatureSet<StreamWriteCapability> DEFAULT_WRITE_CAPABILITIES;
    protected PrettyPrinter _cfgPrettyPrinter;

    /* renamed from: com.fasterxml.jackson.core.JsonGenerator$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonGenerator$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[WritableTypeId.Inclusion.values().length];
            $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion = iArr;
            try {
                iArr[WritableTypeId.Inclusion.PARENT_PROPERTY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[WritableTypeId.Inclusion.PAYLOAD_PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[WritableTypeId.Inclusion.METADATA_PROPERTY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[WritableTypeId.Inclusion.WRAPPER_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[WritableTypeId.Inclusion.WRAPPER_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonGenerator$Feature.class */
    public enum Feature {
        AUTO_CLOSE_TARGET(true),
        AUTO_CLOSE_JSON_CONTENT(true),
        FLUSH_PASSED_TO_STREAM(true),
        QUOTE_FIELD_NAMES(true),
        QUOTE_NON_NUMERIC_NUMBERS(true),
        ESCAPE_NON_ASCII(false),
        WRITE_NUMBERS_AS_STRINGS(false),
        WRITE_BIGDECIMAL_AS_PLAIN(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNKNOWN(false);
        
        private final boolean _defaultState;
        private final int _mask = 1 << ordinal();

        Feature(boolean z) {
            this._defaultState = z;
        }

        public static int collectDefaults() {
            Feature[] values;
            int i = 0;
            for (Feature feature : values()) {
                i = i;
                if (feature.enabledByDefault()) {
                    i |= feature.getMask();
                }
            }
            return i;
        }

        public final boolean enabledByDefault() {
            return this._defaultState;
        }

        public final boolean enabledIn(int i) {
            return (i & this._mask) != 0;
        }

        public final int getMask() {
            return this._mask;
        }
    }

    static {
        JacksonFeatureSet<StreamWriteCapability> fromDefaults = JacksonFeatureSet.fromDefaults(StreamWriteCapability.values());
        DEFAULT_WRITE_CAPABILITIES = fromDefaults;
        DEFAULT_TEXTUAL_WRITE_CAPABILITIES = fromDefaults.with(StreamWriteCapability.CAN_WRITE_FORMATTED_NUMBERS);
        DEFAULT_BINARY_WRITE_CAPABILITIES = fromDefaults.with(StreamWriteCapability.CAN_WRITE_BINARY_NATIVELY);
    }

    protected void _copyCurrentContents(JsonParser jsonParser) throws IOException {
        int i = 1;
        while (true) {
            JsonToken nextToken = jsonParser.nextToken();
            if (nextToken != null) {
                switch (nextToken.id()) {
                    case 1:
                        writeStartObject();
                        break;
                    case 2:
                        writeEndObject();
                        int i2 = i - 1;
                        i = i2;
                        if (i2 != 0) {
                            continue;
                        } else {
                            return;
                        }
                    case 3:
                        writeStartArray();
                        break;
                    case 4:
                        writeEndArray();
                        int i3 = i - 1;
                        i = i3;
                        if (i3 != 0) {
                            continue;
                        } else {
                            return;
                        }
                    case 5:
                        writeFieldName(jsonParser.getCurrentName());
                        continue;
                    case 6:
                        if (jsonParser.hasTextCharacters()) {
                            writeString(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                            continue;
                        } else {
                            writeString(jsonParser.getText());
                        }
                    case 7:
                        JsonParser.NumberType numberType = jsonParser.getNumberType();
                        if (numberType == JsonParser.NumberType.INT) {
                            writeNumber(jsonParser.getIntValue());
                            continue;
                        } else if (numberType == JsonParser.NumberType.BIG_INTEGER) {
                            writeNumber(jsonParser.getBigIntegerValue());
                        } else {
                            writeNumber(jsonParser.getLongValue());
                        }
                    case 8:
                        JsonParser.NumberType numberType2 = jsonParser.getNumberType();
                        if (numberType2 == JsonParser.NumberType.BIG_DECIMAL) {
                            writeNumber(jsonParser.getDecimalValue());
                            continue;
                        } else if (numberType2 == JsonParser.NumberType.FLOAT) {
                            writeNumber(jsonParser.getFloatValue());
                        } else {
                            writeNumber(jsonParser.getDoubleValue());
                        }
                    case 9:
                        writeBoolean(true);
                        continue;
                    case 10:
                        writeBoolean(false);
                        continue;
                    case 11:
                        writeNull();
                        continue;
                    case 12:
                        writeObject(jsonParser.getEmbeddedObject());
                        continue;
                    default:
                        throw new IllegalStateException("Internal error: unknown current token, ".concat(String.valueOf(nextToken)));
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _reportError(String str) throws JsonGenerationException {
        throw new JsonGenerationException(str, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _reportUnsupportedOperation() {
        throw new UnsupportedOperationException("Operation not supported by generator of type " + getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void _throwInternal() {
        VersionUtil.throwInternal();
    }

    protected final void _verifyOffsets(int i, int i2, int i3) {
        if (i2 < 0 || i2 + i3 > i) {
            throw new IllegalArgumentException(String.format("invalid argument(s) (offset=%d, length=%d) for input array of %d element", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i)));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _writeSimpleObject(Object obj) throws IOException {
        if (obj == null) {
            writeNull();
        } else if (obj instanceof String) {
            writeString((String) obj);
        } else {
            if (obj instanceof Number) {
                Number number = (Number) obj;
                if (number instanceof Integer) {
                    writeNumber(number.intValue());
                    return;
                } else if (number instanceof Long) {
                    writeNumber(number.longValue());
                    return;
                } else if (number instanceof Double) {
                    writeNumber(number.doubleValue());
                    return;
                } else if (number instanceof Float) {
                    writeNumber(number.floatValue());
                    return;
                } else if (number instanceof Short) {
                    writeNumber(number.shortValue());
                    return;
                } else if (number instanceof Byte) {
                    writeNumber(number.byteValue());
                    return;
                } else if (number instanceof BigInteger) {
                    writeNumber((BigInteger) number);
                    return;
                } else if (number instanceof BigDecimal) {
                    writeNumber((BigDecimal) number);
                    return;
                } else if (number instanceof AtomicInteger) {
                    writeNumber(((AtomicInteger) number).get());
                    return;
                } else if (number instanceof AtomicLong) {
                    writeNumber(((AtomicLong) number).get());
                    return;
                }
            } else if (obj instanceof byte[]) {
                writeBinary((byte[]) obj);
                return;
            } else if (obj instanceof Boolean) {
                writeBoolean(((Boolean) obj).booleanValue());
                return;
            } else if (obj instanceof AtomicBoolean) {
                writeBoolean(((AtomicBoolean) obj).get());
                return;
            }
            throw new IllegalStateException("No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed " + obj.getClass().getName() + ")");
        }
    }

    public boolean canOmitFields() {
        return true;
    }

    public boolean canUseSchema(FormatSchema formatSchema) {
        return false;
    }

    public boolean canWriteBinaryNatively() {
        return false;
    }

    public boolean canWriteFormattedNumbers() {
        return false;
    }

    public boolean canWriteObjectId() {
        return false;
    }

    public boolean canWriteTypeId() {
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public final JsonGenerator configure(Feature feature, boolean z) {
        if (z) {
            enable(feature);
        } else {
            disable(feature);
        }
        return this;
    }

    public void copyCurrentEvent(JsonParser jsonParser) throws IOException {
        JsonToken currentToken = jsonParser.currentToken();
        switch (currentToken == null ? -1 : currentToken.id()) {
            case -1:
                _reportError("No current event to copy");
                return;
            case 0:
            default:
                throw new IllegalStateException("Internal error: unknown current token, ".concat(String.valueOf(currentToken)));
            case 1:
                writeStartObject();
                return;
            case 2:
                writeEndObject();
                return;
            case 3:
                writeStartArray();
                return;
            case 4:
                writeEndArray();
                return;
            case 5:
                writeFieldName(jsonParser.getCurrentName());
                return;
            case 6:
                if (jsonParser.hasTextCharacters()) {
                    writeString(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                    return;
                } else {
                    writeString(jsonParser.getText());
                    return;
                }
            case 7:
                JsonParser.NumberType numberType = jsonParser.getNumberType();
                if (numberType == JsonParser.NumberType.INT) {
                    writeNumber(jsonParser.getIntValue());
                    return;
                } else if (numberType == JsonParser.NumberType.BIG_INTEGER) {
                    writeNumber(jsonParser.getBigIntegerValue());
                    return;
                } else {
                    writeNumber(jsonParser.getLongValue());
                    return;
                }
            case 8:
                JsonParser.NumberType numberType2 = jsonParser.getNumberType();
                if (numberType2 == JsonParser.NumberType.BIG_DECIMAL) {
                    writeNumber(jsonParser.getDecimalValue());
                    return;
                } else if (numberType2 == JsonParser.NumberType.FLOAT) {
                    writeNumber(jsonParser.getFloatValue());
                    return;
                } else {
                    writeNumber(jsonParser.getDoubleValue());
                    return;
                }
            case 9:
                writeBoolean(true);
                return;
            case 10:
                writeBoolean(false);
                return;
            case 11:
                writeNull();
                return;
            case 12:
                writeObject(jsonParser.getEmbeddedObject());
                return;
        }
    }

    public void copyCurrentStructure(JsonParser jsonParser) throws IOException {
        JsonToken currentToken = jsonParser.currentToken();
        int i = -1;
        int id = currentToken == null ? -1 : currentToken.id();
        i = id;
        if (id == 5) {
            writeFieldName(jsonParser.getCurrentName());
            JsonToken nextToken = jsonParser.nextToken();
            if (nextToken != null) {
                i = nextToken.id();
            }
        }
        if (i == 1) {
            writeStartObject();
            _copyCurrentContents(jsonParser);
        } else if (i != 3) {
            copyCurrentEvent(jsonParser);
        } else {
            writeStartArray();
            _copyCurrentContents(jsonParser);
        }
    }

    public abstract JsonGenerator disable(Feature feature);

    public abstract JsonGenerator enable(Feature feature);

    @Override // java.io.Flushable
    public abstract void flush() throws IOException;

    public CharacterEscapes getCharacterEscapes() {
        return null;
    }

    public abstract ObjectCodec getCodec();

    public Object getCurrentValue() {
        JsonStreamContext outputContext = getOutputContext();
        if (outputContext == null) {
            return null;
        }
        return outputContext.getCurrentValue();
    }

    public abstract int getFeatureMask();

    public int getFormatFeatures() {
        return 0;
    }

    public int getHighestEscapedChar() {
        return 0;
    }

    public int getOutputBuffered() {
        return -1;
    }

    public abstract JsonStreamContext getOutputContext();

    public Object getOutputTarget() {
        return null;
    }

    public PrettyPrinter getPrettyPrinter() {
        return this._cfgPrettyPrinter;
    }

    public FormatSchema getSchema() {
        return null;
    }

    public JacksonFeatureSet<StreamWriteCapability> getWriteCapabilities() {
        return DEFAULT_WRITE_CAPABILITIES;
    }

    public abstract boolean isClosed();

    public abstract boolean isEnabled(Feature feature);

    public boolean isEnabled(StreamWriteFeature streamWriteFeature) {
        return isEnabled(streamWriteFeature.mappedFeature());
    }

    public JsonGenerator overrideFormatFeatures(int i, int i2) {
        return this;
    }

    public JsonGenerator overrideStdFeatures(int i, int i2) {
        return setFeatureMask((i & i2) | (getFeatureMask() & (i2 ^ (-1))));
    }

    public JsonGenerator setCharacterEscapes(CharacterEscapes characterEscapes) {
        return this;
    }

    public abstract JsonGenerator setCodec(ObjectCodec objectCodec);

    public void setCurrentValue(Object obj) {
        JsonStreamContext outputContext = getOutputContext();
        if (outputContext != null) {
            outputContext.setCurrentValue(obj);
        }
    }

    @Deprecated
    public abstract JsonGenerator setFeatureMask(int i);

    public JsonGenerator setHighestNonEscapedChar(int i) {
        return this;
    }

    public JsonGenerator setPrettyPrinter(PrettyPrinter prettyPrinter) {
        this._cfgPrettyPrinter = prettyPrinter;
        return this;
    }

    public JsonGenerator setRootValueSeparator(SerializableString serializableString) {
        throw new UnsupportedOperationException();
    }

    public void setSchema(FormatSchema formatSchema) {
        throw new UnsupportedOperationException(String.format("Generator of type %s does not support schema of type '%s'", getClass().getName(), formatSchema.getSchemaType()));
    }

    public abstract JsonGenerator useDefaultPrettyPrinter();

    @Override // com.fasterxml.jackson.core.Versioned
    public abstract Version version();

    public void writeArray(double[] dArr, int i, int i2) throws IOException {
        if (dArr != null) {
            _verifyOffsets(dArr.length, i, i2);
            writeStartArray(dArr, i2);
            for (int i3 = i; i3 < i2 + i; i3++) {
                writeNumber(dArr[i3]);
            }
            writeEndArray();
            return;
        }
        throw new IllegalArgumentException("null array");
    }

    public void writeArray(int[] iArr, int i, int i2) throws IOException {
        if (iArr != null) {
            _verifyOffsets(iArr.length, i, i2);
            writeStartArray(iArr, i2);
            for (int i3 = i; i3 < i2 + i; i3++) {
                writeNumber(iArr[i3]);
            }
            writeEndArray();
            return;
        }
        throw new IllegalArgumentException("null array");
    }

    public void writeArray(long[] jArr, int i, int i2) throws IOException {
        if (jArr != null) {
            _verifyOffsets(jArr.length, i, i2);
            writeStartArray(jArr, i2);
            for (int i3 = i; i3 < i2 + i; i3++) {
                writeNumber(jArr[i3]);
            }
            writeEndArray();
            return;
        }
        throw new IllegalArgumentException("null array");
    }

    public void writeArray(String[] strArr, int i, int i2) throws IOException {
        if (strArr != null) {
            _verifyOffsets(strArr.length, i, i2);
            writeStartArray(strArr, i2);
            for (int i3 = i; i3 < i2 + i; i3++) {
                writeString(strArr[i3]);
            }
            writeEndArray();
            return;
        }
        throw new IllegalArgumentException("null array");
    }

    public void writeArrayFieldStart(String str) throws IOException {
        writeFieldName(str);
        writeStartArray();
    }

    public abstract int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) throws IOException;

    public int writeBinary(InputStream inputStream, int i) throws IOException {
        return writeBinary(Base64Variants.getDefaultVariant(), inputStream, i);
    }

    public abstract void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException;

    public void writeBinary(byte[] bArr) throws IOException {
        writeBinary(Base64Variants.getDefaultVariant(), bArr, 0, bArr.length);
    }

    public void writeBinary(byte[] bArr, int i, int i2) throws IOException {
        writeBinary(Base64Variants.getDefaultVariant(), bArr, i, i2);
    }

    public void writeBinaryField(String str, byte[] bArr) throws IOException {
        writeFieldName(str);
        writeBinary(bArr);
    }

    public abstract void writeBoolean(boolean z) throws IOException;

    public void writeBooleanField(String str, boolean z) throws IOException {
        writeFieldName(str);
        writeBoolean(z);
    }

    public void writeEmbeddedObject(Object obj) throws IOException {
        if (obj == null) {
            writeNull();
        } else if (obj instanceof byte[]) {
            writeBinary((byte[]) obj);
        } else {
            throw new JsonGenerationException("No native support for writing embedded objects of type " + obj.getClass().getName(), this);
        }
    }

    public abstract void writeEndArray() throws IOException;

    public abstract void writeEndObject() throws IOException;

    public void writeFieldId(long j) throws IOException {
        writeFieldName(Long.toString(j));
    }

    public abstract void writeFieldName(SerializableString serializableString) throws IOException;

    public abstract void writeFieldName(String str) throws IOException;

    public abstract void writeNull() throws IOException;

    public void writeNullField(String str) throws IOException {
        writeFieldName(str);
        writeNull();
    }

    public abstract void writeNumber(double d2) throws IOException;

    public abstract void writeNumber(float f) throws IOException;

    public abstract void writeNumber(int i) throws IOException;

    public abstract void writeNumber(long j) throws IOException;

    public abstract void writeNumber(String str) throws IOException;

    public abstract void writeNumber(BigDecimal bigDecimal) throws IOException;

    public abstract void writeNumber(BigInteger bigInteger) throws IOException;

    public void writeNumber(short s) throws IOException {
        writeNumber((int) s);
    }

    public void writeNumber(char[] cArr, int i, int i2) throws IOException {
        writeNumber(new String(cArr, i, i2));
    }

    public void writeNumberField(String str, double d2) throws IOException {
        writeFieldName(str);
        writeNumber(d2);
    }

    public void writeNumberField(String str, float f) throws IOException {
        writeFieldName(str);
        writeNumber(f);
    }

    public void writeNumberField(String str, int i) throws IOException {
        writeFieldName(str);
        writeNumber(i);
    }

    public void writeNumberField(String str, long j) throws IOException {
        writeFieldName(str);
        writeNumber(j);
    }

    public void writeNumberField(String str, BigDecimal bigDecimal) throws IOException {
        writeFieldName(str);
        writeNumber(bigDecimal);
    }

    public void writeNumberField(String str, BigInteger bigInteger) throws IOException {
        writeFieldName(str);
        writeNumber(bigInteger);
    }

    public void writeNumberField(String str, short s) throws IOException {
        writeFieldName(str);
        writeNumber(s);
    }

    public abstract void writeObject(Object obj) throws IOException;

    public void writeObjectField(String str, Object obj) throws IOException {
        writeFieldName(str);
        writeObject(obj);
    }

    public void writeObjectFieldStart(String str) throws IOException {
        writeFieldName(str);
        writeStartObject();
    }

    public void writeObjectId(Object obj) throws IOException {
        throw new JsonGenerationException("No native support for writing Object Ids", this);
    }

    public void writeObjectRef(Object obj) throws IOException {
        throw new JsonGenerationException("No native support for writing Object Ids", this);
    }

    public void writeOmittedField(String str) throws IOException {
    }

    public abstract void writeRaw(char c2) throws IOException;

    public void writeRaw(SerializableString serializableString) throws IOException {
        writeRaw(serializableString.getValue());
    }

    public abstract void writeRaw(String str) throws IOException;

    public abstract void writeRaw(String str, int i, int i2) throws IOException;

    public abstract void writeRaw(char[] cArr, int i, int i2) throws IOException;

    public abstract void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException;

    public void writeRawValue(SerializableString serializableString) throws IOException {
        writeRawValue(serializableString.getValue());
    }

    public abstract void writeRawValue(String str) throws IOException;

    public abstract void writeRawValue(String str, int i, int i2) throws IOException;

    public abstract void writeRawValue(char[] cArr, int i, int i2) throws IOException;

    public abstract void writeStartArray() throws IOException;

    @Deprecated
    public void writeStartArray(int i) throws IOException {
        writeStartArray();
    }

    public void writeStartArray(Object obj) throws IOException {
        writeStartArray();
        setCurrentValue(obj);
    }

    public void writeStartArray(Object obj, int i) throws IOException {
        writeStartArray(i);
        setCurrentValue(obj);
    }

    public abstract void writeStartObject() throws IOException;

    public void writeStartObject(Object obj) throws IOException {
        writeStartObject();
        setCurrentValue(obj);
    }

    public void writeStartObject(Object obj, int i) throws IOException {
        writeStartObject();
        setCurrentValue(obj);
    }

    public abstract void writeString(SerializableString serializableString) throws IOException;

    public void writeString(Reader reader, int i) throws IOException {
        _reportUnsupportedOperation();
    }

    public abstract void writeString(String str) throws IOException;

    public abstract void writeString(char[] cArr, int i, int i2) throws IOException;

    public void writeStringField(String str, String str2) throws IOException {
        writeFieldName(str);
        writeString(str2);
    }

    public abstract void writeTree(TreeNode treeNode) throws IOException;

    public void writeTypeId(Object obj) throws IOException {
        throw new JsonGenerationException("No native support for writing Type Ids", this);
    }

    public WritableTypeId writeTypePrefix(WritableTypeId writableTypeId) throws IOException {
        Object obj = writableTypeId.id;
        JsonToken jsonToken = writableTypeId.valueShape;
        if (canWriteTypeId()) {
            writableTypeId.wrapperWritten = false;
            writeTypeId(obj);
        } else {
            String valueOf = obj instanceof String ? (String) obj : String.valueOf(obj);
            writableTypeId.wrapperWritten = true;
            WritableTypeId.Inclusion inclusion = writableTypeId.include;
            WritableTypeId.Inclusion inclusion2 = inclusion;
            if (jsonToken != JsonToken.START_OBJECT) {
                inclusion2 = inclusion;
                if (inclusion.requiresObjectContext()) {
                    inclusion2 = WritableTypeId.Inclusion.WRAPPER_ARRAY;
                    writableTypeId.include = inclusion2;
                }
            }
            int i = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[inclusion2.ordinal()];
            if (!(i == 1 || i == 2)) {
                if (i == 3) {
                    writeStartObject(writableTypeId.forValue);
                    writeStringField(writableTypeId.asProperty, valueOf);
                    return writableTypeId;
                } else if (i != 4) {
                    writeStartArray();
                    writeString(valueOf);
                } else {
                    writeStartObject();
                    writeFieldName(valueOf);
                }
            }
        }
        if (jsonToken == JsonToken.START_OBJECT) {
            writeStartObject(writableTypeId.forValue);
        } else if (jsonToken == JsonToken.START_ARRAY) {
            writeStartArray();
        }
        return writableTypeId;
    }

    public WritableTypeId writeTypeSuffix(WritableTypeId writableTypeId) throws IOException {
        JsonToken jsonToken = writableTypeId.valueShape;
        if (jsonToken == JsonToken.START_OBJECT) {
            writeEndObject();
        } else if (jsonToken == JsonToken.START_ARRAY) {
            writeEndArray();
        }
        if (writableTypeId.wrapperWritten) {
            int i = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[writableTypeId.include.ordinal()];
            if (i == 1) {
                Object obj = writableTypeId.id;
                writeStringField(writableTypeId.asProperty, obj instanceof String ? (String) obj : String.valueOf(obj));
            } else if (!(i == 2 || i == 3)) {
                if (i != 5) {
                    writeEndObject();
                } else {
                    writeEndArray();
                }
            }
        }
        return writableTypeId;
    }

    public abstract void writeUTF8String(byte[] bArr, int i, int i2) throws IOException;
}
