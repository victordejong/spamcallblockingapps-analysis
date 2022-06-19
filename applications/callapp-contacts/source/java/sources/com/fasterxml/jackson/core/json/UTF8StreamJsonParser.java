package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.p309io.CharTypes;
import com.fasterxml.jackson.core.p309io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.JacksonFeatureSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/json/UTF8StreamJsonParser.class */
public class UTF8StreamJsonParser extends ParserBase {
    static final byte BYTE_LF = 10;
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    protected int _nameStartCol;
    protected int _nameStartOffset;
    protected int _nameStartRow;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer;
    protected final ByteQuadsCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    private static final int FEAT_MASK_TRAILING_COMMA = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();
    private static final int FEAT_MASK_LEADING_ZEROS = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();
    private static final int FEAT_MASK_NON_NUM_NUMBERS = JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS.getMask();
    private static final int FEAT_MASK_ALLOW_MISSING = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();
    private static final int FEAT_MASK_ALLOW_SINGLE_QUOTES = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();
    private static final int FEAT_MASK_ALLOW_UNQUOTED_NAMES = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();
    private static final int FEAT_MASK_ALLOW_JAVA_COMMENTS = JsonParser.Feature.ALLOW_COMMENTS.getMask();
    private static final int FEAT_MASK_ALLOW_YAML_COMMENTS = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    public UTF8StreamJsonParser(IOContext iOContext, int i, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i2, int i3, int i4, boolean z) {
        super(iOContext, i);
        this._quadBuffer = new int[16];
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputBuffer = bArr;
        this._inputPtr = i2;
        this._inputEnd = i3;
        this._currInputRowStart = i2 - i4;
        this._currInputProcessed = (-i2) + i4;
        this._bufferRecyclable = z;
    }

    @Deprecated
    public UTF8StreamJsonParser(IOContext iOContext, int i, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i2, int i3, boolean z) {
        this(iOContext, i, inputStream, objectCodec, byteQuadsCanonicalizer, bArr, i2, i3, 0, z);
    }

    private final void _checkMatchEnd(String str, int i, int i2) throws IOException {
        if (Character.isJavaIdentifierPart((char) _decodeCharForError(i2))) {
            _reportInvalidToken(str.substring(0, i));
        }
    }

    private final void _closeArrayScope() throws JsonParseException {
        _updateLocation();
        if (!this._parsingContext.inArray()) {
            _reportMismatchedEndMarker(93, '}');
        }
        this._parsingContext = this._parsingContext.clearAndGetParent();
    }

    private final void _closeObjectScope() throws JsonParseException {
        _updateLocation();
        if (!this._parsingContext.inObject()) {
            _reportMismatchedEndMarker(JsonReaderKt.END_OBJ, ']');
        }
        this._parsingContext = this._parsingContext.clearAndGetParent();
    }

    private final JsonToken _closeScope(int i) throws JsonParseException {
        if (i == 125) {
            _closeObjectScope();
            JsonToken jsonToken = JsonToken.END_OBJECT;
            this._currToken = jsonToken;
            return jsonToken;
        }
        _closeArrayScope();
        JsonToken jsonToken2 = JsonToken.END_ARRAY;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private final int _decodeUtf8_2(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        return ((i & 31) << 6) | (b & 63);
    }

    private final int _decodeUtf8_3(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
        return ((((i & 15) << 6) | (b & 63)) << 6) | (b2 & 63);
    }

    private final int _decodeUtf8_3fast(int i) throws IOException {
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
        return ((((i & 15) << 6) | (b & 63)) << 6) | (b2 & 63);
    }

    private final int _decodeUtf8_4(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b3 = bArr3[i4];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & 255, this._inputPtr);
        }
        return (((((((i & 7) << 6) | (b & 63)) << 6) | (b2 & 63)) << 6) | (b3 & 63)) - 65536;
    }

    private final void _finishString2(char[] cArr, int i) throws IOException {
        char c;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i2 = this._inputPtr;
            int i3 = i2;
            if (i2 >= this._inputEnd) {
                _loadMoreGuaranteed();
                i3 = this._inputPtr;
            }
            int i4 = i;
            if (i >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i4 = 0;
            }
            int min = Math.min(this._inputEnd, (cArr.length - i4) + i3);
            while (true) {
                if (i3 >= min) {
                    this._inputPtr = i3;
                    i = i4;
                    break;
                }
                int i5 = i3 + 1;
                int i6 = bArr[i3] & 255;
                if (iArr[i6] != 0) {
                    this._inputPtr = i5;
                    if (i6 == 34) {
                        this._textBuffer.setCurrentLength(i4);
                        return;
                    }
                    int i7 = iArr[i6];
                    if (i7 == 1) {
                        c = _decodeEscaped();
                    } else if (i7 == 2) {
                        c = _decodeUtf8_2(i6);
                    } else if (i7 == 3) {
                        c = this._inputEnd - this._inputPtr >= 2 ? _decodeUtf8_3fast(i6) : _decodeUtf8_3(i6);
                    } else if (i7 == 4) {
                        int _decodeUtf8_4 = _decodeUtf8_4(i6);
                        int i8 = i4 + 1;
                        cArr[i4] = (char) (55296 | (_decodeUtf8_4 >> 10));
                        if (i8 >= cArr.length) {
                            cArr = this._textBuffer.finishCurrentSegment();
                            i4 = 0;
                        } else {
                            i4 = i8;
                        }
                        c = (_decodeUtf8_4 & 1023) | GeneratorBase.SURR2_FIRST;
                    } else if (i6 < 32) {
                        _throwUnquotedSpace(i6, "string value");
                        c = i6;
                    } else {
                        _reportInvalidChar(i6);
                        c = i6;
                    }
                    if (i4 >= cArr.length) {
                        cArr = this._textBuffer.finishCurrentSegment();
                        i4 = 0;
                    }
                    cArr[i4] = (char) c;
                    i = i4 + 1;
                } else {
                    cArr[i4] = (char) i6;
                    i3 = i5;
                    i4++;
                }
            }
        }
    }

    private final boolean _isNextTokenNameMaybe(int i, SerializableString serializableString) throws IOException {
        JsonToken jsonToken;
        String _parseName = _parseName(i);
        this._parsingContext.setCurrentName(_parseName);
        boolean equals = _parseName.equals(serializableString.getValue());
        this._currToken = JsonToken.FIELD_NAME;
        int _skipColon = _skipColon();
        _updateLocation();
        if (_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return equals;
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
                    jsonToken = _handleUnexpectedValue(_skipColon);
                    break;
            }
        } else {
            jsonToken = JsonToken.START_OBJECT;
        }
        this._nextToken = jsonToken;
        return equals;
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
            _matchFalse();
            this._nextToken = JsonToken.VALUE_FALSE;
        } else if (i == 110) {
            _matchNull();
            this._nextToken = JsonToken.VALUE_NULL;
        } else if (i == 116) {
            _matchTrue();
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
                    this._nextToken = _handleUnexpectedValue(i);
                    return;
            }
        }
    }

    private final void _matchToken2(String str, int i) throws IOException {
        int i2;
        int i3;
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !_loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i2 = i + 1;
            i = i2;
        } while (i2 < length);
        if ((this._inputPtr < this._inputEnd || _loadMore()) && (i3 = this._inputBuffer[this._inputPtr] & 255) >= 48 && i3 != 93 && i3 != 125) {
            _checkMatchEnd(str, i2, i3);
        }
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
        } else if (i == 45) {
            JsonToken _parseNegNumber = _parseNegNumber();
            this._currToken = _parseNegNumber;
            return _parseNegNumber;
        } else if (i == 46) {
            JsonToken _parseFloatThatStartsWithPeriod = _parseFloatThatStartsWithPeriod();
            this._currToken = _parseFloatThatStartsWithPeriod;
            return _parseFloatThatStartsWithPeriod;
        } else if (i == 91) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            JsonToken jsonToken2 = JsonToken.START_ARRAY;
            this._currToken = jsonToken2;
            return jsonToken2;
        } else if (i == 102) {
            _matchFalse();
            JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else if (i == 110) {
            _matchNull();
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this._currToken = jsonToken4;
            return jsonToken4;
        } else if (i == 116) {
            _matchTrue();
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
                default:
                    JsonToken _handleUnexpectedValue = _handleUnexpectedValue(i);
                    this._currToken = _handleUnexpectedValue;
                    return _handleUnexpectedValue;
            }
        }
    }

    private static final int _padLastQuad(int i, int i2) {
        return i2 == 4 ? i : i | ((-1) << (i2 << 3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0108, code lost:
        if (r19 == 69) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x016f, code lost:
        if (r0 == 43) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.fasterxml.jackson.core.JsonToken _parseFloat(char[] r7, int r8, int r9, boolean r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseFloat(char[], int, int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0085, code lost:
        if (r0 == 46) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008c, code lost:
        if (r0 == 101) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0093, code lost:
        if (r0 != 69) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0099, code lost:
        r7._inputPtr--;
        r7._textBuffer.setCurrentLength(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b2, code lost:
        if (r7._parsingContext.inRoot() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
        _verifyRootSpace(r7._inputBuffer[r7._inputPtr] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cd, code lost:
        return resetInt(r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d9, code lost:
        return _parseFloat(r8, r9, r0, r10, r11);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.fasterxml.jackson.core.JsonToken _parseNumber2(char[] r8, int r9, boolean r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseNumber2(char[], int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private final void _skipCComment() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                break;
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            int i3 = inputCodeComment[i2];
            if (i3 != 0) {
                if (i3 == 2) {
                    _skipUtf8_2();
                } else if (i3 == 3) {
                    _skipUtf8_3();
                } else if (i3 == 4) {
                    _skipUtf8_4(i2);
                } else if (i3 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 == 13) {
                    _skipCR();
                } else if (i3 == 42) {
                    if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                        break;
                    } else if (this._inputBuffer[this._inputPtr] == 47) {
                        this._inputPtr++;
                        return;
                    }
                } else {
                    _reportInvalidChar(i2);
                }
            }
        }
        _reportInvalidEOF(" in a comment", null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b8, code lost:
        if (r0 == 9) goto L38;
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
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._skipColon():int");
    }

    private final int _skipColon2(boolean z) throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" within/between " + this._parsingContext.typeDesc() + " entries", null);
                return -1;
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 > 32) {
                if (i2 == 47) {
                    _skipComment();
                } else if (i2 != 35 || !_skipYAMLComment()) {
                    if (z) {
                        return i2;
                    }
                    if (i2 != 58) {
                        _reportUnexpectedChar(i2, "was expecting a colon to separate field name and value");
                    }
                    z = true;
                }
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        if (r0 == 9) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0093, code lost:
        if (r0 == 9) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00db, code lost:
        if (r0 == 9) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int _skipColonFast(int r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._skipColonFast(int):int");
    }

    private final void _skipComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_JAVA_COMMENTS) == 0) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in a comment", null);
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & 255;
        if (i2 == 47) {
            _skipLine();
        } else if (i2 == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(i2, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipLine() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr < this._inputEnd || _loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                int i2 = bArr[i] & 255;
                int i3 = inputCodeComment[i2];
                if (i3 != 0) {
                    if (i3 == 2) {
                        _skipUtf8_2();
                    } else if (i3 == 3) {
                        _skipUtf8_3();
                    } else if (i3 == 4) {
                        _skipUtf8_4(i2);
                    } else if (i3 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                        return;
                    } else if (i3 == 13) {
                        _skipCR();
                        return;
                    } else if (i3 != 42 && i3 < 0) {
                        _reportInvalidChar(i2);
                    }
                }
            } else {
                return;
            }
        }
    }

    private final void _skipUtf8_2() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
    }

    private final void _skipUtf8_3() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b2 = bArr2[i2];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
    }

    private final void _skipUtf8_4(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b3 = bArr3[i4];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & 255, this._inputPtr);
        }
    }

    private final int _skipWS() throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 > 32) {
                if (i2 != 47 && i2 != 35) {
                    return i2;
                }
                this._inputPtr--;
                return _skipWS2();
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
        }
        return _skipWS2();
    }

    private final int _skipWS2() throws IOException {
        int i;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.typeDesc() + " entries");
            }
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            i = bArr[i2] & 255;
            if (i > 32) {
                if (i == 47) {
                    _skipComment();
                } else if (i != 35 || !_skipYAMLComment()) {
                    break;
                }
            } else if (i != 32) {
                if (i == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i == 13) {
                    _skipCR();
                } else if (i != 9) {
                    _throwInvalidSpace(i);
                }
            }
        }
        return i;
    }

    private final int _skipWSOrEnd() throws IOException {
        if (this._inputPtr < this._inputEnd || _loadMore()) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 > 32) {
                if (i2 != 47 && i2 != 35) {
                    return i2;
                }
                this._inputPtr--;
                return _skipWSOrEnd2();
            }
            if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
            while (this._inputPtr < this._inputEnd) {
                byte[] bArr2 = this._inputBuffer;
                int i3 = this._inputPtr;
                this._inputPtr = i3 + 1;
                int i4 = bArr2[i3] & 255;
                if (i4 > 32) {
                    if (i4 != 47 && i4 != 35) {
                        return i4;
                    }
                    this._inputPtr--;
                    return _skipWSOrEnd2();
                } else if (i4 != 32) {
                    if (i4 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (i4 == 13) {
                        _skipCR();
                    } else if (i4 != 9) {
                        _throwInvalidSpace(i4);
                    }
                }
            }
            return _skipWSOrEnd2();
        }
        return _eofAsNextChar();
    }

    private final int _skipWSOrEnd2() throws IOException {
        int i;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                return _eofAsNextChar();
            }
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            i = bArr[i2] & 255;
            if (i > 32) {
                if (i == 47) {
                    _skipComment();
                } else if (i != 35 || !_skipYAMLComment()) {
                    break;
                }
            } else if (i != 32) {
                if (i == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i == 13) {
                    _skipCR();
                } else if (i != 9) {
                    _throwInvalidSpace(i);
                }
            }
        }
        return i;
    }

    private final boolean _skipYAMLComment() throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) == 0) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final void _updateLocation() {
        this._tokenInputRow = this._currInputRow;
        int i = this._inputPtr;
        this._tokenInputTotal = this._currInputProcessed + i;
        this._tokenInputCol = i - this._currInputRowStart;
    }

    private final void _updateNameLocation() {
        this._nameStartRow = this._currInputRow;
        int i = this._inputPtr;
        this._nameStartOffset = i;
        this._nameStartCol = i - this._currInputRowStart;
    }

    private final int _verifyNoLeadingZeroes() throws IOException {
        int i;
        if ((this._inputPtr < this._inputEnd || _loadMore()) && (i = this._inputBuffer[this._inputPtr] & 255) >= 48 && i <= 57) {
            if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
                reportInvalidNumber("Leading zeroes not allowed");
            }
            this._inputPtr++;
            int i2 = i;
            if (i == 48) {
                i2 = i;
                while (true) {
                    if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                        break;
                    }
                    int i3 = this._inputBuffer[this._inputPtr] & 255;
                    if (i3 >= 48 && i3 <= 57) {
                        this._inputPtr++;
                        i2 = i3;
                        if (i3 != 48) {
                            i2 = i3;
                            break;
                        }
                    } else {
                        return 48;
                    }
                }
            }
            return i2;
        }
        return 48;
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

    /* JADX WARN: Removed duplicated region for block: B:24:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String addName(int[] r7, int r8, int r9) throws com.fasterxml.jackson.core.JsonParseException {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.addName(int[], int, int):java.lang.String");
    }

    private final String findName(int i, int i2) throws JsonParseException {
        int _padLastQuad = _padLastQuad(i, i2);
        String findName = this._symbols.findName(_padLastQuad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = _padLastQuad;
        return addName(iArr, 1, i2);
    }

    private final String findName(int i, int i2, int i3) throws JsonParseException {
        int _padLastQuad = _padLastQuad(i2, i3);
        String findName = this._symbols.findName(i, _padLastQuad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        iArr[1] = _padLastQuad;
        return addName(iArr, 2, i3);
    }

    private final String findName(int i, int i2, int i3, int i4) throws JsonParseException {
        int _padLastQuad = _padLastQuad(i3, i4);
        String findName = this._symbols.findName(i, i2, _padLastQuad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = _padLastQuad(_padLastQuad, i4);
        return addName(iArr, 3, i4);
    }

    private final String findName(int[] iArr, int i, int i2, int i3) throws JsonParseException {
        int[] iArr2 = iArr;
        if (i >= iArr.length) {
            iArr2 = growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr2;
        }
        int i4 = i + 1;
        iArr2[i] = _padLastQuad(i2, i3);
        String findName = this._symbols.findName(iArr2, i4);
        return findName == null ? addName(iArr2, i4, i3) : findName;
    }

    private int nextByte() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        return bArr[i] & 255;
    }

    private final String parseName(int i, int i2, int i3) throws IOException {
        return parseEscapedName(this._quadBuffer, 0, i, i2, i3);
    }

    private final String parseName(int i, int i2, int i3, int i4) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        return parseEscapedName(iArr, 1, i2, i3, i4);
    }

    private final String parseName(int i, int i2, int i3, int i4, int i5) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        iArr[1] = i2;
        return parseEscapedName(iArr, 2, i3, i4, i5);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public void _closeInput() throws IOException {
        if (this._inputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._inputStream.close();
            }
            this._inputStream = null;
        }
    }

    protected final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(i2);
                int i3 = decodeBase64Char;
                if (decodeBase64Char < 0) {
                    if (i2 == 34) {
                        return _getByteArrayBuilder.toByteArray();
                    }
                    i3 = _decodeBase64Escape(base64Variant, i2, 0);
                    if (i3 < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr2 = this._inputBuffer;
                int i4 = this._inputPtr;
                this._inputPtr = i4 + 1;
                int i5 = bArr2[i4] & 255;
                int decodeBase64Char2 = base64Variant.decodeBase64Char(i5);
                int i6 = decodeBase64Char2;
                if (decodeBase64Char2 < 0) {
                    i6 = _decodeBase64Escape(base64Variant, i5, 1);
                }
                int i7 = (i3 << 6) | i6;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i8 = this._inputPtr;
                this._inputPtr = i8 + 1;
                int i9 = bArr3[i8] & 255;
                int decodeBase64Char3 = base64Variant.decodeBase64Char(i9);
                int i10 = decodeBase64Char3;
                if (decodeBase64Char3 < 0) {
                    int i11 = decodeBase64Char3;
                    if (decodeBase64Char3 != -2) {
                        if (i9 == 34) {
                            _getByteArrayBuilder.append(i7 >> 4);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return _getByteArrayBuilder.toByteArray();
                        }
                        i11 = _decodeBase64Escape(base64Variant, i9, 2);
                    }
                    i10 = i11;
                    if (i11 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr4 = this._inputBuffer;
                        int i12 = this._inputPtr;
                        this._inputPtr = i12 + 1;
                        int i13 = bArr4[i12] & 255;
                        if (!base64Variant.usesPaddingChar(i13) && _decodeBase64Escape(base64Variant, i13, 3) != -2) {
                            throw reportInvalidBase64Char(base64Variant, i13, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        _getByteArrayBuilder.append(i7 >> 4);
                    }
                }
                int i14 = (i7 << 6) | i10;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr5 = this._inputBuffer;
                int i15 = this._inputPtr;
                this._inputPtr = i15 + 1;
                int i16 = bArr5[i15] & 255;
                int decodeBase64Char4 = base64Variant.decodeBase64Char(i16);
                int i17 = decodeBase64Char4;
                if (decodeBase64Char4 < 0) {
                    int i18 = decodeBase64Char4;
                    if (decodeBase64Char4 != -2) {
                        if (i16 == 34) {
                            _getByteArrayBuilder.appendTwoBytes(i14 >> 2);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            return _getByteArrayBuilder.toByteArray();
                        }
                        i18 = _decodeBase64Escape(base64Variant, i16, 3);
                    }
                    i17 = i18;
                    if (i18 == -2) {
                        _getByteArrayBuilder.appendTwoBytes(i14 >> 2);
                    }
                }
                _getByteArrayBuilder.appendThreeBytes((i14 << 6) | i17);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int _decodeCharForError(int r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._decodeCharForError(int):int");
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public char _decodeEscaped() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i];
        if (b == 34 || b == 47 || b == 92) {
            return (char) b;
        }
        if (b == 98) {
            return '\b';
        }
        if (b == 102) {
            return '\f';
        }
        if (b == 110) {
            return '\n';
        }
        if (b == 114) {
            return '\r';
        }
        if (b == 116) {
            return '\t';
        }
        if (b != 117) {
            return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(b));
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in character escape sequence", JsonToken.VALUE_STRING);
            }
            byte[] bArr2 = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            byte b2 = bArr2[i4];
            int charToHex = CharTypes.charToHex(b2);
            if (charToHex < 0) {
                _reportUnexpectedChar(b2 & 255, "expected a hex-digit for character escape sequence");
            }
            i2 = (i2 << 4) | charToHex;
        }
        return (char) i2;
    }

    protected String _finishAndReturnString() throws IOException {
        int i = this._inputPtr;
        int i2 = i;
        if (i >= this._inputEnd) {
            _loadMoreGuaranteed();
            i2 = this._inputPtr;
        }
        int i3 = 0;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i2);
        byte[] bArr = this._inputBuffer;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i4 = bArr[i2] & 255;
            if (iArr[i4] == 0) {
                i2++;
                emptyAndGetCurrentSegment[i3] = (char) i4;
                i3++;
            } else if (i4 == 34) {
                this._inputPtr = i2 + 1;
                return this._textBuffer.setCurrentAndReturn(i3);
            }
        }
        this._inputPtr = i2;
        _finishString2(emptyAndGetCurrentSegment, i3);
        return this._textBuffer.contentsAsString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public void _finishString() throws IOException {
        int i = this._inputPtr;
        int i2 = i;
        if (i >= this._inputEnd) {
            _loadMoreGuaranteed();
            i2 = this._inputPtr;
        }
        int i3 = 0;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i2);
        byte[] bArr = this._inputBuffer;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i4 = bArr[i2] & 255;
            if (iArr[i4] == 0) {
                i2++;
                emptyAndGetCurrentSegment[i3] = (char) i4;
                i3++;
            } else if (i4 == 34) {
                this._inputPtr = i2 + 1;
                this._textBuffer.setCurrentLength(i3);
                return;
            }
        }
        this._inputPtr = i2;
        _finishString2(emptyAndGetCurrentSegment, i3);
    }

    protected final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        int m22663id = jsonToken.m22663id();
        return m22663id != 5 ? (m22663id == 6 || m22663id == 7 || m22663id == 8) ? this._textBuffer.contentsAsString() : jsonToken.asString() : this._parsingContext.getCurrentName();
    }

    protected JsonToken _handleApos() throws IOException {
        char c;
        char[] cArr;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        int i = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                _loadMoreGuaranteed();
            }
            char[] cArr2 = emptyAndGetCurrentSegment;
            int i2 = i;
            if (i >= emptyAndGetCurrentSegment.length) {
                cArr2 = this._textBuffer.finishCurrentSegment();
                i2 = 0;
            }
            int i3 = this._inputEnd;
            int length = this._inputPtr + (cArr2.length - i2);
            int i4 = i2;
            int i5 = i3;
            if (length < i3) {
                i5 = length;
                i4 = i2;
            }
            while (true) {
                emptyAndGetCurrentSegment = cArr2;
                i = i4;
                if (this._inputPtr < i5) {
                    int i6 = this._inputPtr;
                    this._inputPtr = i6 + 1;
                    c = bArr[i6] & 255;
                    if (c == 39 || iArr[c] != 0) {
                        break;
                    }
                    cArr2[i4] = (char) c;
                    i4++;
                }
            }
            if (c == 39) {
                this._textBuffer.setCurrentLength(i4);
                return JsonToken.VALUE_STRING;
            }
            int i7 = iArr[c];
            if (i7 == 1) {
                c = _decodeEscaped();
                cArr = cArr2;
            } else if (i7 == 2) {
                c = _decodeUtf8_2(c);
                cArr = cArr2;
            } else if (i7 != 3) {
                if (i7 != 4) {
                    if (c < 32) {
                        _throwUnquotedSpace(c, "string value");
                    }
                    _reportInvalidChar(c);
                    cArr = cArr2;
                } else {
                    int _decodeUtf8_4 = _decodeUtf8_4(c);
                    int i8 = i4 + 1;
                    cArr2[i4] = (char) (55296 | (_decodeUtf8_4 >> 10));
                    if (i8 >= cArr2.length) {
                        cArr2 = this._textBuffer.finishCurrentSegment();
                        i4 = 0;
                    } else {
                        i4 = i8;
                    }
                    c = 56320 | (_decodeUtf8_4 & 1023);
                    cArr = cArr2;
                }
            } else if (this._inputEnd - this._inputPtr >= 2) {
                c = _decodeUtf8_3fast(c);
                cArr = cArr2;
            } else {
                c = _decodeUtf8_3(c);
                cArr = cArr2;
            }
            char[] cArr3 = cArr;
            int i9 = i4;
            if (i4 >= cArr.length) {
                cArr3 = this._textBuffer.finishCurrentSegment();
                i9 = 0;
            }
            cArr3[i9] = (char) c;
            i = i9 + 1;
            emptyAndGetCurrentSegment = cArr3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a3, code lost:
        reportUnexpectedNumberChar(r8, "expected digit (0-9) to follow minus sign, for valid numeric value");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _handleInvalidNumberStart(int r6, boolean r7) throws java.io.IOException {
        /*
            r5 = this;
        L0:
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 73
            if (r0 != r1) goto La3
            r0 = r5
            int r0 = r0._inputPtr
            r1 = r5
            int r1 = r1._inputEnd
            if (r0 < r1) goto L21
            r0 = r5
            boolean r0 = r0._loadMore()
            if (r0 != 0) goto L21
            r0 = r5
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_FLOAT
            r0._reportInvalidEOFInValue(r1)
        L21:
            r0 = r5
            byte[] r0 = r0._inputBuffer
            r9 = r0
            r0 = r5
            int r0 = r0._inputPtr
            r6 = r0
            r0 = r5
            r1 = r6
            r2 = 1
            int r1 = r1 + r2
            r0._inputPtr = r1
            r0 = r9
            r1 = r6
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            r1 = 78
            if (r0 != r1) goto L52
            r0 = r7
            if (r0 == 0) goto L4a
            java.lang.String r0 = "-INF"
            r9 = r0
            goto L6b
        L4a:
            java.lang.String r0 = "+INF"
            r9 = r0
            goto L6b
        L52:
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 110(0x6e, float:1.54E-43)
            if (r0 != r1) goto La3
            r0 = r7
            if (r0 == 0) goto L66
            java.lang.String r0 = "-Infinity"
            r9 = r0
            goto L6b
        L66:
            java.lang.String r0 = "+Infinity"
            r9 = r0
        L6b:
            r0 = r5
            r1 = r9
            r2 = 3
            r0._matchToken(r1, r2)
            r0 = r5
            int r0 = r0._features
            int r1 = com.fasterxml.jackson.core.json.UTF8StreamJsonParser.FEAT_MASK_NON_NUM_NUMBERS
            r0 = r0 & r1
            if (r0 == 0) goto L97
            r0 = r7
            if (r0 == 0) goto L89
            r0 = -4503599627370496(0xfff0000000000000, double:-Infinity)
            r10 = r0
            goto L8e
        L89:
            r0 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            r10 = r0
        L8e:
            r0 = r5
            r1 = r9
            r2 = r10
            com.fasterxml.jackson.core.JsonToken r0 = r0.resetAsNaN(r1, r2)
            return r0
        L97:
            r0 = r5
            java.lang.String r1 = "Non-standard token '%s': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r2 = r9
            r0._reportError(r1, r2)
            goto L0
        La3:
            r0 = r5
            r1 = r8
            java.lang.String r2 = "expected digit (0-9) to follow minus sign, for valid numeric value"
            r0.reportUnexpectedNumberChar(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleInvalidNumberStart(int, boolean):com.fasterxml.jackson.core.JsonToken");
    }

    protected String _handleOddName(int i) throws IOException {
        int i2;
        if (i != 39 || (this._features & FEAT_MASK_ALLOW_SINGLE_QUOTES) == 0) {
            if ((this._features & FEAT_MASK_ALLOW_UNQUOTED_NAMES) == 0) {
                _reportUnexpectedChar((char) _decodeCharForError(i), "was expecting double-quote to start field name");
            }
            int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
            if (inputCodeUtf8JsNames[i] != 0) {
                _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
            }
            int[] iArr = this._quadBuffer;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                if (i3 < 4) {
                    i |= i5 << 8;
                    i2 = i3 + 1;
                } else {
                    int[] iArr2 = iArr;
                    if (i4 >= iArr.length) {
                        iArr2 = growArrayBy(iArr, iArr.length);
                        this._quadBuffer = iArr2;
                    }
                    iArr2[i4] = i5;
                    i4++;
                    i2 = 1;
                    iArr = iArr2;
                }
                if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                    _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
                }
                int i6 = this._inputBuffer[this._inputPtr] & 255;
                if (inputCodeUtf8JsNames[i6] != 0) {
                    break;
                }
                this._inputPtr++;
                i3 = i2;
                i5 = i;
                i = i6;
            }
            int[] iArr3 = iArr;
            int i7 = i4;
            if (i2 > 0) {
                iArr3 = iArr;
                if (i4 >= iArr.length) {
                    iArr3 = growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr3;
                }
                iArr3[i4] = i;
                i7 = i4 + 1;
            }
            String findName = this._symbols.findName(iArr3, i7);
            String str = findName;
            if (findName == null) {
                str = addName(iArr3, i7, i2);
            }
            return str;
        }
        return _parseAposName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        if (r6 != 44) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006b, code lost:
        if (r5._parsingContext.inArray() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0075, code lost:
        if (r5._parsingContext.inRoot() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
        if ((r5._features & com.fasterxml.jackson.core.json.UTF8StreamJsonParser.FEAT_MASK_ALLOW_MISSING) == 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0083, code lost:
        r5._inputPtr--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_NULL;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _handleUnexpectedValue(int r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleUnexpectedValue(int):com.fasterxml.jackson.core.JsonToken");
    }

    protected final boolean _loadMore() throws IOException {
        byte[] bArr;
        int length;
        InputStream inputStream = this._inputStream;
        if (inputStream == null || (length = (bArr = this._inputBuffer).length) == 0) {
            return false;
        }
        int read = inputStream.read(bArr, 0, length);
        if (read > 0) {
            int i = this._inputEnd;
            this._currInputProcessed += i;
            this._currInputRowStart -= i;
            this._nameStartOffset -= i;
            this._inputPtr = 0;
            this._inputEnd = read;
            return true;
        }
        _closeInput();
        if (read != 0) {
            return false;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + this._inputBuffer.length + " bytes");
    }

    protected void _loadMoreGuaranteed() throws IOException {
        if (!_loadMore()) {
            _reportInvalidEOF();
        }
    }

    protected final void _matchFalse() throws IOException {
        int i;
        int i2 = this._inputPtr;
        if (i2 + 4 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i3 = i2 + 1;
            if (bArr[i2] == 97) {
                int i4 = i3 + 1;
                if (bArr[i3] == 108) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 115) {
                        int i6 = i5 + 1;
                        if (bArr[i5] == 101 && ((i = bArr[i6] & 255) < 48 || i == 93 || i == 125)) {
                            this._inputPtr = i6;
                            return;
                        }
                    }
                }
            }
        }
        _matchToken2("false", 1);
    }

    protected final void _matchNull() throws IOException {
        int i;
        int i2 = this._inputPtr;
        if (i2 + 3 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i3 = i2 + 1;
            if (bArr[i2] == 117) {
                int i4 = i3 + 1;
                if (bArr[i3] == 108) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 108 && ((i = bArr[i5] & 255) < 48 || i == 93 || i == 125)) {
                        this._inputPtr = i5;
                        return;
                    }
                }
            }
        }
        _matchToken2(JsonReaderKt.NULL, 1);
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
        int i4 = this._inputBuffer[this._inputPtr] & 255;
        if (i4 < 48 || i4 == 93 || i4 == 125) {
            return;
        }
        _checkMatchEnd(str, i2, i4);
    }

    protected final void _matchTrue() throws IOException {
        int i;
        int i2 = this._inputPtr;
        if (i2 + 3 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i3 = i2 + 1;
            if (bArr[i2] == 114) {
                int i4 = i3 + 1;
                if (bArr[i3] == 117) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 101 && ((i = bArr[i5] & 255) < 48 || i == 93 || i == 125)) {
                        this._inputPtr = i5;
                        return;
                    }
                }
            }
        }
        _matchToken2("true", 1);
    }

    protected String _parseAposName() throws IOException {
        char c;
        int i;
        int i2;
        int[] iArr;
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(": was expecting closing ''' for field name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        int i4 = bArr[i3] & 255;
        if (i4 == 39) {
            return "";
        }
        int[] iArr2 = this._quadBuffer;
        int[] iArr3 = _icLatin1;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i4 != 39) {
            int i8 = i4;
            int[] iArr4 = iArr2;
            int i9 = i5;
            int i10 = i6;
            int i11 = i7;
            if (iArr3[i4] != 0) {
                i8 = i4;
                iArr4 = iArr2;
                i9 = i5;
                i10 = i6;
                i11 = i7;
                if (i4 != 34) {
                    if (i4 != 92) {
                        _throwUnquotedSpace(i4, "name");
                        c = i4;
                    } else {
                        c = _decodeEscaped();
                    }
                    i8 = c;
                    iArr4 = iArr2;
                    i9 = i5;
                    i10 = i6;
                    i11 = i7;
                    if (c > 127) {
                        int[] iArr5 = iArr2;
                        int i12 = i5;
                        int i13 = i6;
                        int i14 = i7;
                        if (i5 >= 4) {
                            iArr5 = iArr2;
                            if (i6 >= iArr2.length) {
                                iArr5 = growArrayBy(iArr2, iArr2.length);
                                this._quadBuffer = iArr5;
                            }
                            iArr5[i6] = i7;
                            i13 = i6 + 1;
                            i12 = 0;
                            i14 = 0;
                        }
                        if (c < 2048) {
                            i = (i14 << 8) | (c >> 6) | 192;
                            i2 = i12 + 1;
                            iArr = iArr5;
                        } else {
                            int i15 = (i14 << 8) | (c >> 12) | 224;
                            int i16 = i12 + 1;
                            iArr = iArr5;
                            int i17 = i16;
                            int i18 = i13;
                            int i19 = i15;
                            if (i16 >= 4) {
                                iArr = iArr5;
                                if (i13 >= iArr5.length) {
                                    iArr = growArrayBy(iArr5, iArr5.length);
                                    this._quadBuffer = iArr;
                                }
                                iArr[i13] = i15;
                                i18 = i13 + 1;
                                i17 = 0;
                                i19 = 0;
                            }
                            i = (i19 << 8) | ((c >> 6) & 63) | 128;
                            i13 = i18;
                            i2 = i17 + 1;
                        }
                        i8 = (c & 63) | 128;
                        i11 = i;
                        i10 = i13;
                        i9 = i2;
                        iArr4 = iArr;
                    }
                }
            }
            if (i9 < 4) {
                i5 = i9 + 1;
                i7 = i8 | (i11 << 8);
                iArr2 = iArr4;
                i6 = i10;
            } else {
                iArr2 = iArr4;
                if (i10 >= iArr4.length) {
                    iArr2 = growArrayBy(iArr4, iArr4.length);
                    this._quadBuffer = iArr2;
                }
                iArr2[i10] = i11;
                i7 = i8;
                i6 = i10 + 1;
                i5 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr2 = this._inputBuffer;
            int i20 = this._inputPtr;
            this._inputPtr = i20 + 1;
            i4 = bArr2[i20] & 255;
        }
        int[] iArr6 = iArr2;
        int i21 = i6;
        if (i5 > 0) {
            iArr6 = iArr2;
            if (i6 >= iArr2.length) {
                iArr6 = growArrayBy(iArr2, iArr2.length);
                this._quadBuffer = iArr6;
            }
            iArr6[i6] = _padLastQuad(i7, i5);
            i21 = i6 + 1;
        }
        String findName = this._symbols.findName(iArr6, i21);
        String str = findName;
        if (findName == null) {
            str = addName(iArr6, i21, i5);
        }
        return str;
    }

    protected final JsonToken _parseFloatThatStartsWithPeriod() throws IOException {
        return !isEnabled(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature()) ? _handleUnexpectedValue(46) : _parseFloat(this._textBuffer.emptyAndGetCurrentSegment(), 0, 46, false, 0);
    }

    protected final String _parseName(int i) throws IOException {
        if (i != 34) {
            return _handleOddName(i);
        }
        if (this._inputPtr + 13 > this._inputEnd) {
            return slowParseName();
        }
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (iArr[i3] != 0) {
            return i3 == 34 ? "" : parseName(0, i3, 0);
        }
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        int i5 = bArr[i4] & 255;
        if (iArr[i5] != 0) {
            return i5 == 34 ? findName(i3, 1) : parseName(i3, i5, 1);
        }
        int i6 = (i3 << 8) | i5;
        int i7 = this._inputPtr;
        this._inputPtr = i7 + 1;
        int i8 = bArr[i7] & 255;
        if (iArr[i8] != 0) {
            return i8 == 34 ? findName(i6, 2) : parseName(i6, i8, 2);
        }
        int i9 = (i6 << 8) | i8;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        int i11 = bArr[i10] & 255;
        if (iArr[i11] != 0) {
            return i11 == 34 ? findName(i9, 3) : parseName(i9, i11, 3);
        }
        int i12 = (i9 << 8) | i11;
        int i13 = this._inputPtr;
        this._inputPtr = i13 + 1;
        int i14 = bArr[i13] & 255;
        if (iArr[i14] != 0) {
            return i14 == 34 ? findName(i12, 4) : parseName(i12, i14, 4);
        }
        this._quad1 = i12;
        return parseMediumName(i14);
    }

    protected JsonToken _parseNegNumber() throws IOException {
        int i;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = (char) 45;
        if (this._inputPtr >= this._inputEnd) {
            _loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (i3 > 48) {
            i = i3;
            if (i3 > 57) {
                return _handleInvalidNumberStart(i3, true);
            }
        } else if (i3 != 48) {
            return _handleInvalidNumberStart(i3, true);
        } else {
            i = _verifyNoLeadingZeroes();
        }
        emptyAndGetCurrentSegment[1] = (char) i;
        int i4 = 2;
        int min = Math.min(this._inputEnd, (this._inputPtr + emptyAndGetCurrentSegment.length) - 2);
        int i5 = 1;
        while (this._inputPtr < min) {
            byte[] bArr2 = this._inputBuffer;
            int i6 = this._inputPtr;
            this._inputPtr = i6 + 1;
            int i7 = bArr2[i6] & 255;
            if (i7 < 48 || i7 > 57) {
                if (i7 == 46 || i7 == 101 || i7 == 69) {
                    return _parseFloat(emptyAndGetCurrentSegment, i4, i7, true, i5);
                }
                this._inputPtr--;
                this._textBuffer.setCurrentLength(i4);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i7);
                }
                return resetInt(true, i5);
            }
            i5++;
            emptyAndGetCurrentSegment[i4] = (char) i7;
            i4++;
        }
        return _parseNumber2(emptyAndGetCurrentSegment, i4, true, i5);
    }

    protected JsonToken _parsePosNumber(int i) throws IOException {
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i2 = i;
        if (i == 48) {
            i2 = _verifyNoLeadingZeroes();
        }
        emptyAndGetCurrentSegment[0] = (char) i2;
        int min = Math.min(this._inputEnd, (this._inputPtr + emptyAndGetCurrentSegment.length) - 1);
        int i3 = 1;
        int i4 = 1;
        while (this._inputPtr < min) {
            byte[] bArr = this._inputBuffer;
            int i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            int i6 = bArr[i5] & 255;
            if (i6 < 48 || i6 > 57) {
                if (i6 == 46 || i6 == 101 || i6 == 69) {
                    return _parseFloat(emptyAndGetCurrentSegment, i3, i6, false, i4);
                }
                this._inputPtr--;
                this._textBuffer.setCurrentLength(i3);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i6);
                }
                return resetInt(false, i4);
            }
            i4++;
            emptyAndGetCurrentSegment[i3] = (char) i6;
            i3++;
        }
        return _parseNumber2(emptyAndGetCurrentSegment, i3, false, i4);
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
            byte[] bArr2 = this._inputBuffer;
            int i8 = this._inputPtr;
            this._inputPtr = i8 + 1;
            int i9 = bArr2[i8] & 255;
            if (i9 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(i9);
                int i10 = decodeBase64Char;
                if (decodeBase64Char < 0) {
                    i2 = i5;
                    i3 = i7;
                    if (i9 == 34) {
                        break;
                    }
                    i10 = _decodeBase64Escape(base64Variant, i9, 0);
                    if (i10 < 0) {
                    }
                }
                int i11 = i5;
                i = i7;
                if (i5 > length - 3) {
                    i = i7 + i5;
                    outputStream.write(bArr, 0, i5);
                    i11 = 0;
                }
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i12 = this._inputPtr;
                this._inputPtr = i12 + 1;
                int i13 = bArr3[i12] & 255;
                int decodeBase64Char2 = base64Variant.decodeBase64Char(i13);
                int i14 = decodeBase64Char2;
                if (decodeBase64Char2 < 0) {
                    i14 = _decodeBase64Escape(base64Variant, i13, 1);
                }
                int i15 = (i10 << 6) | i14;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr4 = this._inputBuffer;
                int i16 = this._inputPtr;
                this._inputPtr = i16 + 1;
                int i17 = bArr4[i16] & 255;
                int decodeBase64Char3 = base64Variant.decodeBase64Char(i17);
                int i18 = decodeBase64Char3;
                if (decodeBase64Char3 < 0) {
                    int i19 = decodeBase64Char3;
                    if (decodeBase64Char3 != -2) {
                        if (i17 == 34) {
                            bArr[i11] = (byte) (i15 >> 4);
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                            }
                            i2 = i11 + 1;
                            i3 = i;
                        } else {
                            i19 = _decodeBase64Escape(base64Variant, i17, 2);
                        }
                    }
                    i18 = i19;
                    if (i19 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            _loadMoreGuaranteed();
                        }
                        byte[] bArr5 = this._inputBuffer;
                        int i20 = this._inputPtr;
                        this._inputPtr = i20 + 1;
                        int i21 = bArr5[i20] & 255;
                        if (!base64Variant.usesPaddingChar(i21) && _decodeBase64Escape(base64Variant, i21, 3) != -2) {
                            throw reportInvalidBase64Char(base64Variant, i21, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        bArr[i11] = (byte) (i15 >> 4);
                        i5 = i11 + 1;
                        i6 = i;
                    }
                }
                int i22 = (i15 << 6) | i18;
                if (this._inputPtr >= this._inputEnd) {
                    _loadMoreGuaranteed();
                }
                byte[] bArr6 = this._inputBuffer;
                int i23 = this._inputPtr;
                this._inputPtr = i23 + 1;
                int i24 = bArr6[i23] & 255;
                int decodeBase64Char4 = base64Variant.decodeBase64Char(i24);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (i24 == 34) {
                            int i25 = i22 >> 2;
                            int i26 = i11 + 1;
                            bArr[i11] = (byte) (i25 >> 8);
                            int i27 = i26 + 1;
                            bArr[i26] = (byte) i25;
                            i2 = i27;
                            i3 = i;
                            if (base64Variant.usesPadding()) {
                                this._inputPtr--;
                                _handleBase64MissingPadding(base64Variant);
                                i3 = i;
                                i2 = i27;
                            }
                        } else {
                            decodeBase64Char4 = _decodeBase64Escape(base64Variant, i24, 3);
                        }
                    }
                    i4 = decodeBase64Char4;
                    if (decodeBase64Char4 == -2) {
                        int i28 = i22 >> 2;
                        int i29 = i11 + 1;
                        bArr[i11] = (byte) (i28 >> 8);
                        i5 = i29 + 1;
                        bArr[i29] = (byte) i28;
                        i6 = i;
                    }
                } else {
                    i4 = decodeBase64Char4;
                }
                int i30 = (i22 << 6) | i4;
                int i31 = i11 + 1;
                bArr[i11] = (byte) (i30 >> 16);
                int i32 = i31 + 1;
                bArr[i31] = (byte) (i30 >> 8);
                bArr[i32] = (byte) i30;
                i5 = i32 + 1;
                i6 = i;
            }
            i = i7;
            i6 = i;
        }
        this._tokenIncomplete = false;
        int i33 = i3;
        if (i2 > 0) {
            i33 = i3 + i2;
            outputStream.write(bArr, 0, i2);
        }
        return i33;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public void _releaseBuffers() throws IOException {
        byte[] bArr;
        super._releaseBuffers();
        this._symbols.release();
        if (!this._bufferRecyclable || (bArr = this._inputBuffer) == null || bArr == NO_BYTES) {
            return;
        }
        this._inputBuffer = NO_BYTES;
        this._ioContext.releaseReadIOBuffer(bArr);
    }

    protected void _reportInvalidChar(int i) throws JsonParseException {
        if (i < 32) {
            _throwInvalidSpace(i);
        }
        _reportInvalidInitial(i);
    }

    protected void _reportInvalidInitial(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    protected void _reportInvalidOther(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    protected void _reportInvalidOther(int i, int i2) throws JsonParseException {
        this._inputPtr = i2;
        _reportInvalidOther(i);
    }

    protected void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, _validJsonTokenList());
    }

    protected void _reportInvalidToken(String str, int i) throws IOException {
        this._inputPtr = i;
        _reportInvalidToken(str, _validJsonTokenList());
    }

    protected void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                break;
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char _decodeCharForError = (char) _decodeCharForError(bArr[i]);
            if (!Character.isJavaIdentifierPart(_decodeCharForError)) {
                break;
            }
            sb.append(_decodeCharForError);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        _reportError("Unrecognized token '%s': was expecting %s", sb, str2);
    }

    protected final void _skipCR() throws IOException {
        if ((this._inputPtr < this._inputEnd || _loadMore()) && this._inputBuffer[this._inputPtr] == 10) {
            this._inputPtr++;
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    protected void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i = this._inputPtr;
            int i2 = this._inputEnd;
            int i3 = i;
            int i4 = i2;
            if (i >= i2) {
                _loadMoreGuaranteed();
                i3 = this._inputPtr;
                i4 = this._inputEnd;
            }
            while (true) {
                if (i3 >= i4) {
                    this._inputPtr = i3;
                    break;
                }
                int i5 = i3 + 1;
                int i6 = bArr[i3] & 255;
                if (iArr[i6] != 0) {
                    this._inputPtr = i5;
                    if (i6 == 34) {
                        return;
                    }
                    int i7 = iArr[i6];
                    if (i7 == 1) {
                        _decodeEscaped();
                    } else if (i7 == 2) {
                        _skipUtf8_2();
                    } else if (i7 == 3) {
                        _skipUtf8_3();
                    } else if (i7 == 4) {
                        _skipUtf8_4(i6);
                    } else if (i6 < 32) {
                        _throwUnquotedSpace(i6, "string value");
                    } else {
                        _reportInvalidChar(i6);
                    }
                } else {
                    i3 = i5;
                }
            }
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
        if (this._currToken != JsonToken.VALUE_STRING && (this._currToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null)) {
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

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(_getSourceReference(), this._currInputProcessed + this._inputPtr, -1L, this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._inputStream;
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
    public String getText() throws IOException {
        if (this._currToken == JsonToken.VALUE_STRING) {
            if (!this._tokenIncomplete) {
                return this._textBuffer.contentsAsString();
            }
            this._tokenIncomplete = false;
            return _finishAndReturnString();
        }
        return _getText2(this._currToken);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException {
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
    public int getTextLength() throws IOException {
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
    public int getTextOffset() throws IOException {
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
        return this._currToken == JsonToken.FIELD_NAME ? new JsonLocation(_getSourceReference(), this._currInputProcessed + (this._nameStartOffset - 1), -1L, this._nameStartRow, this._nameStartCol) : new JsonLocation(_getSourceReference(), this._tokenInputTotal - 1, -1L, this._tokenInputRow, this._tokenInputCol);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if ((this._numTypesValid & 1) == 0) {
                if (this._numTypesValid == 0) {
                    return _parseIntValue();
                }
                if ((this._numTypesValid & 1) == 0) {
                    convertNumberToInt();
                }
            }
            return this._numberInt;
        }
        return super.getValueAsInt(0);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt(int i) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if ((this._numTypesValid & 1) == 0) {
                if (this._numTypesValid == 0) {
                    return _parseIntValue();
                }
                if ((this._numTypesValid & 1) == 0) {
                    convertNumberToInt();
                }
            }
            return this._numberInt;
        }
        return super.getValueAsInt(i);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString() throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(null);
        } else if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        } else {
            this._tokenIncomplete = false;
            return _finishAndReturnString();
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(str);
        } else if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        } else {
            this._tokenIncomplete = false;
            return _finishAndReturnString();
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Boolean nextBooleanValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            JsonToken nextToken = nextToken();
            if (nextToken == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (nextToken != JsonToken.VALUE_FALSE) {
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

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b7, code lost:
        if (r0 == 125) goto L32;
     */
    @Override // com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String nextFieldName() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.nextFieldName():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c0, code lost:
        if (r0 == 125) goto L32;
     */
    @Override // com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextFieldName(com.fasterxml.jackson.core.SerializableString r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.nextFieldName(com.fasterxml.jackson.core.SerializableString):boolean");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int nextIntValue(int i) throws IOException {
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
    public long nextLongValue(long j) throws IOException {
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
    public String nextTextValue() throws IOException {
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
            if (!this._tokenIncomplete) {
                return this._textBuffer.contentsAsString();
            }
            this._tokenIncomplete = false;
            return _finishAndReturnString();
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

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b9, code lost:
        if (r0 == 125) goto L32;
     */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken nextToken() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.nextToken():com.fasterxml.jackson.core.JsonToken");
    }

    protected final String parseEscapedName(int[] iArr, int i, int i2, int i3, int i4) throws IOException {
        char c;
        int i5;
        int i6;
        int[] iArr2;
        int[] iArr3 = _icLatin1;
        while (true) {
            int[] iArr4 = iArr;
            int i7 = i;
            int i8 = i2;
            int i9 = i3;
            int i10 = i4;
            if (iArr3[i3] != 0) {
                if (i3 == 34) {
                    break;
                }
                if (i3 != 92) {
                    _throwUnquotedSpace(i3, "name");
                    c = i3;
                } else {
                    c = _decodeEscaped();
                }
                iArr4 = iArr;
                i7 = i;
                i8 = i2;
                i9 = c;
                i10 = i4;
                if (c > 127) {
                    int[] iArr5 = iArr;
                    int i11 = i;
                    int i12 = i2;
                    int i13 = i4;
                    if (i4 >= 4) {
                        iArr5 = iArr;
                        if (i >= iArr.length) {
                            iArr5 = growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr5;
                        }
                        iArr5[i] = i2;
                        i11 = i + 1;
                        i12 = 0;
                        i13 = 0;
                    }
                    if (c < 2048) {
                        i5 = (i12 << 8) | (c >> 6) | 192;
                        i6 = i13 + 1;
                        iArr2 = iArr5;
                    } else {
                        int i14 = (i12 << 8) | (c >> 12) | 224;
                        int i15 = i13 + 1;
                        if (i15 >= 4) {
                            iArr2 = iArr5;
                            if (i11 >= iArr5.length) {
                                iArr2 = growArrayBy(iArr5, iArr5.length);
                                this._quadBuffer = iArr2;
                            }
                            iArr2[i11] = i14;
                            i11++;
                            i15 = 0;
                            i14 = 0;
                        } else {
                            iArr2 = iArr5;
                        }
                        i5 = (i14 << 8) | ((c >> 6) & 63) | 128;
                        i6 = i15 + 1;
                    }
                    i9 = (c & 63) | 128;
                    iArr4 = iArr2;
                    i7 = i11;
                    i8 = i5;
                    i10 = i6;
                }
            }
            if (i10 < 4) {
                i4 = i10 + 1;
                i2 = (i8 << 8) | i9;
                iArr = iArr4;
                i = i7;
            } else {
                iArr = iArr4;
                if (i7 >= iArr4.length) {
                    iArr = growArrayBy(iArr4, iArr4.length);
                    this._quadBuffer = iArr;
                }
                iArr[i7] = i8;
                i2 = i9;
                i = i7 + 1;
                i4 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !_loadMore()) {
                _reportInvalidEOF(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr = this._inputBuffer;
            int i16 = this._inputPtr;
            this._inputPtr = i16 + 1;
            i3 = bArr[i16] & 255;
        }
        int[] iArr6 = iArr;
        int i17 = i;
        if (i4 > 0) {
            iArr6 = iArr;
            if (i >= iArr.length) {
                iArr6 = growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr6;
            }
            iArr6[i] = _padLastQuad(i2, i4);
            i17 = i + 1;
        }
        String findName = this._symbols.findName(iArr6, i17);
        String str = findName;
        if (findName == null) {
            str = addName(iArr6, i17, i4);
        }
        return str;
    }

    protected final String parseLongName(int i, int i2, int i3) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = this._quad1;
        iArr[1] = i2;
        iArr[2] = i3;
        byte[] bArr = this._inputBuffer;
        int[] iArr2 = _icLatin1;
        int i4 = i;
        int i5 = 3;
        while (this._inputPtr + 4 <= this._inputEnd) {
            int i6 = this._inputPtr;
            this._inputPtr = i6 + 1;
            int i7 = bArr[i6] & 255;
            if (iArr2[i7] != 0) {
                return i7 == 34 ? findName(this._quadBuffer, i5, i4, 1) : parseEscapedName(this._quadBuffer, i5, i4, i7, 1);
            }
            int i8 = (i4 << 8) | i7;
            int i9 = this._inputPtr;
            this._inputPtr = i9 + 1;
            int i10 = bArr[i9] & 255;
            if (iArr2[i10] != 0) {
                return i10 == 34 ? findName(this._quadBuffer, i5, i8, 2) : parseEscapedName(this._quadBuffer, i5, i8, i10, 2);
            }
            int i11 = (i8 << 8) | i10;
            int i12 = this._inputPtr;
            this._inputPtr = i12 + 1;
            int i13 = bArr[i12] & 255;
            if (iArr2[i13] != 0) {
                return i13 == 34 ? findName(this._quadBuffer, i5, i11, 3) : parseEscapedName(this._quadBuffer, i5, i11, i13, 3);
            }
            int i14 = (i11 << 8) | i13;
            int i15 = this._inputPtr;
            this._inputPtr = i15 + 1;
            i4 = bArr[i15] & 255;
            if (iArr2[i4] != 0) {
                return i4 == 34 ? findName(this._quadBuffer, i5, i14, 4) : parseEscapedName(this._quadBuffer, i5, i14, i4, 4);
            }
            int[] iArr3 = this._quadBuffer;
            if (i5 >= iArr3.length) {
                this._quadBuffer = growArrayBy(iArr3, i5);
            }
            this._quadBuffer[i5] = i14;
            i5++;
        }
        return parseEscapedName(this._quadBuffer, i5, 0, i4, 0);
    }

    protected final String parseMediumName(int i) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (iArr[i3] != 0) {
            return i3 == 34 ? findName(this._quad1, i, 1) : parseName(this._quad1, i, i3, 1);
        }
        int i4 = (i << 8) | i3;
        int i5 = this._inputPtr;
        this._inputPtr = i5 + 1;
        int i6 = bArr[i5] & 255;
        if (iArr[i6] != 0) {
            return i6 == 34 ? findName(this._quad1, i4, 2) : parseName(this._quad1, i4, i6, 2);
        }
        int i7 = (i4 << 8) | i6;
        int i8 = this._inputPtr;
        this._inputPtr = i8 + 1;
        int i9 = bArr[i8] & 255;
        if (iArr[i9] != 0) {
            return i9 == 34 ? findName(this._quad1, i7, 3) : parseName(this._quad1, i7, i9, 3);
        }
        int i10 = (i7 << 8) | i9;
        int i11 = this._inputPtr;
        this._inputPtr = i11 + 1;
        int i12 = bArr[i11] & 255;
        return iArr[i12] != 0 ? i12 == 34 ? findName(this._quad1, i10, 4) : parseName(this._quad1, i10, i12, 4) : parseMediumName2(i12, i10);
    }

    protected final String parseMediumName2(int i, int i2) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        int i4 = bArr[i3] & 255;
        if (iArr[i4] != 0) {
            return i4 == 34 ? findName(this._quad1, i2, i, 1) : parseName(this._quad1, i2, i, i4, 1);
        }
        int i5 = (i << 8) | i4;
        int i6 = this._inputPtr;
        this._inputPtr = i6 + 1;
        int i7 = bArr[i6] & 255;
        if (iArr[i7] != 0) {
            return i7 == 34 ? findName(this._quad1, i2, i5, 2) : parseName(this._quad1, i2, i5, i7, 2);
        }
        int i8 = (i5 << 8) | i7;
        int i9 = this._inputPtr;
        this._inputPtr = i9 + 1;
        int i10 = bArr[i9] & 255;
        if (iArr[i10] != 0) {
            return i10 == 34 ? findName(this._quad1, i2, i8, 3) : parseName(this._quad1, i2, i8, i10, 3);
        }
        int i11 = (i8 << 8) | i10;
        int i12 = this._inputPtr;
        this._inputPtr = i12 + 1;
        int i13 = bArr[i12] & 255;
        return iArr[i13] != 0 ? i13 == 34 ? findName(this._quad1, i2, i11, 4) : parseName(this._quad1, i2, i11, i13, 4) : parseLongName(i13, i2, i11);
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
    public int releaseBuffered(OutputStream outputStream) throws IOException {
        int i = this._inputEnd - this._inputPtr;
        if (i <= 0) {
            return 0;
        }
        int i2 = this._inputPtr;
        this._inputPtr += i;
        outputStream.write(this._inputBuffer, i2, i);
        return i;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    protected String slowParseName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !_loadMore()) {
            _reportInvalidEOF(": was expecting closing '\"' for name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & 255;
        return i2 == 34 ? "" : parseEscapedName(this._quadBuffer, 0, 0, i2, 0);
    }
}
