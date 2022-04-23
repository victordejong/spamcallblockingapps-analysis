package com.fasterxml.jackson.core.base;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.exc.InputCoercionException;
import com.fasterxml.jackson.core.io.JsonEOFException;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.VersionUtil;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/base/ParserMinimalBase.class */
public abstract class ParserMinimalBase extends JsonParser {
    protected static final BigDecimal BD_MAX_INT;
    protected static final BigDecimal BD_MAX_LONG;
    protected static final BigDecimal BD_MIN_INT;
    protected static final BigDecimal BD_MIN_LONG;
    protected static final BigInteger BI_MAX_INT;
    protected static final BigInteger BI_MAX_LONG;
    protected static final BigInteger BI_MIN_INT;
    protected static final BigInteger BI_MIN_LONG;
    protected static final char CHAR_NULL = 0;
    protected static final int INT_0 = 48;
    protected static final int INT_9 = 57;
    protected static final int INT_APOS = 39;
    protected static final int INT_ASTERISK = 42;
    protected static final int INT_BACKSLASH = 92;
    protected static final int INT_COLON = 58;
    protected static final int INT_COMMA = 44;
    protected static final int INT_CR = 13;
    protected static final int INT_E = 69;
    protected static final int INT_HASH = 35;
    protected static final int INT_LBRACKET = 91;
    protected static final int INT_LCURLY = 123;
    protected static final int INT_LF = 10;
    protected static final int INT_MINUS = 45;
    protected static final int INT_PERIOD = 46;
    protected static final int INT_PLUS = 43;
    protected static final int INT_QUOTE = 34;
    protected static final int INT_RBRACKET = 93;
    protected static final int INT_RCURLY = 125;
    protected static final int INT_SLASH = 47;
    protected static final int INT_SPACE = 32;
    protected static final int INT_TAB = 9;
    protected static final int INT_e = 101;
    protected static final int MAX_ERROR_TOKEN_LENGTH = 256;
    protected static final double MAX_INT_D = 2.147483647E9d;
    protected static final long MAX_INT_L = 2147483647L;
    protected static final double MAX_LONG_D = 9.223372036854776E18d;
    protected static final double MIN_INT_D = -2.147483648E9d;
    protected static final long MIN_INT_L = -2147483648L;
    protected static final double MIN_LONG_D = -9.223372036854776E18d;
    protected static final byte[] NO_BYTES = new byte[0];
    protected static final int[] NO_INTS = new int[0];
    protected static final int NR_BIGDECIMAL = 16;
    protected static final int NR_BIGINT = 4;
    protected static final int NR_DOUBLE = 8;
    protected static final int NR_FLOAT = 32;
    protected static final int NR_INT = 1;
    protected static final int NR_LONG = 2;
    protected static final int NR_UNKNOWN = 0;
    protected JsonToken _currToken;
    protected JsonToken _lastClearedToken;

    static {
        BigInteger valueOf = BigInteger.valueOf(MIN_INT_L);
        BI_MIN_INT = valueOf;
        BigInteger valueOf2 = BigInteger.valueOf(MAX_INT_L);
        BI_MAX_INT = valueOf2;
        BigInteger valueOf3 = BigInteger.valueOf(Long.MIN_VALUE);
        BI_MIN_LONG = valueOf3;
        BigInteger valueOf4 = BigInteger.valueOf(Long.MAX_VALUE);
        BI_MAX_LONG = valueOf4;
        BD_MIN_LONG = new BigDecimal(valueOf3);
        BD_MAX_LONG = new BigDecimal(valueOf4);
        BD_MIN_INT = new BigDecimal(valueOf);
        BD_MAX_INT = new BigDecimal(valueOf2);
    }

    protected ParserMinimalBase() {
    }

    public ParserMinimalBase(int i) {
        super(i);
    }

    @Deprecated
    protected static String _ascii(byte[] bArr) {
        try {
            return new String(bArr, "US-ASCII");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    protected static byte[] _asciiBytes(String str) {
        byte[] bArr = new byte[str.length()];
        int length = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final String _getCharDesc(int i) {
        char c2 = (char) i;
        if (Character.isISOControl(c2)) {
            return "(CTRL-CHAR, code " + i + ")";
        } else if (i > 255) {
            return "'" + c2 + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")";
        } else {
            return "'" + c2 + "' (code " + i + ")";
        }
    }

    protected final JsonParseException _constructError(String str, Throwable th) {
        return new JsonParseException(this, str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _decodeBase64(String str, ByteArrayBuilder byteArrayBuilder, Base64Variant base64Variant) throws IOException {
        try {
            base64Variant.decode(str, byteArrayBuilder);
        } catch (IllegalArgumentException e) {
            _reportError(e.getMessage());
        }
    }

    protected abstract void _handleEOF() throws JsonParseException;

    protected boolean _hasTextualNull(String str) {
        return JsonReaderKt.NULL.equals(str);
    }

    protected String _longIntegerDesc(String str) {
        int length = str.length();
        if (length < 1000) {
            return str;
        }
        int i = length;
        if (str.startsWith(VerificationLanguage.REGION_PREFIX)) {
            i = length - 1;
        }
        return String.format("[Integer with %d digits]", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String _longNumberDesc(String str) {
        int length = str.length();
        if (length < 1000) {
            return str;
        }
        int i = length;
        if (str.startsWith(VerificationLanguage.REGION_PREFIX)) {
            i = length - 1;
        }
        return String.format("[number with %d characters]", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void _reportError(String str) throws JsonParseException {
        throw _constructError(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void _reportError(String str, Object obj) throws JsonParseException {
        throw _constructError(String.format(str, obj));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void _reportError(String str, Object obj, Object obj2) throws JsonParseException {
        throw _constructError(String.format(str, obj, obj2));
    }

    protected void _reportInputCoercion(String str, JsonToken jsonToken, Class<?> cls) throws InputCoercionException {
        throw new InputCoercionException(this, str, jsonToken, cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _reportInvalidEOF() throws JsonParseException {
        _reportInvalidEOF(" in " + this._currToken, this._currToken);
    }

    @Deprecated
    protected void _reportInvalidEOF(String str) throws JsonParseException {
        throw new JsonEOFException(this, null, "Unexpected end-of-input".concat(String.valueOf(str)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _reportInvalidEOF(String str, JsonToken jsonToken) throws JsonParseException {
        throw new JsonEOFException(this, jsonToken, "Unexpected end-of-input".concat(String.valueOf(str)));
    }

    @Deprecated
    protected void _reportInvalidEOFInValue() throws JsonParseException {
        _reportInvalidEOF(" in a value");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _reportInvalidEOFInValue(JsonToken jsonToken) throws JsonParseException {
        _reportInvalidEOF(jsonToken == JsonToken.VALUE_STRING ? " in a String value" : (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) ? " in a Number value" : " in a value", jsonToken);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _reportMissingRootWS(int i) throws JsonParseException {
        _reportUnexpectedChar(i, "Expected space separating root-level values");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _reportUnexpectedChar(int i, String str) throws JsonParseException {
        if (i < 0) {
            _reportInvalidEOF();
        }
        String format = String.format("Unexpected character (%s)", _getCharDesc(i));
        String str2 = format;
        if (str != null) {
            str2 = format + ": " + str;
        }
        _reportError(str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void _throwInternal() {
        VersionUtil.throwInternal();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _throwInvalidSpace(int i) throws JsonParseException {
        _reportError("Illegal character (" + _getCharDesc((char) i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void _wrapError(String str, Throwable th) throws JsonParseException {
        throw _constructError(str, th);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void clearCurrentToken() {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != null) {
            this._lastClearedToken = jsonToken;
            this._currToken = null;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken currentToken() {
        return this._currToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int currentTokenId() {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return 0;
        }
        return jsonToken.id();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract byte[] getBinaryValue(Base64Variant base64Variant) throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract String getCurrentName() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken getCurrentToken() {
        return this._currToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    @Deprecated
    public int getCurrentTokenId() {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return 0;
        }
        return jsonToken.id();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken getLastClearedToken() {
        return this._lastClearedToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract JsonStreamContext getParsingContext();

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract String getText() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract char[] getTextCharacters() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract int getTextLength() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract int getTextOffset() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean getValueAsBoolean(boolean z) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != null) {
            switch (jsonToken.id()) {
                case 6:
                    String trim = getText().trim();
                    if ("true".equals(trim)) {
                        return true;
                    }
                    if ("false".equals(trim) || _hasTextualNull(trim)) {
                        return false;
                    }
                    break;
                case 7:
                    return getIntValue() != 0;
                case 9:
                    return true;
                case 10:
                case 11:
                    return false;
                case 12:
                    Object embeddedObject = getEmbeddedObject();
                    if (embeddedObject instanceof Boolean) {
                        return ((Boolean) embeddedObject).booleanValue();
                    }
                    break;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [double] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [double] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double getValueAsDouble(double r5) throws java.io.IOException {
        /*
            r4 = this;
            r0 = r4
            com.fasterxml.jackson.core.JsonToken r0 = r0._currToken
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0078
            r0 = r7
            int r0 = r0.id()
            switch(r0) {
                case 6: goto L_0x0062;
                case 7: goto L_0x005d;
                case 8: goto L_0x005d;
                case 9: goto L_0x005b;
                case 10: goto L_0x0059;
                case 11: goto L_0x0059;
                case 12: goto L_0x0042;
                default: goto L_0x003c;
            }
        L_0x003c:
            r0 = r5
            r8 = r0
            goto L_0x0078
        L_0x0042:
            r0 = r4
            java.lang.Object r0 = r0.getEmbeddedObject()
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L_0x0078
            r0 = r7
            java.lang.Number r0 = (java.lang.Number) r0
            double r0 = r0.doubleValue()
            return r0
        L_0x0059:
            r0 = 0
            return r0
        L_0x005b:
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            return r0
        L_0x005d:
            r0 = r4
            double r0 = r0.getDoubleValue()
            return r0
        L_0x0062:
            r0 = r4
            java.lang.String r0 = r0.getText()
            r7 = r0
            r0 = r4
            r1 = r7
            boolean r0 = r0._hasTextualNull(r1)
            if (r0 == 0) goto L_0x0071
            r0 = 0
            return r0
        L_0x0071:
            r0 = r7
            r1 = r5
            double r0 = com.fasterxml.jackson.core.io.NumberInput.parseAsDouble(r0, r1)
            r8 = r0
        L_0x0078:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.base.ParserMinimalBase.getValueAsDouble(double):double");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt() throws IOException {
        JsonToken jsonToken = this._currToken;
        return (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) ? getIntValue() : getValueAsInt(0);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt(int i) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return getIntValue();
        }
        int i2 = i;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 6) {
                switch (id) {
                    case 9:
                        return 1;
                    case 10:
                    case 11:
                        return 0;
                    case 12:
                        Object embeddedObject = getEmbeddedObject();
                        i2 = i;
                        if (embeddedObject instanceof Number) {
                            return ((Number) embeddedObject).intValue();
                        }
                        break;
                    default:
                        i2 = i;
                        break;
                }
            } else {
                String text = getText();
                if (_hasTextualNull(text)) {
                    return 0;
                }
                i2 = NumberInput.parseAsInt(text, i);
            }
        }
        return i2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long getValueAsLong() throws IOException {
        JsonToken jsonToken = this._currToken;
        return (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) ? getLongValue() : getValueAsLong(0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getValueAsLong(long r5) throws java.io.IOException {
        /*
            r4 = this;
            r0 = r4
            com.fasterxml.jackson.core.JsonToken r0 = r0._currToken
            r7 = r0
            r0 = r7
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_INT
            if (r0 == r1) goto L_0x0086
            r0 = r7
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_FLOAT
            if (r0 != r1) goto L_0x0016
            goto L_0x0086
        L_0x0016:
            r0 = r5
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0083
            r0 = r7
            int r0 = r0.id()
            r10 = r0
            r0 = r10
            r1 = 6
            if (r0 == r1) goto L_0x006d
            r0 = r10
            switch(r0) {
                case 9: goto L_0x006b;
                case 10: goto L_0x0069;
                case 11: goto L_0x0069;
                case 12: goto L_0x0052;
                default: goto L_0x004c;
            }
        L_0x004c:
            r0 = r5
            r8 = r0
            goto L_0x0083
        L_0x0052:
            r0 = r4
            java.lang.Object r0 = r0.getEmbeddedObject()
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L_0x0083
            r0 = r7
            java.lang.Number r0 = (java.lang.Number) r0
            long r0 = r0.longValue()
            return r0
        L_0x0069:
            r0 = 0
            return r0
        L_0x006b:
            r0 = 1
            return r0
        L_0x006d:
            r0 = r4
            java.lang.String r0 = r0.getText()
            r7 = r0
            r0 = r4
            r1 = r7
            boolean r0 = r0._hasTextualNull(r1)
            if (r0 == 0) goto L_0x007c
            r0 = 0
            return r0
        L_0x007c:
            r0 = r7
            r1 = r5
            long r0 = com.fasterxml.jackson.core.io.NumberInput.parseAsLong(r0, r1)
            r8 = r0
        L_0x0083:
            r0 = r8
            return r0
        L_0x0086:
            r0 = r4
            long r0 = r0.getLongValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.base.ParserMinimalBase.getValueAsLong(long):long");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String getValueAsString() throws IOException {
        return getValueAsString(null);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        if (this._currToken == JsonToken.VALUE_STRING) {
            return getText();
        }
        if (this._currToken == JsonToken.FIELD_NAME) {
            return getCurrentName();
        }
        JsonToken jsonToken = this._currToken;
        String str2 = str;
        if (jsonToken != null) {
            str2 = str;
            if (jsonToken != JsonToken.VALUE_NULL) {
                str2 = !this._currToken.isScalarValue() ? str : getText();
            }
        }
        return str2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean hasCurrentToken() {
        return this._currToken != null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract boolean hasTextCharacters();

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean hasToken(JsonToken jsonToken) {
        return this._currToken == jsonToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean hasTokenId(int i) {
        JsonToken jsonToken = this._currToken;
        return jsonToken == null ? i == 0 : jsonToken.id() == i;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract boolean isClosed();

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean isExpectedNumberIntToken() {
        return this._currToken == JsonToken.VALUE_NUMBER_INT;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean isExpectedStartArrayToken() {
        return this._currToken == JsonToken.START_ARRAY;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean isExpectedStartObjectToken() {
        return this._currToken == JsonToken.START_OBJECT;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract JsonToken nextToken() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken nextValue() throws IOException {
        JsonToken nextToken = nextToken();
        JsonToken jsonToken = nextToken;
        if (nextToken == JsonToken.FIELD_NAME) {
            jsonToken = nextToken();
        }
        return jsonToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract void overrideCurrentName(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportInvalidNumber(String str) throws JsonParseException {
        _reportError("Invalid numeric value: ".concat(String.valueOf(str)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportOverflowInt() throws IOException {
        reportOverflowInt(getText());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportOverflowInt(String str) throws IOException {
        reportOverflowInt(str, currentToken());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportOverflowInt(String str, JsonToken jsonToken) throws IOException {
        _reportInputCoercion(String.format("Numeric value (%s) out of range of int (%d - %s)", _longIntegerDesc(str), Integer.valueOf((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), Integer.MAX_VALUE), jsonToken, Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportOverflowLong() throws IOException {
        reportOverflowLong(getText());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportOverflowLong(String str) throws IOException {
        reportOverflowLong(str, currentToken());
    }

    protected void reportOverflowLong(String str, JsonToken jsonToken) throws IOException {
        _reportInputCoercion(String.format("Numeric value (%s) out of range of long (%d - %s)", _longIntegerDesc(str), Long.MIN_VALUE, Long.MAX_VALUE), jsonToken, Long.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportUnexpectedNumberChar(int i, String str) throws JsonParseException {
        String format = String.format("Unexpected character (%s) in numeric value", _getCharDesc(i));
        String str2 = format;
        if (str != null) {
            str2 = format + ": " + str;
        }
        _reportError(str2);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser skipChildren() throws IOException {
        if (this._currToken != JsonToken.START_OBJECT && this._currToken != JsonToken.START_ARRAY) {
            return this;
        }
        int i = 1;
        while (true) {
            JsonToken nextToken = nextToken();
            if (nextToken == null) {
                _handleEOF();
                return this;
            } else if (nextToken.isStructStart()) {
                i++;
            } else if (nextToken.isStructEnd()) {
                int i2 = i - 1;
                i = i2;
                if (i2 == 0) {
                    return this;
                }
            } else if (nextToken == JsonToken.NOT_AVAILABLE) {
                _reportError("Not enough content available for `skipChildren()`: non-blocking parser? (%s)", getClass().getName());
            }
        }
    }
}
