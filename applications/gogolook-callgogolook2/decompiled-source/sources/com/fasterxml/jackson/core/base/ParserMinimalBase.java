package com.fasterxml.jackson.core.base;

import androidx.media2.exoplayer.external.C0463C;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.p049io.NumberInput;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.VersionUtil;
import java.io.IOException;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/base/ParserMinimalBase.class */
public abstract class ParserMinimalBase extends JsonParser {
    public static final int INT_BACKSLASH = 92;
    public static final int INT_COLON = 58;
    public static final int INT_COMMA = 44;
    public static final int INT_CR = 13;
    public static final int INT_E = 69;
    public static final int INT_HASH = 35;
    public static final int INT_LBRACKET = 91;
    public static final int INT_LCURLY = 123;
    public static final int INT_LF = 10;
    public static final int INT_PERIOD = 46;
    public static final int INT_QUOTE = 34;
    public static final int INT_RBRACKET = 93;
    public static final int INT_RCURLY = 125;
    public static final int INT_SLASH = 47;
    public static final int INT_SPACE = 32;
    public static final int INT_TAB = 9;
    public static final int INT_e = 101;
    public JsonToken _currToken;
    public JsonToken _lastClearedToken;

    public ParserMinimalBase() {
    }

    public ParserMinimalBase(int i) {
        super(i);
    }

    public static String _ascii(byte[] bArr) {
        try {
            return new String(bArr, C0463C.ASCII_NAME);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static byte[] _asciiBytes(String str) {
        byte[] bArr = new byte[str.length()];
        int length = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    public static final String _getCharDesc(int i) {
        char c = (char) i;
        if (Character.isISOControl(c)) {
            return "(CTRL-CHAR, code " + i + ")";
        } else if (i > 255) {
            return "'" + c + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")";
        } else {
            return "'" + c + "' (code " + i + ")";
        }
    }

    public final JsonParseException _constructError(String str, Throwable th) {
        return new JsonParseException(this, str, th);
    }

    public void _decodeBase64(String str, ByteArrayBuilder byteArrayBuilder, Base64Variant base64Variant) throws IOException {
        try {
            base64Variant.decode(str, byteArrayBuilder);
        } catch (IllegalArgumentException e) {
            _reportError(e.getMessage());
        }
    }

    public abstract void _handleEOF() throws JsonParseException;

    public char _handleUnrecognizedCharacterEscape(char c) throws JsonProcessingException {
        if (isEnabled(JsonParser.Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER)) {
            return c;
        }
        if (c == '\'' && isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return c;
        }
        _reportError("Unrecognized character escape " + _getCharDesc(c));
        return c;
    }

    public boolean _hasTextualNull(String str) {
        return C14247d.f31851f.equals(str);
    }

    public final void _reportError(String str) throws JsonParseException {
        throw _constructError(str);
    }

    public void _reportInvalidEOF() throws JsonParseException {
        _reportInvalidEOF(" in " + this._currToken);
    }

    public void _reportInvalidEOF(String str) throws JsonParseException {
        _reportError("Unexpected end-of-input" + str);
    }

    public void _reportInvalidEOFInValue() throws JsonParseException {
        _reportInvalidEOF(" in a value");
    }

    public void _reportMissingRootWS(int i) throws JsonParseException {
        _reportUnexpectedChar(i, "Expected space separating root-level values");
    }

    public void _reportUnexpectedChar(int i, String str) throws JsonParseException {
        if (i < 0) {
            _reportInvalidEOF();
        }
        String str2 = "Unexpected character (" + _getCharDesc(i) + ")";
        String str3 = str2;
        if (str != null) {
            str3 = str2 + ": " + str;
        }
        _reportError(str3);
    }

    public final void _throwInternal() {
        VersionUtil.throwInternal();
        throw null;
    }

    public void _throwInvalidSpace(int i) throws JsonParseException {
        _reportError("Illegal character (" + _getCharDesc((char) i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    public void _throwUnquotedSpace(int i, String str) throws JsonParseException {
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS) || i > 32) {
            _reportError("Illegal unquoted character (" + _getCharDesc((char) i) + "): has to be escaped using backslash to be included in " + str);
        }
    }

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
    public abstract byte[] getBinaryValue(Base64Variant base64Variant) throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract String getCurrentName() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken getCurrentToken() {
        return this._currToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getCurrentTokenId() {
        JsonToken jsonToken = this._currToken;
        return jsonToken == null ? 0 : jsonToken.m33768id();
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
            boolean z2 = true;
            switch (jsonToken.m33768id()) {
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
                    if (getIntValue() == 0) {
                        z2 = false;
                    }
                    return z2;
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
            int r0 = r0.m33768id()
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
            double r0 = com.fasterxml.jackson.core.p049io.NumberInput.parseAsDouble(r0, r1)
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
            int id = jsonToken.m33768id();
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
            int r0 = r0.m33768id()
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
            long r0 = com.fasterxml.jackson.core.p049io.NumberInput.parseAsLong(r0, r1)
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
        JsonToken jsonToken = this._currToken;
        return jsonToken == JsonToken.VALUE_STRING ? getText() : jsonToken == JsonToken.FIELD_NAME ? getCurrentName() : getValueAsString(null);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return getText();
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return getCurrentName();
        }
        String str2 = str;
        if (jsonToken != null) {
            str2 = str;
            if (jsonToken != JsonToken.VALUE_NULL) {
                str2 = !jsonToken.isScalarValue() ? str : getText();
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
        boolean z = true;
        boolean z2 = true;
        if (jsonToken == null) {
            if (i != 0) {
                z2 = false;
            }
            return z2;
        }
        if (jsonToken.m33768id() != i) {
            z = false;
        }
        return z;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract boolean isClosed();

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

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser skipChildren() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.START_OBJECT && jsonToken != JsonToken.START_ARRAY) {
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
            } else {
                continue;
            }
        }
    }
}
