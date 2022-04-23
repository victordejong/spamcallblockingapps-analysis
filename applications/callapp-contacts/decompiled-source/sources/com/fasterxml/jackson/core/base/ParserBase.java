package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.json.PackageVersion;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.JacksonFeatureSet;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/base/ParserBase.class */
public abstract class ParserBase extends ParserMinimalBase {
    protected static final JacksonFeatureSet<StreamReadCapability> JSON_READ_CAPABILITIES = DEFAULT_READ_CAPABILITIES;
    protected byte[] _binaryValue;
    protected ByteArrayBuilder _byteArrayBuilder;
    protected boolean _closed;
    protected long _currInputProcessed;
    protected int _currInputRowStart;
    protected int _expLength;
    protected int _fractLength;
    protected int _inputEnd;
    protected int _inputPtr;
    protected int _intLength;
    protected final IOContext _ioContext;
    protected boolean _nameCopied;
    protected char[] _nameCopyBuffer;
    protected JsonToken _nextToken;
    protected BigDecimal _numberBigDecimal;
    protected BigInteger _numberBigInt;
    protected double _numberDouble;
    protected int _numberInt;
    protected long _numberLong;
    protected boolean _numberNegative;
    protected JsonReadContext _parsingContext;
    protected final TextBuffer _textBuffer;
    protected int _tokenInputCol;
    protected long _tokenInputTotal;
    protected int _currInputRow = 1;
    protected int _tokenInputRow = 1;
    protected int _numTypesValid = 0;

    public ParserBase(IOContext iOContext, int i) {
        super(i);
        this._ioContext = iOContext;
        this._textBuffer = iOContext.constructTextBuffer();
        this._parsingContext = JsonReadContext.createRootContext(JsonParser.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i) ? DupDetector.rootDetector(this) : null);
    }

    private void _parseSlowFloat(int i) throws IOException {
        try {
            if (i == 16) {
                this._numberBigDecimal = this._textBuffer.contentsAsDecimal();
                this._numTypesValid = 16;
                return;
            }
            this._numberDouble = this._textBuffer.contentsAsDouble();
            this._numTypesValid = 8;
        } catch (NumberFormatException e) {
            _wrapError("Malformed numeric value (" + _longNumberDesc(this._textBuffer.contentsAsString()) + ")", e);
        }
    }

    private void _parseSlowInt(int i) throws IOException {
        String contentsAsString = this._textBuffer.contentsAsString();
        try {
            int i2 = this._intLength;
            char[] textBuffer = this._textBuffer.getTextBuffer();
            int textOffset = this._textBuffer.getTextOffset();
            boolean z = this._numberNegative;
            int i3 = textOffset;
            if (z) {
                i3 = textOffset + 1;
            }
            if (NumberInput.inLongRange(textBuffer, i3, i2, z)) {
                this._numberLong = Long.parseLong(contentsAsString);
                this._numTypesValid = 2;
                return;
            }
            if (i == 1 || i == 2) {
                _reportTooLongIntegral(i, contentsAsString);
            }
            if (i == 8 || i == 32) {
                this._numberDouble = NumberInput.parseDouble(contentsAsString);
                this._numTypesValid = 8;
                return;
            }
            this._numberBigInt = new BigInteger(contentsAsString);
            this._numTypesValid = 4;
        } catch (NumberFormatException e) {
            _wrapError("Malformed numeric value (" + _longNumberDesc(contentsAsString) + ")", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int[] growArrayBy(int[] iArr, int i) {
        return iArr == null ? new int[i] : Arrays.copyOf(iArr, iArr.length + i);
    }

    protected void _checkStdFeatureChanges(int i, int i2) {
        int mask = JsonParser.Feature.STRICT_DUPLICATE_DETECTION.getMask();
        if ((i2 & mask) != 0 && (i & mask) != 0) {
            if (this._parsingContext.getDupDetector() == null) {
                this._parsingContext = this._parsingContext.withDupDetector(DupDetector.rootDetector(this));
            } else {
                this._parsingContext = this._parsingContext.withDupDetector(null);
            }
        }
    }

    protected abstract void _closeInput() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public final int _decodeBase64Escape(Base64Variant base64Variant, char c2, int i) throws IOException {
        if (c2 == '\\') {
            char _decodeEscaped = _decodeEscaped();
            if (_decodeEscaped <= ' ' && i == 0) {
                return -1;
            }
            int decodeBase64Char = base64Variant.decodeBase64Char(_decodeEscaped);
            if (decodeBase64Char >= 0 || (decodeBase64Char == -2 && i >= 2)) {
                return decodeBase64Char;
            }
            throw reportInvalidBase64Char(base64Variant, _decodeEscaped, i);
        }
        throw reportInvalidBase64Char(base64Variant, c2, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int _decodeBase64Escape(Base64Variant base64Variant, int i, int i2) throws IOException {
        if (i == 92) {
            char _decodeEscaped = _decodeEscaped();
            if (_decodeEscaped <= ' ' && i2 == 0) {
                return -1;
            }
            int decodeBase64Char = base64Variant.decodeBase64Char((int) _decodeEscaped);
            if (decodeBase64Char >= 0 || decodeBase64Char == -2) {
                return decodeBase64Char;
            }
            throw reportInvalidBase64Char(base64Variant, _decodeEscaped, i2);
        }
        throw reportInvalidBase64Char(base64Variant, i, i2);
    }

    protected char _decodeEscaped() throws IOException {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int _eofAsNextChar() throws JsonParseException {
        _handleEOF();
        return -1;
    }

    protected void _finishString() throws IOException {
    }

    public ByteArrayBuilder _getByteArrayBuilder() {
        ByteArrayBuilder byteArrayBuilder = this._byteArrayBuilder;
        if (byteArrayBuilder == null) {
            this._byteArrayBuilder = new ByteArrayBuilder();
        } else {
            byteArrayBuilder.reset();
        }
        return this._byteArrayBuilder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object _getSourceReference() {
        if (JsonParser.Feature.INCLUDE_SOURCE_IN_LOCATION.enabledIn(this._features)) {
            return this._ioContext.getSourceReference();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _handleBase64MissingPadding(Base64Variant base64Variant) throws IOException {
        _reportError(base64Variant.missingPaddingMessage());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase
    public void _handleEOF() throws JsonParseException {
        if (!this._parsingContext.inRoot()) {
            _reportInvalidEOF(String.format(": expected close marker for %s (start marker at %s)", this._parsingContext.inArray() ? "Array" : "Object", this._parsingContext.getStartLocation(_getSourceReference())), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public char _handleUnrecognizedCharacterEscape(char c2) throws JsonProcessingException {
        if (isEnabled(JsonParser.Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER)) {
            return c2;
        }
        if (c2 == '\'' && isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return c2;
        }
        _reportError("Unrecognized character escape " + _getCharDesc(c2));
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int _parseIntValue() throws IOException {
        if (this._closed) {
            _reportError("Internal error: _parseNumericValue called when parser instance closed");
        }
        if (this._currToken != JsonToken.VALUE_NUMBER_INT || this._intLength > 9) {
            _parseNumericValue(1);
            if ((this._numTypesValid & 1) == 0) {
                convertNumberToInt();
            }
            return this._numberInt;
        }
        int contentsAsInt = this._textBuffer.contentsAsInt(this._numberNegative);
        this._numberInt = contentsAsInt;
        this._numTypesValid = 1;
        return contentsAsInt;
    }

    protected void _parseNumericValue(int i) throws IOException {
        if (this._closed) {
            _reportError("Internal error: _parseNumericValue called when parser instance closed");
        }
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            int i2 = this._intLength;
            if (i2 <= 9) {
                this._numberInt = this._textBuffer.contentsAsInt(this._numberNegative);
                this._numTypesValid = 1;
            } else if (i2 <= 18) {
                long contentsAsLong = this._textBuffer.contentsAsLong(this._numberNegative);
                if (i2 == 10) {
                    if (this._numberNegative) {
                        if (contentsAsLong >= -2147483648L) {
                            this._numberInt = (int) contentsAsLong;
                            this._numTypesValid = 1;
                            return;
                        }
                    } else if (contentsAsLong <= 2147483647L) {
                        this._numberInt = (int) contentsAsLong;
                        this._numTypesValid = 1;
                        return;
                    }
                }
                this._numberLong = contentsAsLong;
                this._numTypesValid = 2;
            } else {
                _parseSlowInt(i);
            }
        } else if (this._currToken == JsonToken.VALUE_NUMBER_FLOAT) {
            _parseSlowFloat(i);
        } else {
            _reportError("Current token (%s) not numeric, can not use numeric value accessors", this._currToken);
        }
    }

    public void _releaseBuffers() throws IOException {
        this._textBuffer.releaseBuffers();
        char[] cArr = this._nameCopyBuffer;
        if (cArr != null) {
            this._nameCopyBuffer = null;
            this._ioContext.releaseNameCopyBuffer(cArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _reportMismatchedEndMarker(int i, char c2) throws JsonParseException {
        JsonReadContext parsingContext = getParsingContext();
        _reportError(String.format("Unexpected close marker '%s': expected '%c' (for %s starting at %s)", Character.valueOf((char) i), Character.valueOf(c2), parsingContext.typeDesc(), parsingContext.getStartLocation(_getSourceReference())));
    }

    protected void _reportTooLongIntegral(int i, String str) throws IOException {
        if (i == 1) {
            reportOverflowInt(str);
        } else {
            reportOverflowLong(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _throwUnquotedSpace(int i, String str) throws JsonParseException {
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS) || i > 32) {
            _reportError("Illegal unquoted character (" + _getCharDesc((char) i) + "): has to be escaped using backslash to be included in " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String _validJsonTokenList() throws IOException {
        return _validJsonValueList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String _validJsonValueList() throws IOException {
        return isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS) ? "(JSON String, Number (or 'NaN'/'INF'/'+INF'), Array, Object or token 'null', 'true' or 'false')" : "(JSON String, Number, Array, Object or token 'null', 'true' or 'false')";
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this._closed) {
            this._inputPtr = Math.max(this._inputPtr, this._inputEnd);
            this._closed = true;
            try {
                _closeInput();
            } finally {
                _releaseBuffers();
            }
        }
    }

    protected void convertNumberToBigDecimal() throws IOException {
        int i = this._numTypesValid;
        if ((i & 8) != 0) {
            this._numberBigDecimal = NumberInput.parseBigDecimal(getText());
        } else if ((i & 4) != 0) {
            this._numberBigDecimal = new BigDecimal(this._numberBigInt);
        } else if ((i & 2) != 0) {
            this._numberBigDecimal = BigDecimal.valueOf(this._numberLong);
        } else if ((i & 1) != 0) {
            this._numberBigDecimal = BigDecimal.valueOf(this._numberInt);
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 16;
    }

    protected void convertNumberToBigInteger() throws IOException {
        int i = this._numTypesValid;
        if ((i & 16) != 0) {
            this._numberBigInt = this._numberBigDecimal.toBigInteger();
        } else if ((i & 2) != 0) {
            this._numberBigInt = BigInteger.valueOf(this._numberLong);
        } else if ((i & 1) != 0) {
            this._numberBigInt = BigInteger.valueOf(this._numberInt);
        } else if ((i & 8) != 0) {
            this._numberBigInt = BigDecimal.valueOf(this._numberDouble).toBigInteger();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 4;
    }

    protected void convertNumberToDouble() throws IOException {
        int i = this._numTypesValid;
        if ((i & 16) != 0) {
            this._numberDouble = this._numberBigDecimal.doubleValue();
        } else if ((i & 4) != 0) {
            this._numberDouble = this._numberBigInt.doubleValue();
        } else if ((i & 2) != 0) {
            this._numberDouble = this._numberLong;
        } else if ((i & 1) != 0) {
            this._numberDouble = this._numberInt;
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convertNumberToInt() throws IOException {
        int i = this._numTypesValid;
        if ((i & 2) != 0) {
            long j = this._numberLong;
            int i2 = (int) j;
            if (i2 != j) {
                reportOverflowInt(getText(), currentToken());
            }
            this._numberInt = i2;
        } else if ((i & 4) != 0) {
            if (BI_MIN_INT.compareTo(this._numberBigInt) > 0 || BI_MAX_INT.compareTo(this._numberBigInt) < 0) {
                reportOverflowInt();
            }
            this._numberInt = this._numberBigInt.intValue();
        } else if ((i & 8) != 0) {
            double d2 = this._numberDouble;
            if (d2 < -2.147483648E9d || d2 > 2.147483647E9d) {
                reportOverflowInt();
            }
            this._numberInt = (int) this._numberDouble;
        } else if ((i & 16) != 0) {
            if (BD_MIN_INT.compareTo(this._numberBigDecimal) > 0 || BD_MAX_INT.compareTo(this._numberBigDecimal) < 0) {
                reportOverflowInt();
            }
            this._numberInt = this._numberBigDecimal.intValue();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 1;
    }

    protected void convertNumberToLong() throws IOException {
        int i = this._numTypesValid;
        if ((i & 1) != 0) {
            this._numberLong = this._numberInt;
        } else if ((i & 4) != 0) {
            if (BI_MIN_LONG.compareTo(this._numberBigInt) > 0 || BI_MAX_LONG.compareTo(this._numberBigInt) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigInt.longValue();
        } else if ((i & 8) != 0) {
            double d2 = this._numberDouble;
            if (d2 < -9.223372036854776E18d || d2 > 9.223372036854776E18d) {
                reportOverflowLong();
            }
            this._numberLong = (long) this._numberDouble;
        } else if ((i & 16) != 0) {
            if (BD_MIN_LONG.compareTo(this._numberBigDecimal) > 0 || BD_MAX_LONG.compareTo(this._numberBigDecimal) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigDecimal.longValue();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser disable(JsonParser.Feature feature) {
        this._features &= feature.getMask() ^ (-1);
        if (feature == JsonParser.Feature.STRICT_DUPLICATE_DETECTION) {
            this._parsingContext = this._parsingContext.withDupDetector(null);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser enable(JsonParser.Feature feature) {
        this._features |= feature.getMask();
        if (feature == JsonParser.Feature.STRICT_DUPLICATE_DETECTION && this._parsingContext.getDupDetector() == null) {
            this._parsingContext = this._parsingContext.withDupDetector(DupDetector.rootDetector(this));
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigInteger getBigIntegerValue() throws IOException {
        int i = this._numTypesValid;
        if ((i & 4) == 0) {
            if (i == 0) {
                _parseNumericValue(4);
            }
            if ((this._numTypesValid & 4) == 0) {
                convertNumberToBigInteger();
            }
        }
        return this._numberBigInt;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        if (this._binaryValue == null) {
            if (this._currToken != JsonToken.VALUE_STRING) {
                _reportError("Current token (" + this._currToken + ") not VALUE_STRING, can not access as binary");
            }
            ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
            _decodeBase64(getText(), _getByteArrayBuilder, base64Variant);
            this._binaryValue = _getByteArrayBuilder.toByteArray();
        }
        return this._binaryValue;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        int i = this._inputPtr;
        int i2 = this._currInputRowStart;
        return new JsonLocation(_getSourceReference(), -1L, this._inputPtr + this._currInputProcessed, this._currInputRow, (i - i2) + 1);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getCurrentName() throws IOException {
        JsonReadContext parent;
        return ((this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) && (parent = this._parsingContext.getParent()) != null) ? parent.getCurrentName() : this._parsingContext.getCurrentName();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getCurrentValue() {
        return this._parsingContext.getCurrentValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigDecimal getDecimalValue() throws IOException {
        int i = this._numTypesValid;
        if ((i & 16) == 0) {
            if (i == 0) {
                _parseNumericValue(16);
            }
            if ((this._numTypesValid & 16) == 0) {
                convertNumberToBigDecimal();
            }
        }
        return this._numberBigDecimal;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double getDoubleValue() throws IOException {
        int i = this._numTypesValid;
        if ((i & 8) == 0) {
            if (i == 0) {
                _parseNumericValue(8);
            }
            if ((this._numTypesValid & 8) == 0) {
                convertNumberToDouble();
            }
        }
        return this._numberDouble;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public float getFloatValue() throws IOException {
        return (float) getDoubleValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getIntValue() throws IOException {
        int i = this._numTypesValid;
        if ((i & 1) == 0) {
            if (i == 0) {
                return _parseIntValue();
            }
            if ((i & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long getLongValue() throws IOException {
        int i = this._numTypesValid;
        if ((i & 2) == 0) {
            if (i == 0) {
                _parseNumericValue(2);
            }
            if ((this._numTypesValid & 2) == 0) {
                convertNumberToLong();
            }
        }
        return this._numberLong;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType getNumberType() throws IOException {
        if (this._numTypesValid == 0) {
            _parseNumericValue(0);
        }
        if (this._currToken != JsonToken.VALUE_NUMBER_INT) {
            return (this._numTypesValid & 16) != 0 ? JsonParser.NumberType.BIG_DECIMAL : JsonParser.NumberType.DOUBLE;
        }
        int i = this._numTypesValid;
        return (i & 1) != 0 ? JsonParser.NumberType.INT : (i & 2) != 0 ? JsonParser.NumberType.LONG : JsonParser.NumberType.BIG_INTEGER;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number getNumberValue() throws IOException {
        if (this._numTypesValid == 0) {
            _parseNumericValue(0);
        }
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            int i = this._numTypesValid;
            if ((i & 1) != 0) {
                return Integer.valueOf(this._numberInt);
            }
            if ((i & 2) != 0) {
                return Long.valueOf(this._numberLong);
            }
            if ((i & 4) != 0) {
                return this._numberBigInt;
            }
            _throwInternal();
        }
        int i2 = this._numTypesValid;
        if ((i2 & 16) != 0) {
            return this._numberBigDecimal;
        }
        if ((i2 & 8) == 0) {
            _throwInternal();
        }
        return Double.valueOf(this._numberDouble);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number getNumberValueExact() throws IOException {
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            if (this._numTypesValid == 0) {
                _parseNumericValue(0);
            }
            int i = this._numTypesValid;
            if ((i & 1) != 0) {
                return Integer.valueOf(this._numberInt);
            }
            if ((i & 2) != 0) {
                return Long.valueOf(this._numberLong);
            }
            if ((i & 4) != 0) {
                return this._numberBigInt;
            }
            _throwInternal();
        }
        if (this._numTypesValid == 0) {
            _parseNumericValue(16);
        }
        int i2 = this._numTypesValid;
        if ((i2 & 16) != 0) {
            return this._numberBigDecimal;
        }
        if ((i2 & 8) == 0) {
            _throwInternal();
        }
        return Double.valueOf(this._numberDouble);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonReadContext getParsingContext() {
        return this._parsingContext;
    }

    public long getTokenCharacterOffset() {
        return this._tokenInputTotal;
    }

    public int getTokenColumnNr() {
        int i = this._tokenInputCol;
        return i < 0 ? i : i + 1;
    }

    public int getTokenLineNr() {
        return this._tokenInputRow;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        return new JsonLocation(_getSourceReference(), -1L, getTokenCharacterOffset(), getTokenLineNr(), getTokenColumnNr());
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean hasTextCharacters() {
        if (this._currToken == JsonToken.VALUE_STRING) {
            return true;
        }
        if (this._currToken == JsonToken.FIELD_NAME) {
            return this._nameCopied;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean isClosed() {
        return this._closed;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean isNaN() {
        if (this._currToken != JsonToken.VALUE_NUMBER_FLOAT || (this._numTypesValid & 8) == 0) {
            return false;
        }
        double d2 = this._numberDouble;
        return Double.isNaN(d2) || Double.isInfinite(d2);
    }

    @Deprecated
    protected boolean loadMore() throws IOException {
        return false;
    }

    @Deprecated
    protected void loadMoreGuaranteed() throws IOException {
        if (!loadMore()) {
            _reportInvalidEOF();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r4._currToken == com.fasterxml.jackson.core.JsonToken.START_ARRAY) goto L_0x001b;
     */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void overrideCurrentName(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r4
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r0._parsingContext
            r6 = r0
            r0 = r4
            com.fasterxml.jackson.core.JsonToken r0 = r0._currToken
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_OBJECT
            if (r0 == r1) goto L_0x001b
            r0 = r6
            r7 = r0
            r0 = r4
            com.fasterxml.jackson.core.JsonToken r0 = r0._currToken
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_ARRAY
            if (r0 != r1) goto L_0x0020
        L_0x001b:
            r0 = r6
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r0.getParent()
            r7 = r0
        L_0x0020:
            r0 = r7
            r1 = r5
            r0.setCurrentName(r1)     // Catch: IOException -> 0x0026
            return
        L_0x0026:
            r5 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.base.ParserBase.overrideCurrentName(java.lang.String):void");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser overrideStdFeatures(int i, int i2) {
        int i3 = this._features;
        int i4 = (i & i2) | ((i2 ^ (-1)) & i3);
        int i5 = i3 ^ i4;
        if (i5 != 0) {
            this._features = i4;
            _checkStdFeatureChanges(i4, i5);
        }
        return this;
    }

    protected IllegalArgumentException reportInvalidBase64Char(Base64Variant base64Variant, int i, int i2) throws IllegalArgumentException {
        return reportInvalidBase64Char(base64Variant, i, i2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IllegalArgumentException reportInvalidBase64Char(Base64Variant base64Variant, int i, int i2, String str) throws IllegalArgumentException {
        String str2;
        if (i <= 32) {
            str2 = String.format("Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units", Integer.toHexString(i), Integer.valueOf(i2 + 1));
        } else if (base64Variant.usesPaddingChar(i)) {
            str2 = "Unexpected padding character ('" + base64Variant.getPaddingChar() + "') as character #" + (i2 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (!Character.isDefined(i) || Character.isISOControl(i)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(i) + ") in base64 content";
        } else {
            str2 = "Illegal character '" + ((char) i) + "' (code 0x" + Integer.toHexString(i) + ") in base64 content";
        }
        String str3 = str2;
        if (str != null) {
            str3 = str2 + ": " + str;
        }
        return new IllegalArgumentException(str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken reset(boolean z, int i, int i2, int i3) {
        return (i2 > 0 || i3 > 0) ? resetFloat(z, i, i2, i3) : resetInt(z, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken resetAsNaN(String str, double d2) {
        this._textBuffer.resetWithString(str);
        this._numberDouble = d2;
        this._numTypesValid = 8;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken resetFloat(boolean z, int i, int i2, int i3) {
        this._numberNegative = z;
        this._intLength = i;
        this._fractLength = i2;
        this._expLength = i3;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken resetInt(boolean z, int i) {
        this._numberNegative = z;
        this._intLength = i;
        this._fractLength = 0;
        this._expLength = 0;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_INT;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCurrentValue(Object obj) {
        this._parsingContext.setCurrentValue(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    @Deprecated
    public JsonParser setFeatureMask(int i) {
        int i2 = this._features ^ i;
        if (i2 != 0) {
            this._features = i;
            _checkStdFeatureChanges(i, i2);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }
}
