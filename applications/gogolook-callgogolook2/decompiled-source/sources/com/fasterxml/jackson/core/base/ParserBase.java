package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.json.PackageVersion;
import com.fasterxml.jackson.core.p049io.IOContext;
import com.fasterxml.jackson.core.p049io.NumberInput;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/base/ParserBase.class */
public abstract class ParserBase extends ParserMinimalBase {
    public byte[] _binaryValue;
    public ByteArrayBuilder _byteArrayBuilder;
    public boolean _closed;
    public long _currInputProcessed;
    public int _currInputRowStart;
    public int _inputEnd;
    public int _inputPtr;
    public int _intLength;
    public final IOContext _ioContext;
    public boolean _nameCopied;
    public char[] _nameCopyBuffer;
    public JsonToken _nextToken;
    public BigDecimal _numberBigDecimal;
    public BigInteger _numberBigInt;
    public double _numberDouble;
    public int _numberInt;
    public long _numberLong;
    public boolean _numberNegative;
    public JsonReadContext _parsingContext;
    public final TextBuffer _textBuffer;
    public int _tokenInputCol;
    public long _tokenInputTotal;
    public static final BigInteger BI_MIN_INT = BigInteger.valueOf(-2147483648L);
    public static final BigInteger BI_MAX_INT = BigInteger.valueOf(2147483647L);
    public static final BigInteger BI_MIN_LONG = BigInteger.valueOf(Long.MIN_VALUE);
    public static final BigInteger BI_MAX_LONG = BigInteger.valueOf(Long.MAX_VALUE);
    public static final BigDecimal BD_MIN_LONG = new BigDecimal(BI_MIN_LONG);
    public static final BigDecimal BD_MAX_LONG = new BigDecimal(BI_MAX_LONG);
    public static final BigDecimal BD_MIN_INT = new BigDecimal(BI_MIN_INT);
    public static final BigDecimal BD_MAX_INT = new BigDecimal(BI_MAX_INT);
    public int _currInputRow = 1;
    public int _tokenInputRow = 1;
    public int _numTypesValid = 0;

    public ParserBase(IOContext iOContext, int i) {
        super(i);
        this._ioContext = iOContext;
        this._textBuffer = iOContext.constructTextBuffer();
        this._parsingContext = JsonReadContext.createRootContext(JsonParser.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i) ? DupDetector.rootDetector(this) : null);
    }

    public void _checkStdFeatureChanges(int i, int i2) {
        int mask = JsonParser.Feature.STRICT_DUPLICATE_DETECTION.getMask();
        if ((i2 & mask) != 0 && (i & mask) != 0) {
            if (this._parsingContext.getDupDetector() == null) {
                JsonReadContext jsonReadContext = this._parsingContext;
                jsonReadContext.withDupDetector(DupDetector.rootDetector(this));
                this._parsingContext = jsonReadContext;
                return;
            }
            JsonReadContext jsonReadContext2 = this._parsingContext;
            jsonReadContext2.withDupDetector(null);
            this._parsingContext = jsonReadContext2;
        }
    }

    public abstract void _closeInput() throws IOException;

    public final int _decodeBase64Escape(Base64Variant base64Variant, char c, int i) throws IOException {
        if (c == '\\') {
            char _decodeEscaped = _decodeEscaped();
            if (_decodeEscaped <= ' ' && i == 0) {
                return -1;
            }
            int decodeBase64Char = base64Variant.decodeBase64Char(_decodeEscaped);
            if (decodeBase64Char >= 0) {
                return decodeBase64Char;
            }
            throw reportInvalidBase64Char(base64Variant, _decodeEscaped, i);
        }
        throw reportInvalidBase64Char(base64Variant, c, i);
    }

    public final int _decodeBase64Escape(Base64Variant base64Variant, int i, int i2) throws IOException {
        if (i == 92) {
            char _decodeEscaped = _decodeEscaped();
            if (_decodeEscaped <= ' ' && i2 == 0) {
                return -1;
            }
            int decodeBase64Char = base64Variant.decodeBase64Char((int) _decodeEscaped);
            if (decodeBase64Char >= 0) {
                return decodeBase64Char;
            }
            throw reportInvalidBase64Char(base64Variant, _decodeEscaped, i2);
        }
        throw reportInvalidBase64Char(base64Variant, i, i2);
    }

    public abstract char _decodeEscaped() throws IOException;

    public final int _eofAsNextChar() throws JsonParseException {
        _handleEOF();
        return -1;
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

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase
    public void _handleEOF() throws JsonParseException {
        if (!this._parsingContext.inRoot()) {
            _reportInvalidEOF(": expected close marker for " + this._parsingContext.getTypeDesc() + " (from " + this._parsingContext.getStartLocation(this._ioContext.getSourceReference()) + ")");
        }
    }

    public int _parseIntValue() throws IOException {
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            char[] textBuffer = this._textBuffer.getTextBuffer();
            int textOffset = this._textBuffer.getTextOffset();
            int i = this._intLength;
            int i2 = textOffset;
            if (this._numberNegative) {
                i2 = textOffset + 1;
            }
            if (i <= 9) {
                int parseInt = NumberInput.parseInt(textBuffer, i2, i);
                int i3 = parseInt;
                if (this._numberNegative) {
                    i3 = -parseInt;
                }
                this._numberInt = i3;
                this._numTypesValid = 1;
                return i3;
            }
        }
        _parseNumericValue(1);
        if ((this._numTypesValid & 1) == 0) {
            convertNumberToInt();
        }
        return this._numberInt;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void _parseNumericValue(int r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.base.ParserBase._parseNumericValue(int):void");
    }

    public final void _parseSlowFloat(int i) throws IOException {
        try {
            if (i == 16) {
                this._numberBigDecimal = this._textBuffer.contentsAsDecimal();
                this._numTypesValid = 16;
            } else {
                this._numberDouble = this._textBuffer.contentsAsDouble();
                this._numTypesValid = 8;
            }
        } catch (NumberFormatException e) {
            _wrapError("Malformed numeric value '" + this._textBuffer.contentsAsString() + "'", e);
        }
    }

    public final void _parseSlowInt(int i, char[] cArr, int i2, int i3) throws IOException {
        String contentsAsString = this._textBuffer.contentsAsString();
        try {
            if (NumberInput.inLongRange(cArr, i2, i3, this._numberNegative)) {
                this._numberLong = Long.parseLong(contentsAsString);
                this._numTypesValid = 2;
            } else {
                this._numberBigInt = new BigInteger(contentsAsString);
                this._numTypesValid = 4;
            }
        } catch (NumberFormatException e) {
            _wrapError("Malformed numeric value '" + contentsAsString + "'", e);
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

    public void _reportMismatchedEndMarker(int i, char c) throws JsonParseException {
        _reportError("Unexpected close marker '" + ((char) i) + "': expected '" + c + "' (for " + this._parsingContext.getTypeDesc() + " starting at " + ("" + this._parsingContext.getStartLocation(this._ioContext.getSourceReference())) + ")");
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this._closed) {
            this._closed = true;
            try {
                _closeInput();
            } finally {
                _releaseBuffers();
            }
        }
    }

    public void convertNumberToBigDecimal() throws IOException {
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

    public void convertNumberToBigInteger() throws IOException {
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

    public void convertNumberToDouble() throws IOException {
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

    public void convertNumberToInt() throws IOException {
        int i = this._numTypesValid;
        if ((i & 2) != 0) {
            long j = this._numberLong;
            int i2 = (int) j;
            if (i2 != j) {
                _reportError("Numeric value (" + getText() + ") out of range of int");
            }
            this._numberInt = i2;
        } else if ((i & 4) != 0) {
            if (BI_MIN_INT.compareTo(this._numberBigInt) > 0 || BI_MAX_INT.compareTo(this._numberBigInt) < 0) {
                reportOverflowInt();
            }
            this._numberInt = this._numberBigInt.intValue();
        } else if ((i & 8) != 0) {
            double d = this._numberDouble;
            if (d < -2.147483648E9d || d > 2.147483647E9d) {
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

    public void convertNumberToLong() throws IOException {
        int i = this._numTypesValid;
        if ((i & 1) != 0) {
            this._numberLong = this._numberInt;
        } else if ((i & 4) != 0) {
            if (BI_MIN_LONG.compareTo(this._numberBigInt) > 0 || BI_MAX_LONG.compareTo(this._numberBigInt) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigInt.longValue();
        } else if ((i & 8) != 0) {
            double d = this._numberDouble;
            if (d < -9.223372036854776E18d || d > 9.223372036854776E18d) {
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
            JsonReadContext jsonReadContext = this._parsingContext;
            jsonReadContext.withDupDetector(null);
            this._parsingContext = jsonReadContext;
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser enable(JsonParser.Feature feature) {
        this._features |= feature.getMask();
        if (feature == JsonParser.Feature.STRICT_DUPLICATE_DETECTION && this._parsingContext.getDupDetector() == null) {
            JsonReadContext jsonReadContext = this._parsingContext;
            jsonReadContext.withDupDetector(DupDetector.rootDetector(this));
            this._parsingContext = jsonReadContext;
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
    public String getCurrentName() throws IOException {
        JsonToken jsonToken = this._currToken;
        return (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) ? this._parsingContext.clearAndGetParent().getCurrentName() : this._parsingContext.getCurrentName();
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
    public Object getEmbeddedObject() throws IOException {
        return null;
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
            return (i & 1) != 0 ? Integer.valueOf(this._numberInt) : (i & 2) != 0 ? Long.valueOf(this._numberLong) : (i & 4) != 0 ? this._numberBigInt : this._numberBigDecimal;
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

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean hasTextCharacters() {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return true;
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return this._nameCopied;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean isClosed() {
        return this._closed;
    }

    public abstract boolean loadMore() throws IOException;

    public final void loadMoreGuaranteed() throws IOException {
        if (!loadMore()) {
            _reportInvalidEOF();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r0 == com.fasterxml.jackson.core.JsonToken.START_ARRAY) goto L_0x001b;
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
            r7 = r0
            r0 = r7
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_OBJECT
            if (r0 == r1) goto L_0x001b
            r0 = r6
            r8 = r0
            r0 = r7
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_ARRAY
            if (r0 != r1) goto L_0x0021
        L_0x001b:
            r0 = r6
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r0.getParent()
            r8 = r0
        L_0x0021:
            r0 = r8
            r1 = r5
            r0.setCurrentName(r1)     // Catch: IOException -> 0x0028
            return
        L_0x0028:
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

    public IllegalArgumentException reportInvalidBase64Char(Base64Variant base64Variant, int i, int i2) throws IllegalArgumentException {
        return reportInvalidBase64Char(base64Variant, i, i2, null);
    }

    public IllegalArgumentException reportInvalidBase64Char(Base64Variant base64Variant, int i, int i2, String str) throws IllegalArgumentException {
        String str2;
        if (i <= 32) {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(i) + ") as character #" + (i2 + 1) + " of 4-char base64 unit: can only used between units";
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

    public void reportInvalidNumber(String str) throws JsonParseException {
        _reportError("Invalid numeric value: " + str);
    }

    public void reportOverflowInt() throws IOException {
        _reportError("Numeric value (" + getText() + ") out of range of int (-2147483648 - 2147483647)");
    }

    public void reportOverflowLong() throws IOException {
        _reportError("Numeric value (" + getText() + ") out of range of long (-9223372036854775808 - 9223372036854775807)");
    }

    public void reportUnexpectedNumberChar(int i, String str) throws JsonParseException {
        String str2 = "Unexpected character (" + ParserMinimalBase._getCharDesc(i) + ") in numeric value";
        String str3 = str2;
        if (str != null) {
            str3 = str2 + ": " + str;
        }
        _reportError(str3);
    }

    public final JsonToken reset(boolean z, int i, int i2, int i3) {
        return (i2 >= 1 || i3 >= 1) ? resetFloat(z, i, i2, i3) : resetInt(z, i);
    }

    public final JsonToken resetAsNaN(String str, double d) {
        this._textBuffer.resetWithString(str);
        this._numberDouble = d;
        this._numTypesValid = 8;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    public final JsonToken resetFloat(boolean z, int i, int i2, int i3) {
        this._numberNegative = z;
        this._intLength = i;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    public final JsonToken resetInt(boolean z, int i) {
        this._numberNegative = z;
        this._intLength = i;
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
