package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.async.NonBlockingInputFeeder;
import com.fasterxml.jackson.core.exc.InputCoercionException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.core.util.JacksonFeatureSet;
import com.fasterxml.jackson.core.util.RequestPayload;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonParser.class */
public abstract class JsonParser implements Versioned, Closeable {
    public static final JacksonFeatureSet<StreamReadCapability> DEFAULT_READ_CAPABILITIES = JacksonFeatureSet.fromDefaults(StreamReadCapability.values());
    private static final int MAX_BYTE_I = 255;
    private static final int MAX_SHORT_I = 32767;
    private static final int MIN_BYTE_I = -128;
    private static final int MIN_SHORT_I = -32768;
    protected int _features;
    protected transient RequestPayload _requestPayload;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonParser$Feature.class */
    public enum Feature {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        ALLOW_MISSING_VALUES(false),
        ALLOW_TRAILING_COMMA(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNDEFINED(false),
        INCLUDE_SOURCE_IN_LOCATION(true);
        
        private final boolean _defaultState;
        private final int _mask = 1 << ordinal();

        Feature(boolean z) {
            this._defaultState = z;
        }

        public static int collectDefaults() {
            Feature[] values = values();
            int length = values.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i < length) {
                    Feature feature = values[i];
                    int i4 = i3;
                    if (feature.enabledByDefault()) {
                        i4 = i3 | feature.getMask();
                    }
                    i++;
                    i2 = i4;
                } else {
                    return i3;
                }
            }
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

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonParser$NumberType.class */
    public enum NumberType {
        INT,
        LONG,
        BIG_INTEGER,
        FLOAT,
        DOUBLE,
        BIG_DECIMAL
    }

    public JsonParser() {
    }

    public JsonParser(int i) {
        this._features = i;
    }

    protected ObjectCodec _codec() {
        ObjectCodec codec = getCodec();
        if (codec != null) {
            return codec;
        }
        throw new IllegalStateException("No ObjectCodec defined for parser, needed for deserialization");
    }

    public JsonParseException _constructError(String str) {
        return new JsonParseException(this, str).withRequestPayload(this._requestPayload);
    }

    protected void _reportUnsupportedOperation() {
        throw new UnsupportedOperationException("Operation not supported by parser of type " + getClass().getName());
    }

    public boolean canParseAsync() {
        return false;
    }

    public boolean canReadObjectId() {
        return false;
    }

    public boolean canReadTypeId() {
        return false;
    }

    public boolean canUseSchema(FormatSchema formatSchema) {
        return false;
    }

    public abstract void clearCurrentToken();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public JsonParser configure(Feature feature, boolean z) {
        if (z) {
            enable(feature);
        } else {
            disable(feature);
        }
        return this;
    }

    public String currentName() throws IOException {
        return getCurrentName();
    }

    public JsonToken currentToken() {
        return getCurrentToken();
    }

    public int currentTokenId() {
        return getCurrentTokenId();
    }

    public JsonParser disable(Feature feature) {
        this._features = (feature.getMask() ^ (-1)) & this._features;
        return this;
    }

    public JsonParser enable(Feature feature) {
        this._features = feature.getMask() | this._features;
        return this;
    }

    public void finishToken() throws IOException {
    }

    public abstract BigInteger getBigIntegerValue() throws IOException;

    public byte[] getBinaryValue() throws IOException {
        return getBinaryValue(Base64Variants.getDefaultVariant());
    }

    public abstract byte[] getBinaryValue(Base64Variant base64Variant) throws IOException;

    public boolean getBooleanValue() throws IOException {
        JsonToken currentToken = currentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (currentToken != JsonToken.VALUE_FALSE) {
            throw new JsonParseException(this, String.format("Current token (%s) not of boolean type", currentToken)).withRequestPayload(this._requestPayload);
        }
        return false;
    }

    public byte getByteValue() throws IOException {
        int intValue = getIntValue();
        if (intValue < MIN_BYTE_I || intValue > 255) {
            throw new InputCoercionException(this, String.format("Numeric value (%s) out of range of Java byte", getText()), JsonToken.VALUE_NUMBER_INT, Byte.TYPE);
        }
        return (byte) intValue;
    }

    public abstract ObjectCodec getCodec();

    public abstract JsonLocation getCurrentLocation();

    public abstract String getCurrentName() throws IOException;

    public abstract JsonToken getCurrentToken();

    @Deprecated
    public abstract int getCurrentTokenId();

    public Object getCurrentValue() {
        JsonStreamContext parsingContext = getParsingContext();
        if (parsingContext == null) {
            return null;
        }
        return parsingContext.getCurrentValue();
    }

    public abstract BigDecimal getDecimalValue() throws IOException;

    public abstract double getDoubleValue() throws IOException;

    public Object getEmbeddedObject() throws IOException {
        return null;
    }

    public int getFeatureMask() {
        return this._features;
    }

    public abstract float getFloatValue() throws IOException;

    public int getFormatFeatures() {
        return 0;
    }

    public Object getInputSource() {
        return null;
    }

    public abstract int getIntValue() throws IOException;

    public abstract JsonToken getLastClearedToken();

    public abstract long getLongValue() throws IOException;

    public NonBlockingInputFeeder getNonBlockingInputFeeder() {
        return null;
    }

    public abstract NumberType getNumberType() throws IOException;

    public abstract Number getNumberValue() throws IOException;

    public Number getNumberValueExact() throws IOException {
        return getNumberValue();
    }

    public Object getObjectId() throws IOException {
        return null;
    }

    public abstract JsonStreamContext getParsingContext();

    public JacksonFeatureSet<StreamReadCapability> getReadCapabilities() {
        return DEFAULT_READ_CAPABILITIES;
    }

    public FormatSchema getSchema() {
        return null;
    }

    public short getShortValue() throws IOException {
        int intValue = getIntValue();
        if (intValue < MIN_SHORT_I || intValue > MAX_SHORT_I) {
            throw new InputCoercionException(this, String.format("Numeric value (%s) out of range of Java short", getText()), JsonToken.VALUE_NUMBER_INT, Short.TYPE);
        }
        return (short) intValue;
    }

    public int getText(Writer writer) throws IOException, UnsupportedOperationException {
        String text = getText();
        if (text == null) {
            return 0;
        }
        writer.write(text);
        return text.length();
    }

    public abstract String getText() throws IOException;

    public abstract char[] getTextCharacters() throws IOException;

    public abstract int getTextLength() throws IOException;

    public abstract int getTextOffset() throws IOException;

    public abstract JsonLocation getTokenLocation();

    public Object getTypeId() throws IOException {
        return null;
    }

    public boolean getValueAsBoolean() throws IOException {
        return getValueAsBoolean(false);
    }

    public boolean getValueAsBoolean(boolean z) throws IOException {
        return z;
    }

    public double getValueAsDouble() throws IOException {
        return getValueAsDouble(0.0d);
    }

    public double getValueAsDouble(double d) throws IOException {
        return d;
    }

    public int getValueAsInt() throws IOException {
        return getValueAsInt(0);
    }

    public int getValueAsInt(int i) throws IOException {
        return i;
    }

    public long getValueAsLong() throws IOException {
        return getValueAsLong(0L);
    }

    public long getValueAsLong(long j) throws IOException {
        return j;
    }

    public String getValueAsString() throws IOException {
        return getValueAsString(null);
    }

    public abstract String getValueAsString(String str) throws IOException;

    public abstract boolean hasCurrentToken();

    public abstract boolean hasTextCharacters();

    public abstract boolean hasToken(JsonToken jsonToken);

    public abstract boolean hasTokenId(int i);

    public abstract boolean isClosed();

    public boolean isEnabled(Feature feature) {
        return feature.enabledIn(this._features);
    }

    public boolean isEnabled(StreamReadFeature streamReadFeature) {
        return streamReadFeature.mappedFeature().enabledIn(this._features);
    }

    public boolean isExpectedNumberIntToken() {
        return currentToken() == JsonToken.VALUE_NUMBER_INT;
    }

    public boolean isExpectedStartArrayToken() {
        return currentToken() == JsonToken.START_ARRAY;
    }

    public boolean isExpectedStartObjectToken() {
        return currentToken() == JsonToken.START_OBJECT;
    }

    public boolean isNaN() throws IOException {
        return false;
    }

    public Boolean nextBooleanValue() throws IOException {
        JsonToken nextToken = nextToken();
        if (nextToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (nextToken != JsonToken.VALUE_FALSE) {
            return null;
        }
        return Boolean.FALSE;
    }

    public String nextFieldName() throws IOException {
        if (nextToken() == JsonToken.FIELD_NAME) {
            return getCurrentName();
        }
        return null;
    }

    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        return nextToken() == JsonToken.FIELD_NAME && serializableString.getValue().equals(getCurrentName());
    }

    public int nextIntValue(int i) throws IOException {
        if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
            i = getIntValue();
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    public long nextLongValue(long j) throws IOException {
        ?? r4 = j;
        if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
            r4 = getLongValue();
        }
        return r4;
    }

    public String nextTextValue() throws IOException {
        if (nextToken() == JsonToken.VALUE_STRING) {
            return getText();
        }
        return null;
    }

    public abstract JsonToken nextToken() throws IOException;

    public abstract JsonToken nextValue() throws IOException;

    public abstract void overrideCurrentName(String str);

    public JsonParser overrideFormatFeatures(int i, int i2) {
        return this;
    }

    public JsonParser overrideStdFeatures(int i, int i2) {
        return setFeatureMask((i & i2) | (this._features & (i2 ^ (-1))));
    }

    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        _reportUnsupportedOperation();
        return 0;
    }

    public int readBinaryValue(OutputStream outputStream) throws IOException {
        return readBinaryValue(Base64Variants.getDefaultVariant(), outputStream);
    }

    public <T> T readValueAs(TypeReference<?> typeReference) throws IOException {
        return (T) _codec().readValue(this, typeReference);
    }

    public <T> T readValueAs(Class<T> cls) throws IOException {
        return (T) _codec().readValue(this, cls);
    }

    public <T extends TreeNode> T readValueAsTree() throws IOException {
        return (T) _codec().readTree(this);
    }

    public <T> Iterator<T> readValuesAs(TypeReference<T> typeReference) throws IOException {
        return _codec().readValues(this, typeReference);
    }

    public <T> Iterator<T> readValuesAs(Class<T> cls) throws IOException {
        return _codec().readValues(this, cls);
    }

    public int releaseBuffered(OutputStream outputStream) throws IOException {
        return -1;
    }

    public int releaseBuffered(Writer writer) throws IOException {
        return -1;
    }

    public boolean requiresCustomCodec() {
        return false;
    }

    public abstract void setCodec(ObjectCodec objectCodec);

    public void setCurrentValue(Object obj) {
        JsonStreamContext parsingContext = getParsingContext();
        if (parsingContext != null) {
            parsingContext.setCurrentValue(obj);
        }
    }

    @Deprecated
    public JsonParser setFeatureMask(int i) {
        this._features = i;
        return this;
    }

    public void setRequestPayloadOnError(RequestPayload requestPayload) {
        this._requestPayload = requestPayload;
    }

    public void setRequestPayloadOnError(String str) {
        this._requestPayload = str == null ? null : new RequestPayload(str);
    }

    public void setRequestPayloadOnError(byte[] bArr, String str) {
        this._requestPayload = bArr == null ? null : new RequestPayload(bArr, str);
    }

    public void setSchema(FormatSchema formatSchema) {
        throw new UnsupportedOperationException("Parser of type " + getClass().getName() + " does not support schema of type '" + formatSchema.getSchemaType() + "'");
    }

    public abstract JsonParser skipChildren() throws IOException;

    @Override // com.fasterxml.jackson.core.Versioned
    public abstract Version version();
}
