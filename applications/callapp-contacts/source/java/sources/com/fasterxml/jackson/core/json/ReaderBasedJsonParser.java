package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.p309io.CharTypes;
import com.fasterxml.jackson.core.p309io.IOContext;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.JacksonFeatureSet;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/json/ReaderBasedJsonParser.class */
public class ReaderBasedJsonParser extends ParserBase {
    protected boolean _bufferRecyclable;
    protected final int _hashSeed;
    protected char[] _inputBuffer;
    protected int _nameStartCol;
    protected long _nameStartOffset;
    protected int _nameStartRow;
    protected ObjectCodec _objectCodec;
    protected Reader _reader;
    protected final CharsToNameCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    private static final int FEAT_MASK_TRAILING_COMMA = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();
    private static final int FEAT_MASK_LEADING_ZEROS = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();
    private static final int FEAT_MASK_NON_NUM_NUMBERS = JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS.getMask();
    private static final int FEAT_MASK_ALLOW_MISSING = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();
    private static final int FEAT_MASK_ALLOW_SINGLE_QUOTES = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();
    private static final int FEAT_MASK_ALLOW_UNQUOTED_NAMES = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();
    private static final int FEAT_MASK_ALLOW_JAVA_COMMENTS = JsonParser.Feature.ALLOW_COMMENTS.getMask();
    private static final int FEAT_MASK_ALLOW_YAML_COMMENTS = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    public ReaderBasedJsonParser(IOContext iOContext, int i, Reader reader, ObjectCodec objectCodec, CharsToNameCanonicalizer charsToNameCanonicalizer) {
        super(iOContext, i);
        this._reader = reader;
        this._inputBuffer = iOContext.allocTokenBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._objectCodec = objectCodec;
        this._symbols = charsToNameCanonicalizer;
        this._hashSeed = charsToNameCanonicalizer.hashSeed();
        this._bufferRecyclable = true;
    }

    public ReaderBasedJsonParser(IOContext iOContext, int i, Reader reader, ObjectCodec objectCodec, CharsToNameCanonicalizer charsToNameCanonicalizer, char[] cArr, int i2, int i3, boolean z) {
        super(iOContext, i);
        this._reader = reader;
        this._inputBuffer = cArr;
        this._inputPtr = i2;
        this._inputEnd = i3;
        this._objectCodec = objectCodec;
        this._symbols = charsToNameCanonicalizer;
        this._hashSeed = charsToNameCanonicalizer.hashSeed();
        this._bufferRecyclable = z;
    }

    private final void _checkMatchEnd(String str, int i, int i2) throws IOException {
        if (Character.isJavaIdentifierPart((char) i2)) {
            _reportInvalidToken(str.substring(0, i));
        }
    }

    private void _closeScope(int i) throws JsonParseException {
        if (i == 93) {
            _updateLocation();
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(i, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_ARRAY;
        }
        if (i == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(i, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_OBJECT;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0090 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0082 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String _handleOddName2(int r7, int r8, int[] r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._handleOddName2(int, int, int[]):java.lang.String");
    }

    private final void _isNextTokenNameYes(int i) throws IOException {
        this._currToken = JsonToken.FIELD_NAME;
        _updateLocation();
        if (i == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
        } else if (i == 91) {
            this._nextToken = JsonToken.START_ARRAY;
        } else if (i == 102) {
            _matchToken("false", 1);
            this._nextToken = JsonToken.VALUE_FALSE;
        } else if (i == 110) {
            _matchToken(JsonReaderKt.NULL, 1);
            this._nextToken = JsonToken.VALUE_NULL;
        } else if (i == 116) {
            _matchToken("true", 1);
            this._nextToken = JsonToken.VALUE_TRUE;
        } else if (i == 123) {
            this._nextToken = JsonToken.START_OBJECT;
        } else if (i == 45) {
            this._nextToken = _parseNegNumber();
        } else if (i == 46) {
            this._nextToken = _parseFloatThatStartsWithPeriod();
        } else {
            switch (i) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    this._nextToken = _parsePosNumber(i);
                    return;
                default:
                    this._nextToken = _handleOddValue(i);
                    return;
            }
        }
    }

    private final void _matchFalse() throws IOException {
        int i;
        char c;
        int i2 = this._inputPtr;
        if (i2 + 4 < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            if (cArr[i2] == 'a') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'l') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 's') {
                        int i5 = i4 + 1;
                        if (cArr[i5] == 'e' && ((c = cArr[(i = i5 + 1)]) < '0' || c == ']' || c == '}')) {
                            this._inputPtr = i;
                            return;
                        }
                    }
                }
            }
        }
        _matchToken("false", 1);
    }

    private final void _matchNull() throws IOException {
        int i;
        char c;
        int i2 = this._inputPtr;
        if (i2 + 3 < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            if (cArr[i2] == 'u') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'l') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 'l' && ((c = cArr[(i = i4 + 1)]) < '0' || c == ']' || c == '}')) {
                        this._inputPtr = i;
                        return;
                    }
                }
            }
        }
        _matchToken(JsonReaderKt.NULL, 1);
    }

    private final void _matchToken2(String str, int i) throws IOException {
        int i2;
        char c;
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !_loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i2 = i + 1;
            i = i2;
        } while (i2 < length);
        if ((this._inputPtr < this._inputEnd || _loadMore()) && (c = this._inputBuffer[this._inputPtr]) >= '0' && c != ']' && c != '}') {
            _checkMatchEnd(str, i2, c);
        }
    }

    private final void _matchTrue() throws IOException {
        int i;
        char c;
        int i2 = this._inputPtr;
        if (i2 + 3 < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            if (cArr[i2] == 'r') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'u') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 'e' && ((c = cArr[(i = i4 + 1)]) < '0' || c == ']' || c == '}')) {
                        this._inputPtr = i;
                        return;
                    }
                }
            }
        }
        _matchToken("true", 1);
    }

    private final JsonToken _nextAfterName() {
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _nextTokenNotInObject(int i) throws IOException {
        if (i == 34) {
            this._tokenIncomplete = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this._currToken = jsonToken;
            return jsonToken;
        } else if (i == 91) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            JsonToken jsonToken2 = JsonToken.START_ARRAY;
            this._currToken = jsonToken2;
            return jsonToken2;
        } else if (i == 102) {
            _matchToken("false", 1);
            JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else if (i == 110) {
            _matchToken(JsonReaderKt.NULL, 1);
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this._currToken = jsonToken4;
            return jsonToken4;
        } else if (i == 116) {
            _matchToken("true", 1);
            JsonToken jsonToken5 = JsonToken.VALUE_TRUE;
            this._currToken = jsonToken5;
            return jsonToken5;
        } else if (i == 123) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            JsonToken jsonToken6 = JsonToken.START_OBJECT;
            this._currToken = jsonToken6;
            return jsonToken6;
        } else {
            switch (i) {
                case 44:
                    if (!this._parsingContext.inRoot() && (this._features & FEAT_MASK_ALLOW_MISSING) != 0) {
                        this._inputPtr--;
                        JsonToken jsonToken7 = JsonToken.VALUE_NULL;
                        this._currToken = jsonToken7;
                        return jsonToken7;
                    }
                    break;
                case 45:
                    JsonToken _parseNegNumber = _parseNegNumber();
                    this._currToken = _parseNegNumber;
                    return _parseNegNumber;
                case 46:
                    JsonToken _parseFloatThatStartsWithPeriod = _parseFloatThatStartsWithPeriod();
                    this._currToken = _parseFloatThatStartsWithPeriod;
                    return _parseFloatThatStartsWithPeriod;
                default:
                    switch (i) {
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                            JsonToken _parsePosNumber = _parsePosNumber(i);
                            this._currToken = _parsePosNumber;
                            return _parsePosNumber;
                    }
            }
            JsonToken _handleOddValue = _handleOddValue(i);
            this._currToken = _handleOddValue;
            return _handleOddValue;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008a, code lost:
        if (r16 == 69) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.fasterxml.jackson.core.JsonToken _parseFloat(int r7, int r8, int r9, boolean r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._parseFloat(int, int, int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private String _parseName2(int i, int i2, int i3) throws IOException {
        this._textBuffer.resetWithShared(this._inputBuffer, i, this._inputPtr - i);
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            int i4 = currentSegmentSize;
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            char[] cArr = this._inputBuffer;
            int i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            char c = cArr[i5];
            char c2 = c;
            if (c <= '\\') {
                if (c == '\\') {
                    c2 = _decodeEscaped();
                } else {
                    c2 = c;
                    if (c <= i3) {
                        if (c == i3) {
                            this._textBuffer.setCurrentLength(i4);
                            TextBuffer textBuffer = this._textBuffer;
                            return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), i2);
                        }
                        c2 = c;
                        if (c < ' ') {
                            _throwUnquotedSpace(c, "name");
                            c2 = c;
                        }
                    }
                }
            }
            i2 = (i2 * 33) + c2;
            int i6 = i4 + 1;
            currentSegment[i4] = c2;
            if (i6 >= currentSegment.length) {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            } else {
                currentSegmentSize = i6;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03a7  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x0305 -> B:84:0x030f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.fasterxml.jackson.core.JsonToken _parseNumber2(boolean r7, int r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1023
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._parseNumber2(boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private final int _skipAfterComma2() throws IOException {
        char c;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.typeDesc() + " entries");
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            c = cArr[i];
            if (c > ' ') {
                if (c == '/') {
                    _skipComment();
                } else if (c != '#' || !_skipYAMLComment()) {
                    break;
                }
            } else if (c < ' ') {
                if (c == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == '\r') {
                    _skipCR();
                } else if (c != '\t') {
                    _throwInvalidSpace(c);
                }
            }
        }
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
        _reportInvalidEOF(" in a comment", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _skipCComment() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = r4
            int r0 = r0._inputPtr
            r1 = r4
            int r1 = r1._inputEnd
            if (r0 < r1) goto L12
            r0 = r4
            boolean r0 = r0._loadMore()
            if (r0 == 0) goto L48
        L12:
            r0 = r4
            char[] r0 = r0._inputBuffer
            r5 = r0
            r0 = r4
            int r0 = r0._inputPtr
            r6 = r0
            r0 = r4
            r1 = r6
            r2 = 1
            int r1 = r1 + r2
            r0._inputPtr = r1
            r0 = r5
            r1 = r6
            char r0 = r0[r1]
            r6 = r0
            r0 = r6
            r1 = 42
            if (r0 > r1) goto L0
            r0 = r6
            r1 = 42
            if (r0 != r1) goto L6a
            r0 = r4
            int r0 = r0._inputPtr
            r1 = r4
            int r1 = r1._inputEnd
            if (r0 < r1) goto L51
            r0 = r4
            boolean r0 = r0._loadMore()
            if (r0 == 0) goto L48
            goto L51
        L48:
            r0 = r4
            java.lang.String r1 = " in a comment"
            r2 = 0
            r0._reportInvalidEOF(r1, r2)
            return
        L51:
            r0 = r4
            char[] r0 = r0._inputBuffer
            r1 = r4
            int r1 = r1._inputPtr
            char r0 = r0[r1]
            r1 = 47
            if (r0 != r1) goto L0
            r0 = r4
            r1 = r4
            int r1 = r1._inputPtr
            r2 = 1
            int r1 = r1 + r2
            r0._inputPtr = r1
            return
        L6a:
            r0 = r6
            r1 = 32
            if (r0 >= r1) goto L0
            r0 = r6
            r1 = 10
            if (r0 != r1) goto L8b
            r0 = r4
            r1 = r4
            int r1 = r1._currInputRow
            r2 = 1
            int r1 = r1 + r2
            r0._currInputRow = r1
            r0 = r4
            r1 = r4
            int r1 = r1._inputPtr
            r0._currInputRowStart = r1
            goto L0
        L8b:
            r0 = r6
            r1 = 13
            if (r0 != r1) goto L98
            r0 = r4
            r0._skipCR()
            goto L0
        L98:
            r0 = r6
            r1 = 9
            if (r0 == r1) goto L0
            r0 = r4
            r1 = r6
            r0._throwInvalidSpace(r1)
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._skipCComment():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b8, code lost:
        if (r0 == '\t') goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int _skipColon() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._skipColon():int");
    }

    private final int _skipColon2(boolean z) throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" within/between " + this._parsingContext.typeDesc() + " entries", null);
                return -1;
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                if (c == '/') {
                    _skipComment();
                } else if (c != '#' || !_skipYAMLComment()) {
                    if (z) {
                        return c;
                    }
                    if (c != ':') {
                        _reportUnexpectedChar(c, "was expecting a colon to separate field name and value");
                    }
                    z = true;
                }
            } else if (c < ' ') {
                if (c == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == '\r') {
                    _skipCR();
                } else if (c != '\t') {
                    _throwInvalidSpace(c);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        if (r0 == '\t') goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0093, code lost:
        if (r0 == '\t') goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int _skipColonFast(int r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._skipColonFast(int):int");
    }

    private final int _skipComma(int i) throws IOException {
        if (i != 44) {
            _reportUnexpectedChar(i, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
        }
        while (this._inputPtr < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            char c = cArr[i2];
            if (c > ' ') {
                if (c != '/' && c != '#') {
                    return c;
                }
                this._inputPtr--;
                return _skipAfterComma2();
            } else if (c < ' ') {
                if (c == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == '\r') {
                    _skipCR();
                } else if (c != '\t') {
                    _throwInvalidSpace(c);
                }
            }
        }
        return _skipAfterComma2();
    }

    private void _skipComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_JAVA_COMMENTS) == 0) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in a comment", null);
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        char c = cArr[i];
        if (c == '/') {
            _skipLine();
        } else if (c == '*') {
            _skipCComment();
        } else {
            _reportUnexpectedChar(c, "was expecting either '*' or '/' for a comment");
        }
    }

    private void _skipLine() throws IOException {
        while (true) {
            if (this._inputPtr < this._inputEnd || _loadMore()) {
                char[] cArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                char c = cArr[i];
                if (c < ' ') {
                    if (c == '\n') {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                        return;
                    } else if (c == '\r') {
                        _skipCR();
                        return;
                    } else if (c != '\t') {
                        _throwInvalidSpace(c);
                    }
                }
            } else {
                return;
            }
        }
    }

    private final int _skipWSOrEnd() throws IOException {
        if (this._inputPtr < this._inputEnd || _loadMore()) {
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                if (c != '/' && c != '#') {
                    return c;
                }
                this._inputPtr--;
                return _skipWSOrEnd2();
            }
            if (c != ' ') {
                if (c == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == '\r') {
                    _skipCR();
                } else if (c != '\t') {
                    _throwInvalidSpace(c);
                }
            }
            while (this._inputPtr < this._inputEnd) {
                char[] cArr2 = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                char c2 = cArr2[i2];
                if (c2 > ' ') {
                    if (c2 != '/' && c2 != '#') {
                        return c2;
                    }
                    this._inputPtr--;
                    return _skipWSOrEnd2();
                } else if (c2 != ' ') {
                    if (c2 == '\n') {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (c2 == '\r') {
                        _skipCR();
                    } else if (c2 != '\t') {
                        _throwInvalidSpace(c2);
                    }
                }
            }
            return _skipWSOrEnd2();
        }
        return _eofAsNextChar();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int _skipWSOrEnd2() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = r4
            int r0 = r0._inputPtr
            r1 = r4
            int r1 = r1._inputEnd
            if (r0 < r1) goto L17
            r0 = r4
            boolean r0 = r0._loadMore()
            if (r0 != 0) goto L17
            r0 = r4
            int r0 = r0._eofAsNextChar()
            return r0
        L17:
            r0 = r4
            char[] r0 = r0._inputBuffer
            r5 = r0
            r0 = r4
            int r0 = r0._inputPtr
            r6 = r0
            r0 = r4
            r1 = r6
            r2 = 1
            int r1 = r1 + r2
            r0._inputPtr = r1
            r0 = r5
            r1 = r6
            char r0 = r0[r1]
            r6 = r0
            r0 = r6
            r1 = 32
            if (r0 <= r1) goto L4e
            r0 = r6
            r1 = 47
            if (r0 != r1) goto L3f
            r0 = r4
            r0._skipComment()
            goto L0
        L3f:
            r0 = r6
            r1 = 35
            if (r0 != r1) goto L4c
            r0 = r4
            boolean r0 = r0._skipYAMLComment()
            if (r0 != 0) goto L0
        L4c:
            r0 = r6
            return r0
        L4e:
            r0 = r6
            r1 = 32
            if (r0 == r1) goto L0
            r0 = r6
            r1 = 10
            if (r0 != r1) goto L6f
            r0 = r4
            r1 = r4
            int r1 = r1._currInputRow
            r2 = 1
            int r1 = r1 + r2
            r0._currInputRow = r1
            r0 = r4
            r1 = r4
            int r1 = r1._inputPtr
            r0._currInputRowStart = r1
            goto L0
        L6f:
            r0 = r6
            r1 = 13
            if (r0 != r1) goto L7c
            r0 = r4
            r0._skipCR()
            goto L0
        L7c:
            r0 = r6
            r1 = 9
            if (r0 == r1) goto L0
            r0 = r4
            r1 = r6
            r0._throwInvalidSpace(r1)
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._skipWSOrEnd2():int");
    }

    private boolean _skipYAMLComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) == 0) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final void _updateLocation() {
        int i = this._inputPtr;
        this._tokenInputTotal = this._currInputProcessed + i;
        this._tokenInputRow = this._currInputRow;
        this._tokenInputCol = i - this._currInputRowStart;
    }

    private final void _updateNameLocation() {
        int i = this._inputPtr;
        this._nameStartOffset = i;
        this._nameStartRow = this._currInputRow;
        this._nameStartCol = i - this._currInputRowStart;
    }

    private char _verifyNLZ2() throws IOException {
        if (this._inputPtr < this._inputEnd || _loadMore()) {
            char c = this._inputBuffer[this._inputPtr];
            if (c < '0' || c > '9') {
                return '0';
            }
            if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
                reportInvalidNumber("Leading zeroes not allowed");
            }
            this._inputPtr++;
            char c2 = c;
            if (c == '0') {
                while (true) {
                    if (this._inputPtr >= this._inputEnd) {
                        c2 = c;
                        if (!_loadMore()) {
                            break;
                        }
                    }
                    char c3 = this._inputBuffer[this._inputPtr];
                    if (c3 >= '0' && c3 <= '9') {
                        this._inputPtr++;
                        c = c3;
                        if (c3 != '0') {
                            c2 = c3;
                            break;
                        }
                    } else {
                        return '0';
                    }
                }
            }
            return c2;
        }
        return '0';
    }

    private final char _verifyNoLeadingZeroes() throws IOException {
        char c;
        if (this._inputPtr >= this._inputEnd || ((c = this._inputBuffer[this._inputPtr]) >= '0' && c <= '9')) {
            return _verifyNLZ2();
        }
        return '0';
    }

    private final void _verifyRootSpace(int i) throws IOException {
        this._inputPtr++;
        if (i != 9) {
            if (i == 10) {
                this._currInputRow++;
                this._currInputRowStart = this._inputPtr;
            } else if (i == 13) {
                _skipCR();
            } else if (i == 32) {
            } else {
                _reportMissingRootWS(i);
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public void _closeInput() throws IOException {
        if (this._reader != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._reader.close();
            }
            this._reader = null;
        }
    }

    protected byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                int decodeBase64Char = base64Variant.decodeBase64Char(c);
                int i2 = decodeBase64Char;
                if (decodeBase64Char < 0) {
                    if (c == '\"') {
                        return _getByteArrayBuilder.toByteArray();
                    }
                    i2 = _decodeBase64Escape(base64Variant, c, 0);
                    if (i2 < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                char[] cArr2 = this._inputBuffer;
                int i3 = this._inputPtr;
                this._inputPtr = i3 + 1;
                char c2 = cArr2[i3];
                int decodeBase64Char2 = base64Variant.decodeBase64Char(c2);
                int i4 = decodeBase64Char2;
                if (decodeBase64Char2 < 0) {
                    i4 = _decodeBase64Escape(base64Variant, c2, 1);
                }
                int i5 = (i2 << 6) | i4;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                char[] cArr3 = this._inputBuffer;
                int i6 = this._inputPtr;
                this._inputPtr = i6 + 1;
                char c3 = cArr3[i6];
                int decodeBase64Char3 = base64Variant.decodeBase64Char(c3);
                int i7 = decodeBase64Char3;
                if (decodeBase64Char3 < 0) {
                    int i8 = decodeBase64Char3;
                    if (decodeBase64Char3 != -2) {
                        if (c3 == '\"') {
                            _getByteArrayBuilder.append(i5 >> 4);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return _getByteArrayBuilder.toByteArray();
                        }
                        i8 = _decodeBase64Escape(base64Variant, c3, 2);
                    }
                    i7 = i8;
                    if (i8 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        char[] cArr4 = this._inputBuffer;
                        int i9 = this._inputPtr;
                        this._inputPtr = i9 + 1;
                        char c4 = cArr4[i9];
                        if (!base64Variant.usesPaddingChar(c4) && _decodeBase64Escape(base64Variant, c4, 3) != -2) {
                            throw reportInvalidBase64Char(base64Variant, c4, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        _getByteArrayBuilder.append(i5 >> 4);
                    }
                }
                int i10 = (i5 << 6) | i7;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                char[] cArr5 = this._inputBuffer;
                int i11 = this._inputPtr;
                this._inputPtr = i11 + 1;
                char c5 = cArr5[i11];
                int decodeBase64Char4 = base64Variant.decodeBase64Char(c5);
                int i12 = decodeBase64Char4;
                if (decodeBase64Char4 < 0) {
                    int i13 = decodeBase64Char4;
                    if (decodeBase64Char4 != -2) {
                        if (c5 == '\"') {
                            _getByteArrayBuilder.appendTwoBytes(i10 >> 2);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return _getByteArrayBuilder.toByteArray();
                        }
                        i13 = _decodeBase64Escape(base64Variant, c5, 3);
                    }
                    i12 = i13;
                    if (i13 == -2) {
                        _getByteArrayBuilder.appendTwoBytes(i10 >> 2);
                    }
                }
                _getByteArrayBuilder.appendThreeBytes((i10 << 6) | i12);
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public char _decodeEscaped() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        char c = cArr[i];
        char c2 = c;
        if (c != '\"') {
            c2 = c;
            if (c != '/') {
                c2 = c;
                if (c != '\\') {
                    if (c != 'b') {
                        if (c == 'f') {
                            return '\f';
                        }
                        if (c == 'n') {
                            return '\n';
                        }
                        if (c == 'r') {
                            return '\r';
                        }
                        if (c == 't') {
                            return '\t';
                        }
                        if (c != 'u') {
                            return _handleUnrecognizedCharacterEscape(c);
                        }
                        int i2 = 0;
                        for (int i3 = 0; i3 < 4; i3++) {
                            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                                _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
                            }
                            char[] cArr2 = this._inputBuffer;
                            int i4 = this._inputPtr;
                            this._inputPtr = i4 + 1;
                            char c3 = cArr2[i4];
                            int charToHex = CharTypes.charToHex(c3);
                            if (charToHex < 0) {
                                _reportUnexpectedChar(c3, "expected a hex-digit for character escape sequence");
                            }
                            i2 = (i2 << 4) | charToHex;
                        }
                        return (char) i2;
                    }
                    c2 = '\b';
                }
            }
        }
        return c2;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public final void _finishString() throws IOException {
        int i = this._inputPtr;
        int i2 = this._inputEnd;
        int i3 = i;
        if (i < i2) {
            int[] iArr = _icLatin1;
            int length = iArr.length;
            while (true) {
                char c = this._inputBuffer[i];
                if (c >= length || iArr[c] == 0) {
                    i3 = i + 1;
                    i = i3;
                    if (i3 >= i2) {
                        break;
                    }
                } else {
                    i3 = i;
                    if (c == '\"') {
                        TextBuffer textBuffer = this._textBuffer;
                        char[] cArr = this._inputBuffer;
                        int i4 = this._inputPtr;
                        textBuffer.resetWithShared(cArr, i4, i - i4);
                        this._inputPtr = i + 1;
                        return;
                    }
                }
            }
        }
        TextBuffer textBuffer2 = this._textBuffer;
        char[] cArr2 = this._inputBuffer;
        int i5 = this._inputPtr;
        textBuffer2.resetWithCopy(cArr2, i5, i3 - i5);
        this._inputPtr = i3;
        _finishString2();
    }

    protected void _finishString2() throws IOException {
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int[] iArr = _icLatin1;
        int length = iArr.length;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(": was expecting closing quote for a string value", JsonToken.VALUE_STRING);
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            char c2 = c;
            if (c < length) {
                c2 = c;
                if (iArr[c] != 0) {
                    if (c == '\"') {
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        return;
                    } else if (c == '\\') {
                        c2 = _decodeEscaped();
                    } else {
                        c2 = c;
                        if (c < ' ') {
                            _throwUnquotedSpace(c, "string value");
                            c2 = c;
                        }
                    }
                }
            }
            char[] cArr2 = currentSegment;
            int i2 = currentSegmentSize;
            if (currentSegmentSize >= currentSegment.length) {
                cArr2 = this._textBuffer.finishCurrentSegment();
                i2 = 0;
            }
            cArr2[i2] = c2;
            currentSegmentSize = i2 + 1;
            currentSegment = cArr2;
        }
    }

    protected final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        int m22663id = jsonToken.m22663id();
        return m22663id != 5 ? (m22663id == 6 || m22663id == 7 || m22663id == 8) ? this._textBuffer.contentsAsString() : jsonToken.asString() : this._parsingContext.getCurrentName();
    }

    protected JsonToken _handleApos() throws IOException {
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(": was expecting closing quote for a string value", JsonToken.VALUE_STRING);
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            char c2 = c;
            if (c <= '\\') {
                if (c == '\\') {
                    c2 = _decodeEscaped();
                } else {
                    c2 = c;
                    if (c <= '\'') {
                        if (c == '\'') {
                            this._textBuffer.setCurrentLength(currentSegmentSize);
                            return JsonToken.VALUE_STRING;
                        }
                        c2 = c;
                        if (c < ' ') {
                            _throwUnquotedSpace(c, "string value");
                            c2 = c;
                        }
                    }
                }
            }
            char[] cArr2 = emptyAndGetCurrentSegment;
            int i2 = currentSegmentSize;
            if (currentSegmentSize >= emptyAndGetCurrentSegment.length) {
                cArr2 = this._textBuffer.finishCurrentSegment();
                i2 = 0;
            }
            cArr2[i2] = c2;
            currentSegmentSize = i2 + 1;
            emptyAndGetCurrentSegment = cArr2;
        }
    }

    protected JsonToken _handleInvalidNumberStart(int i, boolean z) throws IOException {
        char c = i;
        if (i == 73) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOFInValue(JsonToken.VALUE_NUMBER_INT);
            }
            char[] cArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            char c2 = cArr[i2];
            boolean z2 = true;
            if (c2 == 'N') {
                String str = z ? "-INF" : "+INF";
                _matchToken(str, 3);
                if ((this._features & FEAT_MASK_NON_NUM_NUMBERS) != 0) {
                    boolean z3 = z2;
                    if (!z) {
                        z3 = true;
                    }
                    return resetAsNaN(str, z3 ? 1.0d : 0.0d);
                }
                _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                c = c2;
            } else {
                c = c2;
                if (c2 == 'n') {
                    String str2 = z ? "-Infinity" : "+Infinity";
                    _matchToken(str2, 3);
                    if ((this._features & FEAT_MASK_NON_NUM_NUMBERS) != 0) {
                        boolean z4 = z2;
                        if (!z) {
                            z4 = true;
                        }
                        return resetAsNaN(str2, z4 ? 1.0d : 0.0d);
                    }
                    _reportError("Non-standard token '" + str2 + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    c = c2;
                }
            }
        }
        reportUnexpectedNumberChar(c, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    protected String _handleOddName(int i) throws IOException {
        int i2;
        if (i != 39 || (this._features & FEAT_MASK_ALLOW_SINGLE_QUOTES) == 0) {
            if ((this._features & FEAT_MASK_ALLOW_UNQUOTED_NAMES) == 0) {
                _reportUnexpectedChar(i, "was expecting double-quote to start field name");
            }
            int[] inputCodeLatin1JsNames = CharTypes.getInputCodeLatin1JsNames();
            int length = inputCodeLatin1JsNames.length;
            if (!(i < length ? inputCodeLatin1JsNames[i] == 0 : Character.isJavaIdentifierPart((char) i))) {
                _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
            }
            int i3 = this._inputPtr;
            int i4 = this._hashSeed;
            int i5 = this._inputEnd;
            int i6 = i4;
            int i7 = i3;
            if (i3 < i5) {
                int i8 = i3;
                do {
                    char c = this._inputBuffer[i8];
                    if (c < length) {
                        if (inputCodeLatin1JsNames[c] != 0) {
                            int i9 = this._inputPtr - 1;
                            this._inputPtr = i8;
                            return this._symbols.findSymbol(this._inputBuffer, i9, i8 - i9, i4);
                        }
                    } else if (!Character.isJavaIdentifierPart(c)) {
                        int i10 = this._inputPtr - 1;
                        this._inputPtr = i8;
                        return this._symbols.findSymbol(this._inputBuffer, i10, i8 - i10, i4);
                    }
                    i6 = (i4 * 33) + c;
                    i2 = i8 + 1;
                    i4 = i6;
                    i8 = i2;
                } while (i2 < i5);
                i7 = i2;
            }
            int i11 = this._inputPtr;
            this._inputPtr = i7;
            return _handleOddName2(i11 - 1, i6, inputCodeLatin1JsNames);
        }
        return _parseAposName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0021, code lost:
        if (r6 != 44) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
        if (r5._parsingContext.inArray() != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006b, code lost:
        if (r5._parsingContext.inRoot() != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0076, code lost:
        if ((r5._features & com.fasterxml.jackson.core.json.ReaderBasedJsonParser.FEAT_MASK_ALLOW_MISSING) == 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
        r5._inputPtr--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_NULL;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _handleOddValue(int r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._handleOddValue(int):com.fasterxml.jackson.core.JsonToken");
    }

    protected boolean _isNextTokenNameMaybe(int i, String str) throws IOException {
        JsonToken jsonToken;
        String _parseName = i == 34 ? _parseName() : _handleOddName(i);
        this._parsingContext.setCurrentName(_parseName);
        this._currToken = JsonToken.FIELD_NAME;
        int _skipColon = _skipColon();
        _updateLocation();
        if (_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return str.equals(_parseName);
        }
        if (_skipColon == 45) {
            jsonToken = _parseNegNumber();
        } else if (_skipColon == 46) {
            jsonToken = _parseFloatThatStartsWithPeriod();
        } else if (_skipColon == 91) {
            jsonToken = JsonToken.START_ARRAY;
        } else if (_skipColon == 102) {
            _matchFalse();
            jsonToken = JsonToken.VALUE_FALSE;
        } else if (_skipColon == 110) {
            _matchNull();
            jsonToken = JsonToken.VALUE_NULL;
        } else if (_skipColon == 116) {
            _matchTrue();
            jsonToken = JsonToken.VALUE_TRUE;
        } else if (_skipColon != 123) {
            switch (_skipColon) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    jsonToken = _parsePosNumber(_skipColon);
                    break;
                default:
                    jsonToken = _handleOddValue(_skipColon);
                    break;
            }
        } else {
            jsonToken = JsonToken.START_OBJECT;
        }
        this._nextToken = jsonToken;
        return str.equals(_parseName);
    }

    protected boolean _loadMore() throws IOException {
        Reader reader = this._reader;
        if (reader != null) {
            char[] cArr = this._inputBuffer;
            int read = reader.read(cArr, 0, cArr.length);
            if (read <= 0) {
                _closeInput();
                if (read != 0) {
                    return false;
                }
                throw new IOException("Reader returned 0 characters when trying to read " + this._inputEnd);
            }
            int i = this._inputEnd;
            long j = i;
            this._currInputProcessed += j;
            this._currInputRowStart -= i;
            this._nameStartOffset -= j;
            this._inputPtr = 0;
            this._inputEnd = read;
            return true;
        }
        return false;
    }

    protected void _loadMoreGuaranteed() throws IOException {
        if (!_loadMore()) {
            _reportInvalidEOF();
        }
    }

    protected final void _matchToken(String str, int i) throws IOException {
        int i2;
        int length = str.length();
        int i3 = i;
        if (this._inputPtr + length >= this._inputEnd) {
            _matchToken2(str, i);
            return;
        }
        do {
            if (this._inputBuffer[this._inputPtr] != str.charAt(i3)) {
                _reportInvalidToken(str.substring(0, i3));
            }
            this._inputPtr++;
            i2 = i3 + 1;
            i3 = i2;
        } while (i2 < length);
        char c = this._inputBuffer[this._inputPtr];
        if (c < '0' || c == ']' || c == '}') {
            return;
        }
        _checkMatchEnd(str, i2, c);
    }

    protected String _parseAposName() throws IOException {
        int i = this._inputPtr;
        int i2 = this._hashSeed;
        int i3 = this._inputEnd;
        int i4 = i;
        int i5 = i2;
        if (i < i3) {
            int[] iArr = _icLatin1;
            int length = iArr.length;
            do {
                char c = this._inputBuffer[i];
                if (c == '\'') {
                    int i6 = this._inputPtr;
                    this._inputPtr = i + 1;
                    return this._symbols.findSymbol(this._inputBuffer, i6, i - i6, i2);
                }
                if (c < length) {
                    i4 = i;
                    i5 = i2;
                    if (iArr[c] != 0) {
                        break;
                    }
                }
                i5 = (i2 * 33) + c;
                i4 = i + 1;
                i = i4;
                i2 = i5;
            } while (i4 < i3);
        }
        int i7 = this._inputPtr;
        this._inputPtr = i4;
        return _parseName2(i7, i5, 39);
    }

    protected final JsonToken _parseFloatThatStartsWithPeriod() throws IOException {
        return !isEnabled(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature()) ? _handleOddValue(46) : _parseFloat(46, this._inputPtr - 1, this._inputPtr, false, 0);
    }

    protected final String _parseName() throws IOException {
        int i = this._inputPtr;
        int i2 = this._hashSeed;
        int[] iArr = _icLatin1;
        while (true) {
            if (i >= this._inputEnd) {
                break;
            }
            char c = this._inputBuffer[i];
            if (c >= iArr.length || iArr[c] == 0) {
                i2 = (i2 * 33) + c;
                i++;
            } else if (c == '\"') {
                int i3 = this._inputPtr;
                this._inputPtr = i + 1;
                return this._symbols.findSymbol(this._inputBuffer, i3, i - i3, i2);
            }
        }
        int i4 = this._inputPtr;
        this._inputPtr = i;
        return _parseName2(i4, i2, 34);
    }

    protected final JsonToken _parseNegNumber() throws IOException {
        int i = this._inputPtr;
        int i2 = i - 1;
        int i3 = this._inputEnd;
        if (i >= i3) {
            return _parseNumber2(true, i2);
        }
        int i4 = i + 1;
        char c = this._inputBuffer[i];
        if (c > '9' || c < '0') {
            this._inputPtr = i4;
            return _handleInvalidNumberStart(c, true);
        } else if (c == '0') {
            return _parseNumber2(true, i2);
        } else {
            int i5 = 1;
            while (i4 < i3) {
                int i6 = i4 + 1;
                char c2 = this._inputBuffer[i4];
                if (c2 < '0' || c2 > '9') {
                    if (c2 == '.' || c2 == 'e' || c2 == 'E') {
                        this._inputPtr = i6;
                        return _parseFloat(c2, i2, i6, true, i5);
                    }
                    int i7 = i6 - 1;
                    this._inputPtr = i7;
                    if (this._parsingContext.inRoot()) {
                        _verifyRootSpace(c2);
                    }
                    this._textBuffer.resetWithShared(this._inputBuffer, i2, i7 - i2);
                    return resetInt(true, i5);
                }
                i5++;
                i4 = i6;
            }
            return _parseNumber2(true, i2);
        }
    }

    protected final JsonToken _parsePosNumber(int i) throws IOException {
        int i2 = this._inputPtr;
        int i3 = i2 - 1;
        int i4 = this._inputEnd;
        if (i == 48) {
            return _parseNumber2(false, i3);
        }
        int i5 = 1;
        while (i2 < i4) {
            int i6 = i2 + 1;
            char c = this._inputBuffer[i2];
            if (c < '0' || c > '9') {
                if (c == '.' || c == 'e' || c == 'E') {
                    this._inputPtr = i6;
                    return _parseFloat(c, i3, i6, false, i5);
                }
                int i7 = i6 - 1;
                this._inputPtr = i7;
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(c);
                }
                this._textBuffer.resetWithShared(this._inputBuffer, i3, i7 - i3);
                return resetInt(false, i5);
            }
            i5++;
            i2 = i6;
        }
        this._inputPtr = i3;
        return _parseNumber2(false, i3);
    }

    protected int _readBinary(Base64Variant base64Variant, OutputStream outputStream, byte[] bArr) throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int length = bArr.length;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            char[] cArr = this._inputBuffer;
            int i8 = this._inputPtr;
            this._inputPtr = i8 + 1;
            char c = cArr[i8];
            if (c > ' ') {
                int decodeBase64Char = base64Variant.decodeBase64Char(c);
                int i9 = decodeBase64Char;
                if (decodeBase64Char < 0) {
                    i2 = i5;
                    i3 = i7;
                    if (c == '\"') {
                        break;
                    }
                    i9 = _decodeBase64Escape(base64Variant, c, 0);
                    if (i9 < 0) {
                    }
                }
                int i10 = i5;
                i = i7;
                if (i5 > length - 3) {
                    i = i7 + i5;
                    outputStream.write(bArr, 0, i5);
                    i10 = 0;
                }
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                char[] cArr2 = this._inputBuffer;
                int i11 = this._inputPtr;
                this._inputPtr = i11 + 1;
                char c2 = cArr2[i11];
                int decodeBase64Char2 = base64Variant.decodeBase64Char(c2);
                int i12 = decodeBase64Char2;
                if (decodeBase64Char2 < 0) {
                    i12 = _decodeBase64Escape(base64Variant, c2, 1);
                }
                int i13 = (i9 << 6) | i12;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                char[] cArr3 = this._inputBuffer;
                int i14 = this._inputPtr;
                this._inputPtr = i14 + 1;
                char c3 = cArr3[i14];
                int decodeBase64Char3 = base64Variant.decodeBase64Char(c3);
                int i15 = decodeBase64Char3;
                if (decodeBase64Char3 < 0) {
                    int i16 = decodeBase64Char3;
                    if (decodeBase64Char3 != -2) {
                        if (c3 == '\"') {
                            bArr[i10] = (byte) (i13 >> 4);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            i2 = i10 + 1;
                            i3 = i;
                        } else {
                            i16 = _decodeBase64Escape(base64Variant, c3, 2);
                        }
                    }
                    i15 = i16;
                    if (i16 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        char[] cArr4 = this._inputBuffer;
                        int i17 = this._inputPtr;
                        this._inputPtr = i17 + 1;
                        char c4 = cArr4[i17];
                        if (!base64Variant.usesPaddingChar(c4) && _decodeBase64Escape(base64Variant, c4, 3) != -2) {
                            throw reportInvalidBase64Char(base64Variant, c4, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        bArr[i10] = (byte) (i13 >> 4);
                        i5 = i10 + 1;
                        i6 = i;
                    }
                }
                int i18 = (i13 << 6) | i15;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                char[] cArr5 = this._inputBuffer;
                int i19 = this._inputPtr;
                this._inputPtr = i19 + 1;
                char c5 = cArr5[i19];
                int decodeBase64Char4 = base64Variant.decodeBase64Char(c5);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (c5 == '\"') {
                            int i20 = i18 >> 2;
                            int i21 = i10 + 1;
                            bArr[i10] = (byte) (i20 >> 8);
                            int i22 = i21 + 1;
                            bArr[i21] = (byte) i20;
                            i2 = i22;
                            i3 = i;
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                                i3 = i;
                                i2 = i22;
                            }
                        } else {
                            decodeBase64Char4 = _decodeBase64Escape(base64Variant, c5, 3);
                        }
                    }
                    i4 = decodeBase64Char4;
                    if (decodeBase64Char4 == -2) {
                        int i23 = i18 >> 2;
                        int i24 = i10 + 1;
                        bArr[i10] = (byte) (i23 >> 8);
                        i5 = i24 + 1;
                        bArr[i24] = (byte) i23;
                        i6 = i;
                    }
                } else {
                    i4 = decodeBase64Char4;
                }
                int i25 = (i18 << 6) | i4;
                int i26 = i10 + 1;
                bArr[i10] = (byte) (i25 >> 16);
                int i27 = i26 + 1;
                bArr[i26] = (byte) (i25 >> 8);
                bArr[i27] = (byte) i25;
                i5 = i27 + 1;
                i6 = i;
            }
            i = i7;
            i6 = i;
        }
        this._tokenIncomplete = false;
        int i28 = i3;
        if (i2 > 0) {
            i28 = i3 + i2;
            outputStream.write(bArr, 0, i2);
        }
        return i28;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public void _releaseBuffers() throws IOException {
        char[] cArr;
        super._releaseBuffers();
        this._symbols.release();
        if (!this._bufferRecyclable || (cArr = this._inputBuffer) == null) {
            return;
        }
        this._inputBuffer = null;
        this._ioContext.releaseTokenBuffer(cArr);
    }

    protected void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, _validJsonTokenList());
    }

    protected void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                break;
            }
            char c = this._inputBuffer[this._inputPtr];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            this._inputPtr++;
            sb.append(c);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        _reportError("Unrecognized token '%s': was expecting %s", sb, str2);
    }

    protected final void _skipCR() throws IOException {
        if ((this._inputPtr < this._inputEnd || _loadMore()) && this._inputBuffer[this._inputPtr] == '\n') {
            this._inputPtr++;
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    protected final void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int i = this._inputPtr;
        int i2 = this._inputEnd;
        char[] cArr = this._inputBuffer;
        while (true) {
            int i3 = i;
            int i4 = i2;
            if (i >= i2) {
                this._inputPtr = i;
                if (!_loadMore()) {
                    _reportInvalidEOF(": was expecting closing quote for a string value", JsonToken.VALUE_STRING);
                }
                i3 = this._inputPtr;
                i4 = this._inputEnd;
            }
            i = i3 + 1;
            char c = cArr[i3];
            if (c <= '\\') {
                if (c == '\\') {
                    this._inputPtr = i;
                    _decodeEscaped();
                    i = this._inputPtr;
                    i2 = this._inputEnd;
                } else if (c <= '\"') {
                    if (c == '\"') {
                        this._inputPtr = i;
                        return;
                    } else if (c < ' ') {
                        this._inputPtr = i;
                        _throwUnquotedSpace(c, "string value");
                    }
                }
            }
            i2 = i4;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void finishToken() throws IOException {
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        if (this._currToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null) {
            if (this._currToken != JsonToken.VALUE_STRING) {
                _reportError("Current token (" + this._currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
            }
            if (this._tokenIncomplete) {
                try {
                    this._binaryValue = _decodeBase64(base64Variant);
                    this._tokenIncomplete = false;
                } catch (IllegalArgumentException e) {
                    throw _constructError("Failed to decode VALUE_STRING as base64 (" + base64Variant + "): " + e.getMessage());
                }
            } else if (this._binaryValue == null) {
                ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
                _decodeBase64(getText(), _getByteArrayBuilder, base64Variant);
                this._binaryValue = _getByteArrayBuilder.toByteArray();
            }
            return this._binaryValue;
        }
        return this._binaryValue;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        int i = this._inputPtr;
        int i2 = this._currInputRowStart;
        return new JsonLocation(_getSourceReference(), -1L, this._inputPtr + this._currInputProcessed, this._currInputRow, (i - i2) + 1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._reader;
    }

    @Deprecated
    protected char getNextChar(String str) throws IOException {
        return getNextChar(str, null);
    }

    protected char getNextChar(String str, JsonToken jsonToken) throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(str, jsonToken);
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        return cArr[i];
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JacksonFeatureSet<StreamReadCapability> getReadCapabilities() {
        return JSON_READ_CAPABILITIES;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getText(Writer writer) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsToWriter(writer);
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            String currentName = this._parsingContext.getCurrentName();
            writer.write(currentName);
            return currentName.length();
        } else if (jsonToken == null) {
            return 0;
        } else {
            if (jsonToken.isNumeric()) {
                return this._textBuffer.contentsToWriter(writer);
            }
            char[] asCharArray = jsonToken.asCharArray();
            writer.write(asCharArray);
            return asCharArray.length;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public final String getText() throws IOException {
        if (this._currToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsAsString();
        }
        return _getText2(this._currToken);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public final char[] getTextCharacters() throws IOException {
        if (this._currToken != null) {
            int m22663id = this._currToken.m22663id();
            if (m22663id != 5) {
                if (m22663id != 6) {
                    if (m22663id != 7 && m22663id != 8) {
                        return this._currToken.asCharArray();
                    }
                } else if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    _finishString();
                }
                return this._textBuffer.getTextBuffer();
            }
            if (!this._nameCopied) {
                String currentName = this._parsingContext.getCurrentName();
                int length = currentName.length();
                if (this._nameCopyBuffer == null) {
                    this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(length);
                } else if (this._nameCopyBuffer.length < length) {
                    this._nameCopyBuffer = new char[length];
                }
                currentName.getChars(0, length, this._nameCopyBuffer, 0);
                this._nameCopied = true;
            }
            return this._nameCopyBuffer;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public final int getTextLength() throws IOException {
        if (this._currToken != null) {
            int m22663id = this._currToken.m22663id();
            if (m22663id == 5) {
                return this._parsingContext.getCurrentName().length();
            }
            if (m22663id != 6) {
                if (m22663id != 7 && m22663id != 8) {
                    return this._currToken.asCharArray().length;
                }
            } else if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.size();
        }
        return 0;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public final int getTextOffset() throws IOException {
        if (this._currToken != null) {
            int m22663id = this._currToken.m22663id();
            if (m22663id != 6) {
                if (m22663id != 7 && m22663id != 8) {
                    return 0;
                }
            } else if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.getTextOffset();
        }
        return 0;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        if (this._currToken == JsonToken.FIELD_NAME) {
            return new JsonLocation(_getSourceReference(), -1L, this._currInputProcessed + (this._nameStartOffset - 1), this._nameStartRow, this._nameStartCol);
        }
        return new JsonLocation(_getSourceReference(), -1L, this._tokenInputTotal - 1, this._tokenInputRow, this._tokenInputCol);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public final String getValueAsString() throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(null);
        }
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.contentsAsString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public final String getValueAsString(String str) throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(str);
        }
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.contentsAsString();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public final Boolean nextBooleanValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            JsonToken nextToken = nextToken();
            if (nextToken == null) {
                return null;
            }
            int m22663id = nextToken.m22663id();
            if (m22663id == 9) {
                return Boolean.TRUE;
            }
            if (m22663id != 10) {
                return null;
            }
            return Boolean.FALSE;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (jsonToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            return null;
        } else if (jsonToken != JsonToken.START_OBJECT) {
            return null;
        } else {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if (r0 == 125) goto L25;
     */
    @Override // com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String nextFieldName() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser.nextFieldName():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
        if (r0 == 125) goto L25;
     */
    @Override // com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextFieldName(com.fasterxml.jackson.core.SerializableString r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser.nextFieldName(com.fasterxml.jackson.core.SerializableString):boolean");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public final int nextIntValue(int i) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
                i = getIntValue();
            }
            return i;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getIntValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.fasterxml.jackson.core.JsonParser
    public final long nextLongValue(long j) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            ?? r6 = j;
            if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
                r6 = getLongValue();
            }
            return r6;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getLongValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return j;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public final String nextTextValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            if (nextToken() != JsonToken.VALUE_STRING) {
                return null;
            }
            return getText();
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsAsString();
        } else if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            return null;
        } else if (jsonToken != JsonToken.START_OBJECT) {
            return null;
        } else {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0071, code lost:
        if (r0 == 125) goto L25;
     */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.core.JsonToken nextToken() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser.nextToken():com.fasterxml.jackson.core.JsonToken");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (!this._tokenIncomplete || this._currToken != JsonToken.VALUE_STRING) {
            byte[] binaryValue = getBinaryValue(base64Variant);
            outputStream.write(binaryValue);
            return binaryValue.length;
        }
        byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            return _readBinary(base64Variant, outputStream, allocBase64Buffer);
        } finally {
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int releaseBuffered(Writer writer) throws IOException {
        int i = this._inputEnd - this._inputPtr;
        if (i <= 0) {
            return 0;
        }
        int i2 = this._inputPtr;
        this._inputPtr += i;
        writer.write(this._inputBuffer, i2, i);
        return i;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }
}
