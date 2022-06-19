package com.fasterxml.jackson.core.json.async;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.async.ByteArrayFeeder;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.core.p309io.CharTypes;
import com.fasterxml.jackson.core.p309io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.TextBuffer;
import com.fasterxml.jackson.core.util.VersionUtil;
import java.io.IOException;
import java.io.OutputStream;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/json/async/NonBlockingJsonParser.class */
public class NonBlockingJsonParser extends NonBlockingJsonParserBase implements ByteArrayFeeder {
    protected byte[] _inputBuffer = NO_BYTES;
    protected int _origBufferLen;
    private static final int FEAT_MASK_TRAILING_COMMA = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();
    private static final int FEAT_MASK_LEADING_ZEROS = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();
    private static final int FEAT_MASK_ALLOW_MISSING = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();
    private static final int FEAT_MASK_ALLOW_SINGLE_QUOTES = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();
    private static final int FEAT_MASK_ALLOW_UNQUOTED_NAMES = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();
    private static final int FEAT_MASK_ALLOW_JAVA_COMMENTS = JsonParser.Feature.ALLOW_COMMENTS.getMask();
    private static final int FEAT_MASK_ALLOW_YAML_COMMENTS = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    public NonBlockingJsonParser(IOContext iOContext, int i, ByteQuadsCanonicalizer byteQuadsCanonicalizer) {
        super(iOContext, i, byteQuadsCanonicalizer);
    }

    private final int _decodeCharEscape() throws IOException {
        return this._inputEnd - this._inputPtr < 5 ? _decodeSplitEscaped(0, -1) : _decodeFastCharEscape();
    }

    private final int _decodeFastCharEscape() throws IOException {
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i];
        if (b == 34 || b == 47 || b == 92) {
            return (char) b;
        }
        if (b == 98) {
            return 8;
        }
        if (b == 102) {
            return 12;
        }
        if (b == 110) {
            return 10;
        }
        if (b == 114) {
            return 13;
        }
        if (b == 116) {
            return 9;
        }
        if (b != 117) {
            return _handleUnrecognizedCharacterEscape((char) b);
        }
        byte[] bArr2 = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b2 = bArr2[i2];
        int charToHex = CharTypes.charToHex(b2);
        if (charToHex >= 0) {
            byte[] bArr3 = this._inputBuffer;
            int i3 = this._inputPtr;
            this._inputPtr = i3 + 1;
            b2 = bArr3[i3];
            int charToHex2 = CharTypes.charToHex(b2);
            if (charToHex2 >= 0) {
                byte[] bArr4 = this._inputBuffer;
                int i4 = this._inputPtr;
                this._inputPtr = i4 + 1;
                b2 = bArr4[i4];
                int charToHex3 = CharTypes.charToHex(b2);
                if (charToHex3 >= 0) {
                    byte[] bArr5 = this._inputBuffer;
                    int i5 = this._inputPtr;
                    this._inputPtr = i5 + 1;
                    b2 = bArr5[i5];
                    int charToHex4 = CharTypes.charToHex(b2);
                    if (charToHex4 >= 0) {
                        return (((((charToHex << 4) | charToHex2) << 4) | charToHex3) << 4) | charToHex4;
                    }
                }
            }
        }
        _reportUnexpectedChar(b2 & 255, "expected a hex-digit for character escape sequence");
        return -1;
    }

    private int _decodeSplitEscaped(int i, int i2) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            this._quoted32 = i;
            this._quotedDigits = i2;
            return -1;
        }
        byte[] bArr = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b = bArr[i3];
        byte b2 = b;
        int i4 = i;
        int i5 = i2;
        if (i2 == -1) {
            if (b == 34 || b == 47 || b == 92) {
                return b;
            }
            if (b == 98) {
                return 8;
            }
            if (b == 102) {
                return 12;
            }
            if (b == 110) {
                return 10;
            }
            if (b == 114) {
                return 13;
            }
            if (b == 116) {
                return 9;
            }
            if (b != 117) {
                return _handleUnrecognizedCharacterEscape((char) b);
            }
            if (this._inputPtr >= this._inputEnd) {
                this._quotedDigits = 0;
                this._quoted32 = 0;
                return -1;
            }
            byte[] bArr2 = this._inputBuffer;
            int i6 = this._inputPtr;
            this._inputPtr = i6 + 1;
            b2 = bArr2[i6];
            i5 = 0;
            i4 = i;
        }
        while (true) {
            int i7 = b2 & 255;
            int charToHex = CharTypes.charToHex(i7);
            if (charToHex < 0) {
                _reportUnexpectedChar(i7 & 255, "expected a hex-digit for character escape sequence");
            }
            i4 = (i4 << 4) | charToHex;
            i5++;
            if (i5 == 4) {
                return i4;
            }
            if (this._inputPtr >= this._inputEnd) {
                this._quotedDigits = i5;
                this._quoted32 = i4;
                return -1;
            }
            byte[] bArr3 = this._inputBuffer;
            int i8 = this._inputPtr;
            this._inputPtr = i8 + 1;
            b2 = bArr3[i8];
        }
    }

    private final boolean _decodeSplitMultiByte(int i, int i2, boolean z) throws IOException {
        if (i2 == 1) {
            int _decodeSplitEscaped = _decodeSplitEscaped(0, -1);
            if (_decodeSplitEscaped < 0) {
                this._minorState = 41;
                return false;
            }
            this._textBuffer.append((char) _decodeSplitEscaped);
            return true;
        } else if (i2 == 2) {
            if (!z) {
                this._minorState = 42;
                this._pending32 = i;
                return false;
            }
            byte[] bArr = this._inputBuffer;
            int i3 = this._inputPtr;
            this._inputPtr = i3 + 1;
            this._textBuffer.append((char) _decodeUTF8_2(i, bArr[i3]));
            return true;
        } else if (i2 == 3) {
            int i4 = i & 15;
            if (z) {
                byte[] bArr2 = this._inputBuffer;
                int i5 = this._inputPtr;
                this._inputPtr = i5 + 1;
                return _decodeSplitUTF8_3(i4, 1, bArr2[i5]);
            }
            this._minorState = 43;
            this._pending32 = i4;
            this._pendingBytes = 1;
            return false;
        } else if (i2 != 4) {
            if (i < 32) {
                _throwUnquotedSpace(i, "string value");
            } else {
                _reportInvalidChar(i);
            }
            this._textBuffer.append((char) i);
            return true;
        } else {
            int i6 = i & 7;
            if (z) {
                byte[] bArr3 = this._inputBuffer;
                int i7 = this._inputPtr;
                this._inputPtr = i7 + 1;
                return _decodeSplitUTF8_4(i6, 1, bArr3[i7]);
            }
            this._pending32 = i6;
            this._pendingBytes = 1;
            this._minorState = 44;
            return false;
        }
    }

    private final boolean _decodeSplitUTF8_3(int i, int i2, int i3) throws IOException {
        int i4 = i;
        byte b = i3;
        if (i2 == 1) {
            if ((i3 & 192) != 128) {
                _reportInvalidOther(i3 & 255, this._inputPtr);
            }
            i4 = (i << 6) | (i3 & 63);
            if (this._inputPtr >= this._inputEnd) {
                this._minorState = 43;
                this._pending32 = i4;
                this._pendingBytes = 2;
                return false;
            }
            byte[] bArr = this._inputBuffer;
            int i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            b = bArr[i5];
        }
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        this._textBuffer.append((char) ((i4 << 6) | (b & 63)));
        return true;
    }

    private final boolean _decodeSplitUTF8_4(int i, int i2, int i3) throws IOException {
        int i4 = i;
        int i5 = i2;
        byte b = i3;
        if (i2 == 1) {
            if ((i3 & 192) != 128) {
                _reportInvalidOther(i3 & 255, this._inputPtr);
            }
            i4 = (i << 6) | (i3 & 63);
            if (this._inputPtr >= this._inputEnd) {
                this._minorState = 44;
                this._pending32 = i4;
                this._pendingBytes = 2;
                return false;
            }
            byte[] bArr = this._inputBuffer;
            int i6 = this._inputPtr;
            this._inputPtr = i6 + 1;
            b = bArr[i6];
            i5 = 2;
        }
        int i7 = i4;
        byte b2 = b;
        if (i5 == 2) {
            if ((b & 192) != 128) {
                _reportInvalidOther(b & 255, this._inputPtr);
            }
            i7 = (i4 << 6) | (b & 63);
            if (this._inputPtr >= this._inputEnd) {
                this._minorState = 44;
                this._pending32 = i7;
                this._pendingBytes = 3;
                return false;
            }
            byte[] bArr2 = this._inputBuffer;
            int i8 = this._inputPtr;
            this._inputPtr = i8 + 1;
            b2 = bArr2[i8];
        }
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
        int i9 = ((i7 << 6) | (b2 & 63)) - 65536;
        this._textBuffer.append((char) (55296 | (i9 >> 10)));
        this._textBuffer.append((char) ((i9 & 1023) | GeneratorBase.SURR2_FIRST));
        return true;
    }

    private final int _decodeUTF8_2(int i, int i2) throws IOException {
        if ((i2 & 192) != 128) {
            _reportInvalidOther(i2 & 255, this._inputPtr);
        }
        return ((i & 31) << 6) | (i2 & 63);
    }

    private final int _decodeUTF8_3(int i, int i2, int i3) throws IOException {
        if ((i2 & 192) != 128) {
            _reportInvalidOther(i2 & 255, this._inputPtr);
        }
        if ((i3 & 192) != 128) {
            _reportInvalidOther(i3 & 255, this._inputPtr);
        }
        return ((((i & 15) << 6) | (i2 & 63)) << 6) | (i3 & 63);
    }

    private final int _decodeUTF8_4(int i, int i2, int i3, int i4) throws IOException {
        if ((i2 & 192) != 128) {
            _reportInvalidOther(i2 & 255, this._inputPtr);
        }
        if ((i3 & 192) != 128) {
            _reportInvalidOther(i3 & 255, this._inputPtr);
        }
        if ((i4 & 192) != 128) {
            _reportInvalidOther(i4 & 255, this._inputPtr);
        }
        return (((((((i & 7) << 6) | (i2 & 63)) << 6) | (i3 & 63)) << 6) | (i4 & 63)) - 65536;
    }

    private final String _fastParseName() throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i = this._inputPtr;
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        if (iArr[i3] != 0) {
            if (i3 != 34) {
                return null;
            }
            this._inputPtr = i2;
            return "";
        }
        int i4 = i2 + 1;
        int i5 = bArr[i2] & 255;
        if (iArr[i5] != 0) {
            if (i5 != 34) {
                return null;
            }
            this._inputPtr = i4;
            return _findName(i3, 1);
        }
        int i6 = (i3 << 8) | i5;
        int i7 = i4 + 1;
        int i8 = bArr[i4] & 255;
        if (iArr[i8] != 0) {
            if (i8 != 34) {
                return null;
            }
            this._inputPtr = i7;
            return _findName(i6, 2);
        }
        int i9 = (i6 << 8) | i8;
        int i10 = i7 + 1;
        int i11 = bArr[i7] & 255;
        if (iArr[i11] != 0) {
            if (i11 != 34) {
                return null;
            }
            this._inputPtr = i10;
            return _findName(i9, 3);
        }
        int i12 = (i9 << 8) | i11;
        int i13 = i10 + 1;
        int i14 = bArr[i10] & 255;
        if (iArr[i14] == 0) {
            this._quad1 = i12;
            return _parseMediumName(i13, i14);
        } else if (i14 != 34) {
            return null;
        } else {
            this._inputPtr = i13;
            return _findName(i12, 4);
        }
    }

    private JsonToken _finishAposName(int i, int i2, int i3) throws IOException {
        int i4;
        int i5;
        int i6;
        int[] iArr;
        int[] iArr2 = this._quadBuffer;
        int[] iArr3 = _icLatin1;
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i7 = this._inputPtr;
            this._inputPtr = i7 + 1;
            int i8 = bArr[i7] & 255;
            if (i8 == 39) {
                if (i3 > 0) {
                    int[] iArr4 = iArr2;
                    if (i >= iArr2.length) {
                        iArr4 = growArrayBy(iArr2, iArr2.length);
                        this._quadBuffer = iArr4;
                    }
                    iArr4[i] = _padLastQuad(i2, i3);
                    i4 = i + 1;
                    iArr2 = iArr4;
                } else {
                    i4 = i;
                    if (i == 0) {
                        return _fieldComplete("");
                    }
                }
                String findName = this._symbols.findName(iArr2, i4);
                String str = findName;
                if (findName == null) {
                    str = _addName(iArr2, i4, i3);
                }
                return _fieldComplete(str);
            }
            int[] iArr5 = iArr2;
            int i9 = i8;
            int i10 = i;
            int i11 = i2;
            int i12 = i3;
            if (i8 != 34) {
                iArr5 = iArr2;
                i9 = i8;
                i10 = i;
                i11 = i2;
                i12 = i3;
                if (iArr3[i8] != 0) {
                    if (i8 != 92) {
                        _throwUnquotedSpace(i8, "name");
                    } else {
                        int _decodeCharEscape = _decodeCharEscape();
                        i8 = _decodeCharEscape;
                        if (_decodeCharEscape < 0) {
                            this._minorState = 8;
                            this._minorStateAfterSplit = 9;
                            this._quadLength = i;
                            this._pending32 = i2;
                            this._pendingBytes = i3;
                            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                            this._currToken = jsonToken;
                            return jsonToken;
                        }
                    }
                    iArr5 = iArr2;
                    i9 = i8;
                    i10 = i;
                    i11 = i2;
                    i12 = i3;
                    if (i8 > 127) {
                        iArr5 = iArr2;
                        int i13 = i;
                        int i14 = i2;
                        int i15 = i3;
                        if (i3 >= 4) {
                            iArr5 = iArr2;
                            if (i >= iArr2.length) {
                                iArr5 = growArrayBy(iArr2, iArr2.length);
                                this._quadBuffer = iArr5;
                            }
                            iArr5[i] = i2;
                            i13 = i + 1;
                            i14 = 0;
                            i15 = 0;
                        }
                        if (i8 < 2048) {
                            i6 = (i14 << 8) | (i8 >> 6) | 192;
                            i5 = i15 + 1;
                        } else {
                            int i16 = (i14 << 8) | (i8 >> 12) | 224;
                            int i17 = i15 + 1;
                            if (i17 >= 4) {
                                iArr = iArr5;
                                if (i13 >= iArr5.length) {
                                    iArr = growArrayBy(iArr5, iArr5.length);
                                    this._quadBuffer = iArr;
                                }
                                iArr[i13] = i16;
                                i13++;
                                i17 = 0;
                                i16 = 0;
                            } else {
                                iArr = iArr5;
                            }
                            int i18 = (i16 << 8) | ((i8 >> 6) & 63) | 128;
                            i5 = i17 + 1;
                            i6 = i18;
                            iArr5 = iArr;
                        }
                        i12 = i5;
                        i11 = i6;
                        i10 = i13;
                        i9 = (i8 & 63) | 128;
                    }
                }
            }
            if (i12 < 4) {
                i3 = i12 + 1;
                i2 = (i11 << 8) | i9;
                iArr2 = iArr5;
                i = i10;
            } else {
                iArr2 = iArr5;
                if (i10 >= iArr5.length) {
                    iArr2 = growArrayBy(iArr5, iArr5.length);
                    this._quadBuffer = iArr2;
                }
                iArr2[i10] = i11;
                i = i10 + 1;
                i2 = i9;
                i3 = 1;
            }
        }
        this._quadLength = i;
        this._pending32 = i2;
        this._pendingBytes = i3;
        this._minorState = 9;
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private final JsonToken _finishAposString() throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        char[] bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int i = this._inputPtr;
        int i2 = this._inputEnd;
        while (i < this._inputEnd) {
            boolean z = false;
            char[] cArr = bufferWithoutReset;
            int i3 = currentSegmentSize;
            if (currentSegmentSize >= bufferWithoutReset.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i3 = 0;
            }
            int min = Math.min(this._inputEnd, (cArr.length - i3) + i);
            int i4 = i;
            while (true) {
                int i5 = i4;
                bufferWithoutReset = cArr;
                currentSegmentSize = i3;
                i = i5;
                if (i5 < min) {
                    int i6 = i5 + 1;
                    int i7 = bArr[i5] & 255;
                    if (iArr[i7] == 0 || i7 == 34) {
                        if (i7 == 39) {
                            this._inputPtr = i6;
                            this._textBuffer.setCurrentLength(i3);
                            return _valueComplete(JsonToken.VALUE_STRING);
                        }
                        cArr[i3] = (char) i7;
                        i3++;
                        i4 = i6;
                    } else if (i6 >= i2 - 5) {
                        this._inputPtr = i6;
                        this._textBuffer.setCurrentLength(i3);
                        int i8 = iArr[i7];
                        if (i6 < this._inputEnd) {
                            z = true;
                        }
                        if (!_decodeSplitMultiByte(i7, i8, z)) {
                            this._minorStateAfterSplit = 45;
                            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                            this._currToken = jsonToken;
                            return jsonToken;
                        }
                        bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
                        currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
                        i = this._inputPtr;
                    } else {
                        int i9 = iArr[i7];
                        if (i9 == 1) {
                            this._inputPtr = i6;
                            i7 = _decodeFastCharEscape();
                            i6 = this._inputPtr;
                        } else if (i9 == 2) {
                            i7 = _decodeUTF8_2(i7, this._inputBuffer[i6]);
                            i6++;
                        } else if (i9 == 3) {
                            byte[] bArr2 = this._inputBuffer;
                            int i10 = i6 + 1;
                            i7 = _decodeUTF8_3(i7, bArr2[i6], bArr2[i10]);
                            i6 = i10 + 1;
                        } else if (i9 == 4) {
                            byte[] bArr3 = this._inputBuffer;
                            int i11 = i6 + 1;
                            byte b = bArr3[i6];
                            int i12 = i11 + 1;
                            int _decodeUTF8_4 = _decodeUTF8_4(i7, b, bArr3[i11], bArr3[i12]);
                            int i13 = i3 + 1;
                            cArr[i3] = (char) (55296 | (_decodeUTF8_4 >> 10));
                            if (i13 >= cArr.length) {
                                cArr = this._textBuffer.finishCurrentSegment();
                                i3 = 0;
                            } else {
                                i3 = i13;
                            }
                            i7 = (_decodeUTF8_4 & 1023) | GeneratorBase.SURR2_FIRST;
                            i6 = i12 + 1;
                        } else if (i7 < 32) {
                            _throwUnquotedSpace(i7, "string value");
                        } else {
                            _reportInvalidChar(i7);
                        }
                        if (i3 >= cArr.length) {
                            bufferWithoutReset = this._textBuffer.finishCurrentSegment();
                            i3 = 0;
                        } else {
                            bufferWithoutReset = cArr;
                        }
                        bufferWithoutReset[i3] = (char) i7;
                        i = i6;
                        currentSegmentSize = i3 + 1;
                    }
                }
            }
        }
        this._inputPtr = i;
        this._minorState = 45;
        this._textBuffer.setCurrentLength(currentSegmentSize);
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private final JsonToken _finishBOM(int i) throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            int i3 = bArr[i2] & 255;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        this._currInputProcessed -= 3;
                        return _startDocument(i3);
                    }
                } else if (i3 != 191) {
                    _reportError("Unexpected byte 0x%02x following 0xEF 0xBB; should get 0xBF as third byte of UTF-8 BOM", Integer.valueOf(i3));
                }
            } else if (i3 != 187) {
                _reportError("Unexpected byte 0x%02x following 0xEF; should get 0xBB as second byte UTF-8 BOM", Integer.valueOf(i3));
            }
            i++;
        }
        this._pending32 = i;
        this._minorState = 1;
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _finishCComment(int i, boolean z) throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            int i3 = bArr[i2] & 255;
            if (i3 < 32) {
                if (i3 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 != 9) {
                    _throwInvalidSpace(i3);
                }
            } else if (i3 == 42) {
                z = true;
            } else if (i3 == 47 && z) {
                return _startAfterComment(i);
            }
            z = false;
        }
        this._minorState = z ? 52 : 53;
        this._pending32 = i;
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _finishCppComment(int i) throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            int i3 = bArr[i2] & 255;
            if (i3 < 32) {
                if (i3 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 != 9) {
                    _throwInvalidSpace(i3);
                }
                return _startAfterComment(i);
            }
        }
        this._minorState = 54;
        this._pending32 = i;
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _finishHashComment(int i) throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) == 0) {
            _reportUnexpectedChar(35, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_YAML_COMMENTS' not enabled for parser)");
        }
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            int i3 = bArr[i2] & 255;
            if (i3 < 32) {
                if (i3 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 != 9) {
                    _throwInvalidSpace(i3);
                }
                return _startAfterComment(i);
            }
        }
        this._minorState = 55;
        this._pending32 = i;
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _finishRegularString() throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        char[] bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int i = this._inputPtr;
        int i2 = this._inputEnd;
        while (i < this._inputEnd) {
            boolean z = false;
            char[] cArr = bufferWithoutReset;
            int i3 = currentSegmentSize;
            if (currentSegmentSize >= bufferWithoutReset.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i3 = 0;
            }
            int min = Math.min(this._inputEnd, (cArr.length - i3) + i);
            int i4 = i;
            while (true) {
                int i5 = i4;
                bufferWithoutReset = cArr;
                currentSegmentSize = i3;
                i = i5;
                if (i5 < min) {
                    int i6 = i5 + 1;
                    int i7 = bArr[i5] & 255;
                    if (iArr[i7] == 0) {
                        cArr[i3] = (char) i7;
                        i3++;
                        i4 = i6;
                    } else if (i7 == 34) {
                        this._inputPtr = i6;
                        this._textBuffer.setCurrentLength(i3);
                        return _valueComplete(JsonToken.VALUE_STRING);
                    } else if (i6 >= i2 - 5) {
                        this._inputPtr = i6;
                        this._textBuffer.setCurrentLength(i3);
                        int i8 = iArr[i7];
                        if (i6 < this._inputEnd) {
                            z = true;
                        }
                        if (!_decodeSplitMultiByte(i7, i8, z)) {
                            this._minorStateAfterSplit = 40;
                            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                            this._currToken = jsonToken;
                            return jsonToken;
                        }
                        bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
                        currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
                        i = this._inputPtr;
                    } else {
                        int i9 = iArr[i7];
                        if (i9 == 1) {
                            this._inputPtr = i6;
                            i7 = _decodeFastCharEscape();
                            i6 = this._inputPtr;
                        } else if (i9 == 2) {
                            i7 = _decodeUTF8_2(i7, this._inputBuffer[i6]);
                            i6++;
                        } else if (i9 == 3) {
                            byte[] bArr2 = this._inputBuffer;
                            int i10 = i6 + 1;
                            i7 = _decodeUTF8_3(i7, bArr2[i6], bArr2[i10]);
                            i6 = i10 + 1;
                        } else if (i9 == 4) {
                            byte[] bArr3 = this._inputBuffer;
                            int i11 = i6 + 1;
                            byte b = bArr3[i6];
                            int i12 = i11 + 1;
                            int _decodeUTF8_4 = _decodeUTF8_4(i7, b, bArr3[i11], bArr3[i12]);
                            int i13 = i3 + 1;
                            cArr[i3] = (char) (55296 | (_decodeUTF8_4 >> 10));
                            if (i13 >= cArr.length) {
                                cArr = this._textBuffer.finishCurrentSegment();
                                i3 = 0;
                            } else {
                                i3 = i13;
                            }
                            i7 = (_decodeUTF8_4 & 1023) | GeneratorBase.SURR2_FIRST;
                            i6 = i12 + 1;
                        } else if (i7 < 32) {
                            _throwUnquotedSpace(i7, "string value");
                        } else {
                            _reportInvalidChar(i7);
                        }
                        if (i3 >= cArr.length) {
                            bufferWithoutReset = this._textBuffer.finishCurrentSegment();
                            i3 = 0;
                        } else {
                            bufferWithoutReset = cArr;
                        }
                        bufferWithoutReset[i3] = (char) i7;
                        i = i6;
                        currentSegmentSize = i3 + 1;
                    }
                }
            }
        }
        this._inputPtr = i;
        this._minorState = 40;
        this._textBuffer.setCurrentLength(currentSegmentSize);
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private JsonToken _finishUnquotedName(int i, int i2, int i3) throws IOException {
        int[] iArr = this._quadBuffer;
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        while (this._inputPtr < this._inputEnd) {
            int i4 = this._inputBuffer[this._inputPtr] & 255;
            if (inputCodeUtf8JsNames[i4] != 0) {
                int[] iArr2 = iArr;
                int i5 = i;
                if (i3 > 0) {
                    iArr2 = iArr;
                    if (i >= iArr.length) {
                        iArr2 = growArrayBy(iArr, iArr.length);
                        this._quadBuffer = iArr2;
                    }
                    iArr2[i] = i2;
                    i5 = i + 1;
                }
                String findName = this._symbols.findName(iArr2, i5);
                String str = findName;
                if (findName == null) {
                    str = _addName(iArr2, i5, i3);
                }
                return _fieldComplete(str);
            }
            this._inputPtr++;
            if (i3 < 4) {
                i3++;
                i2 = (i2 << 8) | i4;
            } else {
                int[] iArr3 = iArr;
                if (i >= iArr.length) {
                    iArr3 = growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr3;
                }
                iArr3[i] = i2;
                i++;
                i2 = i4;
                i3 = 1;
                iArr = iArr3;
            }
        }
        this._quadLength = i;
        this._pending32 = i2;
        this._pendingBytes = i3;
        this._minorState = 10;
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    private JsonToken _handleOddName(int i) throws IOException {
        if (i != 35) {
            if (i != 39) {
                if (i == 47) {
                    return _startSlashComment(4);
                }
                if (i == 93) {
                    return _closeArrayScope();
                }
            } else if ((this._features & FEAT_MASK_ALLOW_SINGLE_QUOTES) != 0) {
                return _finishAposName(0, 0, 0);
            }
        } else if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) != 0) {
            return _finishHashComment(4);
        }
        if ((this._features & FEAT_MASK_ALLOW_UNQUOTED_NAMES) == 0) {
            _reportUnexpectedChar((char) i, "was expecting double-quote to start field name");
        }
        if (CharTypes.getInputCodeUtf8JsNames()[i] != 0) {
            _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        return _finishUnquotedName(0, i, 1);
    }

    private final JsonToken _parseEscapedName(int i, int i2, int i3) throws IOException {
        int[] iArr;
        int i4;
        int[] iArr2;
        int i5;
        int[] iArr3 = this._quadBuffer;
        int[] iArr4 = _icLatin1;
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i6 = this._inputPtr;
            this._inputPtr = i6 + 1;
            int i7 = bArr[i6] & 255;
            if (iArr4[i7] == 0) {
                if (i3 < 4) {
                    i5 = i7;
                    i3++;
                    i2 = (i2 << 8) | i5;
                } else {
                    iArr2 = iArr3;
                    if (i >= iArr3.length) {
                        iArr2 = growArrayBy(iArr3, iArr3.length);
                        this._quadBuffer = iArr2;
                    }
                    iArr2[i] = i2;
                    i++;
                    i5 = i7;
                    iArr3 = iArr2;
                    i2 = i5;
                    i3 = 1;
                }
            } else if (i7 == 34) {
                if (i3 > 0) {
                    iArr = iArr3;
                    if (i >= iArr3.length) {
                        iArr = growArrayBy(iArr3, iArr3.length);
                        this._quadBuffer = iArr;
                    }
                    iArr[i] = _padLastQuad(i2, i3);
                    i4 = i + 1;
                } else {
                    iArr = iArr3;
                    i4 = i;
                    if (i == 0) {
                        return _fieldComplete("");
                    }
                }
                String findName = this._symbols.findName(iArr, i4);
                String str = findName;
                if (findName == null) {
                    str = _addName(iArr, i4, i3);
                }
                return _fieldComplete(str);
            } else {
                if (i7 != 92) {
                    _throwUnquotedSpace(i7, "name");
                } else {
                    int _decodeCharEscape = _decodeCharEscape();
                    i7 = _decodeCharEscape;
                    if (_decodeCharEscape < 0) {
                        this._minorState = 8;
                        this._minorStateAfterSplit = 7;
                        this._quadLength = i;
                        this._pending32 = i2;
                        this._pendingBytes = i3;
                        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                        this._currToken = jsonToken;
                        return jsonToken;
                    }
                }
                iArr2 = iArr3;
                if (i >= iArr3.length) {
                    iArr2 = growArrayBy(iArr3, iArr3.length);
                    this._quadBuffer = iArr2;
                }
                i5 = i7;
                int i8 = i;
                int i9 = i2;
                int i10 = i3;
                if (i7 > 127) {
                    int i11 = i;
                    int i12 = i2;
                    int i13 = i3;
                    if (i3 >= 4) {
                        iArr2[i] = i2;
                        i11 = i + 1;
                        i12 = 0;
                        i13 = 0;
                    }
                    if (i7 < 2048) {
                        i9 = (i12 << 8) | (i7 >> 6) | 192;
                        i10 = i13 + 1;
                    } else {
                        int i14 = (i12 << 8) | (i7 >> 12) | 224;
                        int i15 = i13 + 1;
                        if (i15 >= 4) {
                            iArr2[i11] = i14;
                            i11++;
                            i15 = 0;
                            i14 = 0;
                        }
                        i9 = (i14 << 8) | ((i7 >> 6) & 63) | 128;
                        i10 = i15 + 1;
                    }
                    i8 = i11;
                    i5 = (i7 & 63) | 128;
                }
                if (i10 < 4) {
                    iArr3 = iArr2;
                    i = i8;
                    i2 = i9;
                    i3 = i10;
                    i3++;
                    i2 = (i2 << 8) | i5;
                } else {
                    i = i8 + 1;
                    iArr2[i8] = i9;
                    iArr3 = iArr2;
                    i2 = i5;
                    i3 = 1;
                }
            }
        }
        this._quadLength = i;
        this._pending32 = i2;
        this._pendingBytes = i3;
        this._minorState = 7;
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private final String _parseMediumName(int i, int i2) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i3 = i + 1;
        int i4 = bArr[i] & 255;
        if (iArr[i4] != 0) {
            if (i4 != 34) {
                return null;
            }
            this._inputPtr = i3;
            return _findName(this._quad1, i2, 1);
        }
        int i5 = i4 | (i2 << 8);
        int i6 = i3 + 1;
        int i7 = bArr[i3] & 255;
        if (iArr[i7] != 0) {
            if (i7 != 34) {
                return null;
            }
            this._inputPtr = i6;
            return _findName(this._quad1, i5, 2);
        }
        int i8 = (i5 << 8) | i7;
        int i9 = i6 + 1;
        int i10 = bArr[i6] & 255;
        if (iArr[i10] != 0) {
            if (i10 != 34) {
                return null;
            }
            this._inputPtr = i9;
            return _findName(this._quad1, i8, 3);
        }
        int i11 = (i8 << 8) | i10;
        int i12 = i9 + 1;
        int i13 = bArr[i9] & 255;
        if (iArr[i13] == 0) {
            return _parseMediumName2(i12, i13, i11);
        }
        if (i13 != 34) {
            return null;
        }
        this._inputPtr = i12;
        return _findName(this._quad1, i11, 4);
    }

    private final String _parseMediumName2(int i, int i2, int i3) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i4 = i + 1;
        int i5 = bArr[i] & 255;
        if (iArr[i5] != 0) {
            if (i5 != 34) {
                return null;
            }
            this._inputPtr = i4;
            return _findName(this._quad1, i3, i2, 1);
        }
        int i6 = i5 | (i2 << 8);
        int i7 = i4 + 1;
        int i8 = bArr[i4] & 255;
        if (iArr[i8] != 0) {
            if (i8 != 34) {
                return null;
            }
            this._inputPtr = i7;
            return _findName(this._quad1, i3, i6, 2);
        }
        int i9 = (i6 << 8) | i8;
        int i10 = i7 + 1;
        int i11 = bArr[i7] & 255;
        if (iArr[i11] != 0) {
            if (i11 != 34) {
                return null;
            }
            this._inputPtr = i10;
            return _findName(this._quad1, i3, i9, 3);
        } else if ((bArr[i10] & 255) != 34) {
            return null;
        } else {
            this._inputPtr = i10 + 1;
            return _findName(this._quad1, i3, (i9 << 8) | i11, 4);
        }
    }

    private final int _skipWS(int i) throws IOException {
        int i2;
        do {
            if (i != 32) {
                if (i == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i != 9) {
                    _throwInvalidSpace(i);
                }
            }
            if (this._inputPtr >= this._inputEnd) {
                this._currToken = JsonToken.NOT_AVAILABLE;
                return 0;
            }
            byte[] bArr = this._inputBuffer;
            int i3 = this._inputPtr;
            this._inputPtr = i3 + 1;
            i2 = bArr[i3] & 255;
            i = i2;
        } while (i2 <= 32);
        return i2;
    }

    private final JsonToken _startAfterComment(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            this._minorState = i;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (i == 4) {
            return _startFieldName(i3);
        }
        if (i == 5) {
            return _startFieldNameAfterComma(i3);
        }
        switch (i) {
            case 12:
                return _startValue(i3);
            case 13:
                return _startValueExpectComma(i3);
            case 14:
                return _startValueExpectColon(i3);
            case 15:
                return _startValueAfterComma(i3);
            default:
                VersionUtil.throwInternal();
                return null;
        }
    }

    private final JsonToken _startDocument(int i) throws IOException {
        int i2 = i & 255;
        int i3 = i2;
        if (i2 == 239) {
            i3 = i2;
            if (this._minorState != 1) {
                return _finishBOM(1);
            }
        }
        while (i3 <= 32) {
            if (i3 != 32) {
                if (i3 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 != 9) {
                    _throwInvalidSpace(i3);
                }
            }
            if (this._inputPtr >= this._inputEnd) {
                this._minorState = 3;
                if (this._closed) {
                    return null;
                }
                return this._endOfInput ? _eofAsNextToken() : JsonToken.NOT_AVAILABLE;
            }
            byte[] bArr = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            i3 = bArr[i4] & 255;
        }
        return _startValue(i3);
    }

    private final JsonToken _startFieldName(int i) throws IOException {
        String _fastParseName;
        int i2 = i;
        if (i <= 32) {
            int _skipWS = _skipWS(i);
            i2 = _skipWS;
            if (_skipWS <= 0) {
                this._minorState = 4;
                return this._currToken;
            }
        }
        _updateTokenLocation();
        return i2 != 34 ? i2 == 125 ? _closeObjectScope() : _handleOddName(i2) : (this._inputPtr + 13 > this._inputEnd || (_fastParseName = _fastParseName()) == null) ? _parseEscapedName(0, 0, 0) : _fieldComplete(_fastParseName);
    }

    private final JsonToken _startFieldNameAfterComma(int i) throws IOException {
        String _fastParseName;
        int i2 = i;
        if (i <= 32) {
            int _skipWS = _skipWS(i);
            i2 = _skipWS;
            if (_skipWS <= 0) {
                this._minorState = 5;
                return this._currToken;
            }
        }
        if (i2 != 44) {
            if (i2 == 125) {
                return _closeObjectScope();
            }
            if (i2 == 35) {
                return _finishHashComment(5);
            }
            if (i2 == 47) {
                return _startSlashComment(5);
            }
            _reportUnexpectedChar(i2, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
        }
        int i3 = this._inputPtr;
        if (i3 >= this._inputEnd) {
            this._minorState = 4;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte b = this._inputBuffer[i3];
        this._inputPtr = i3 + 1;
        int i4 = b;
        if (b <= 32) {
            int _skipWS2 = _skipWS(b);
            i4 = _skipWS2;
            if (_skipWS2 <= 0) {
                this._minorState = 4;
                return this._currToken;
            }
        }
        _updateTokenLocation();
        return i4 != 34 ? (i4 != 125 || (this._features & FEAT_MASK_TRAILING_COMMA) == 0) ? _handleOddName(i4) : _closeObjectScope() : (this._inputPtr + 13 > this._inputEnd || (_fastParseName = _fastParseName()) == null) ? _parseEscapedName(0, 0, 0) : _fieldComplete(_fastParseName);
    }

    private final JsonToken _startSlashComment(int i) throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_JAVA_COMMENTS) == 0) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd) {
            this._pending32 = i;
            this._minorState = 51;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if (b == 42) {
            return _finishCComment(i, false);
        }
        if (b == 47) {
            return _finishCppComment(i);
        }
        _reportUnexpectedChar(b & 255, "was expecting either '*' or '/' for a comment");
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final JsonToken _startValue(int i) throws IOException {
        int i2 = i;
        if (i <= 32) {
            int _skipWS = _skipWS(i);
            i2 = _skipWS;
            if (_skipWS <= 0) {
                this._minorState = 12;
                return this._currToken;
            }
        }
        _updateTokenLocation();
        this._parsingContext.expectComma();
        if (i2 == 34) {
            return _startString();
        }
        if (i2 == 35) {
            return _finishHashComment(12);
        }
        if (i2 == 91) {
            return _startArrayScope();
        }
        if (i2 == 93) {
            return _closeArrayScope();
        }
        if (i2 == 102) {
            return _startFalseToken();
        }
        if (i2 == 110) {
            return _startNullToken();
        }
        if (i2 == 116) {
            return _startTrueToken();
        }
        if (i2 == 123) {
            return _startObjectScope();
        }
        if (i2 == 125) {
            return _closeObjectScope();
        }
        switch (i2) {
            case 45:
                return _startNegativeNumber();
            case 46:
                if (isEnabled(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature())) {
                    return _startFloatThatStartsWithPeriod();
                }
                break;
            case 47:
                return _startSlashComment(12);
            case 48:
                return _startNumberLeadingZero();
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                return _startPositiveNumber(i2);
        }
        return _startUnexpectedValue(false, i2);
    }

    private final JsonToken _startValueAfterComma(int i) throws IOException {
        int i2 = i;
        if (i <= 32) {
            int _skipWS = _skipWS(i);
            i2 = _skipWS;
            if (_skipWS <= 0) {
                this._minorState = 15;
                return this._currToken;
            }
        }
        _updateTokenLocation();
        if (i2 == 34) {
            return _startString();
        }
        if (i2 == 35) {
            return _finishHashComment(15);
        }
        if (i2 == 45) {
            return _startNegativeNumber();
        }
        if (i2 == 91) {
            return _startArrayScope();
        }
        if (i2 != 93) {
            if (i2 == 102) {
                return _startFalseToken();
            }
            if (i2 == 110) {
                return _startNullToken();
            }
            if (i2 == 116) {
                return _startTrueToken();
            }
            if (i2 == 123) {
                return _startObjectScope();
            }
            if (i2 != 125) {
                switch (i2) {
                    case 47:
                        return _startSlashComment(15);
                    case 48:
                        return _startNumberLeadingZero();
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        return _startPositiveNumber(i2);
                }
            } else if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0) {
                return _closeObjectScope();
            }
        } else if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0) {
            return _closeArrayScope();
        }
        return _startUnexpectedValue(true, i2);
    }

    private final JsonToken _startValueExpectColon(int i) throws IOException {
        int i2 = i;
        if (i <= 32) {
            int _skipWS = _skipWS(i);
            i2 = _skipWS;
            if (_skipWS <= 0) {
                this._minorState = 14;
                return this._currToken;
            }
        }
        if (i2 != 58) {
            if (i2 == 47) {
                return _startSlashComment(14);
            }
            if (i2 == 35) {
                return _finishHashComment(14);
            }
            _reportUnexpectedChar(i2, "was expecting a colon to separate field name and value");
        }
        int i3 = this._inputPtr;
        if (i3 >= this._inputEnd) {
            this._minorState = 12;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte b = this._inputBuffer[i3];
        this._inputPtr = i3 + 1;
        int i4 = b;
        if (b <= 32) {
            int _skipWS2 = _skipWS(b);
            i4 = _skipWS2;
            if (_skipWS2 <= 0) {
                this._minorState = 12;
                return this._currToken;
            }
        }
        _updateTokenLocation();
        if (i4 == 34) {
            return _startString();
        }
        if (i4 == 35) {
            return _finishHashComment(12);
        }
        if (i4 == 45) {
            return _startNegativeNumber();
        }
        if (i4 == 91) {
            return _startArrayScope();
        }
        if (i4 == 102) {
            return _startFalseToken();
        }
        if (i4 == 110) {
            return _startNullToken();
        }
        if (i4 == 116) {
            return _startTrueToken();
        }
        if (i4 == 123) {
            return _startObjectScope();
        }
        switch (i4) {
            case 47:
                return _startSlashComment(12);
            case 48:
                return _startNumberLeadingZero();
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                return _startPositiveNumber(i4);
            default:
                return _startUnexpectedValue(false, i4);
        }
    }

    private final JsonToken _startValueExpectComma(int i) throws IOException {
        int i2 = i;
        if (i <= 32) {
            int _skipWS = _skipWS(i);
            i2 = _skipWS;
            if (_skipWS <= 0) {
                this._minorState = 13;
                return this._currToken;
            }
        }
        if (i2 != 44) {
            if (i2 == 93) {
                return _closeArrayScope();
            }
            if (i2 == 125) {
                return _closeObjectScope();
            }
            if (i2 == 47) {
                return _startSlashComment(13);
            }
            if (i2 == 35) {
                return _finishHashComment(13);
            }
            _reportUnexpectedChar(i2, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
        }
        this._parsingContext.expectComma();
        int i3 = this._inputPtr;
        if (i3 >= this._inputEnd) {
            this._minorState = 15;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte b = this._inputBuffer[i3];
        this._inputPtr = i3 + 1;
        int i4 = b;
        if (b <= 32) {
            int _skipWS2 = _skipWS(b);
            i4 = _skipWS2;
            if (_skipWS2 <= 0) {
                this._minorState = 15;
                return this._currToken;
            }
        }
        _updateTokenLocation();
        if (i4 == 34) {
            return _startString();
        }
        if (i4 == 35) {
            return _finishHashComment(15);
        }
        if (i4 == 45) {
            return _startNegativeNumber();
        }
        if (i4 == 91) {
            return _startArrayScope();
        }
        if (i4 != 93) {
            if (i4 == 102) {
                return _startFalseToken();
            }
            if (i4 == 110) {
                return _startNullToken();
            }
            if (i4 == 116) {
                return _startTrueToken();
            }
            if (i4 == 123) {
                return _startObjectScope();
            }
            if (i4 != 125) {
                switch (i4) {
                    case 47:
                        return _startSlashComment(15);
                    case 48:
                        return _startNumberLeadingZero();
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        return _startPositiveNumber(i4);
                }
            } else if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0) {
                return _closeObjectScope();
            }
        } else if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0) {
            return _closeArrayScope();
        }
        return _startUnexpectedValue(true, i4);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public char _decodeEscaped() throws IOException {
        VersionUtil.throwInternal();
        return ' ';
    }

    protected JsonToken _finishErrorToken() throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = (char) bArr[i];
            if (Character.isJavaIdentifierPart(c)) {
                this._textBuffer.append(c);
                if (this._textBuffer.size() >= 256) {
                }
            }
            return _reportErrorToken(this._textBuffer.contentsAsString());
        }
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    protected JsonToken _finishErrorTokenWithEOF() throws IOException {
        return _reportErrorToken(this._textBuffer.contentsAsString());
    }

    protected final JsonToken _finishFieldWithEscape() throws IOException {
        int i;
        int i2;
        int i3;
        int _decodeSplitEscaped = _decodeSplitEscaped(this._quoted32, this._quotedDigits);
        if (_decodeSplitEscaped < 0) {
            this._minorState = 8;
            return JsonToken.NOT_AVAILABLE;
        }
        if (this._quadLength >= this._quadBuffer.length) {
            this._quadBuffer = growArrayBy(this._quadBuffer, 32);
        }
        int i4 = this._pending32;
        int i5 = this._pendingBytes;
        int i6 = _decodeSplitEscaped;
        int i7 = i4;
        int i8 = i5;
        if (_decodeSplitEscaped > 127) {
            int i9 = i4;
            int i10 = i5;
            if (i5 >= 4) {
                int[] iArr = this._quadBuffer;
                int i11 = this._quadLength;
                this._quadLength = i11 + 1;
                iArr[i11] = i4;
                i9 = 0;
                i10 = 0;
            }
            if (_decodeSplitEscaped < 2048) {
                i2 = i9 << 8;
                i3 = (_decodeSplitEscaped >> 6) | 192;
            } else {
                int i12 = (i9 << 8) | (_decodeSplitEscaped >> 12) | 224;
                i10++;
                if (i10 >= 4) {
                    int[] iArr2 = this._quadBuffer;
                    int i13 = this._quadLength;
                    this._quadLength = i13 + 1;
                    iArr2[i13] = i12;
                    i10 = 0;
                    i12 = 0;
                }
                i2 = i12 << 8;
                i3 = ((_decodeSplitEscaped >> 6) & 63) | 128;
            }
            i7 = i2 | i3;
            i8 = i10 + 1;
            i6 = (_decodeSplitEscaped & 63) | 128;
        }
        if (i8 < 4) {
            i = 1 + i8;
            i6 |= i7 << 8;
        } else {
            int[] iArr3 = this._quadBuffer;
            int i14 = this._quadLength;
            this._quadLength = i14 + 1;
            iArr3[i14] = i7;
            i = 1;
        }
        return this._minorStateAfterSplit == 9 ? _finishAposName(this._quadLength, i6, i) : _parseEscapedName(this._quadLength, i6, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r6 == 43) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _finishFloatExponent(boolean r5, int r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.NonBlockingJsonParser._finishFloatExponent(boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    protected JsonToken _finishFloatFraction() throws IOException {
        byte b;
        int i = this._fractLength;
        char[] bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            b = bArr[i2];
            if (b < 48 || b > 57) {
                break;
            }
            i++;
            char[] cArr = bufferWithoutReset;
            if (currentSegmentSize >= bufferWithoutReset.length) {
                cArr = this._textBuffer.expandCurrentSegment();
            }
            int i3 = currentSegmentSize + 1;
            cArr[currentSegmentSize] = (char) b;
            if (this._inputPtr >= this._inputEnd) {
                this._textBuffer.setCurrentLength(i3);
                this._fractLength = i;
                return JsonToken.NOT_AVAILABLE;
            }
            currentSegmentSize = i3;
            bufferWithoutReset = cArr;
        }
        if (i == 0) {
            reportUnexpectedNumberChar(b, "Decimal point not followed by a digit");
        }
        this._fractLength = i;
        this._textBuffer.setCurrentLength(currentSegmentSize);
        if (b != 101 && b != 69) {
            this._inputPtr--;
            this._textBuffer.setCurrentLength(currentSegmentSize);
            this._expLength = 0;
            return _valueComplete(JsonToken.VALUE_NUMBER_FLOAT);
        }
        this._textBuffer.append((char) b);
        this._expLength = 0;
        if (this._inputPtr >= this._inputEnd) {
            this._minorState = 31;
            return JsonToken.NOT_AVAILABLE;
        }
        this._minorState = 32;
        byte[] bArr2 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        return _finishFloatExponent(true, bArr2[i4] & 255);
    }

    protected JsonToken _finishKeywordToken(String str, int i, JsonToken jsonToken) throws IOException {
        int length = str.length();
        while (this._inputPtr < this._inputEnd) {
            byte b = this._inputBuffer[this._inputPtr];
            if (i == length) {
                if (b < 48 || b == 93 || b == 125) {
                    return _valueComplete(jsonToken);
                }
            } else if (b == str.charAt(i)) {
                i++;
                this._inputPtr++;
            }
            this._minorState = 50;
            this._textBuffer.resetWithCopy(str, 0, i);
            return _finishErrorToken();
        }
        this._pending32 = i;
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    protected JsonToken _finishKeywordTokenWithEOF(String str, int i, JsonToken jsonToken) throws IOException {
        if (i == str.length()) {
            this._currToken = jsonToken;
            return jsonToken;
        }
        this._textBuffer.resetWithCopy(str, 0, i);
        return _finishErrorTokenWithEOF();
    }

    protected JsonToken _finishNonStdToken(int i, int i2) throws IOException {
        String _nonStdToken = _nonStdToken(i);
        int length = _nonStdToken.length();
        while (this._inputPtr < this._inputEnd) {
            byte b = this._inputBuffer[this._inputPtr];
            if (i2 == length) {
                if (b < 48 || b == 93 || b == 125) {
                    return _valueNonStdNumberComplete(i);
                }
            } else if (b == _nonStdToken.charAt(i2)) {
                i2++;
                this._inputPtr++;
            }
            this._minorState = 50;
            this._textBuffer.resetWithCopy(_nonStdToken, 0, i2);
            return _finishErrorToken();
        }
        this._nonStdTokenType = i;
        this._pending32 = i2;
        this._minorState = 19;
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    protected JsonToken _finishNonStdTokenWithEOF(int i, int i2) throws IOException {
        String _nonStdToken = _nonStdToken(i);
        if (i2 == _nonStdToken.length()) {
            return _valueNonStdNumberComplete(i);
        }
        this._textBuffer.resetWithCopy(_nonStdToken, 0, i2);
        return _finishErrorTokenWithEOF();
    }

    protected JsonToken _finishNumberIntegralPart(char[] cArr, int i) throws IOException {
        int i2 = this._numberNegative ? -1 : 0;
        while (this._inputPtr < this._inputEnd) {
            int i3 = this._inputBuffer[this._inputPtr] & 255;
            if (i3 < 48) {
                if (i3 == 46) {
                    this._intLength = i2 + i;
                    this._inputPtr++;
                    return _startFloat(cArr, i, i3);
                }
            } else if (i3 <= 57) {
                this._inputPtr++;
                char[] cArr2 = cArr;
                if (i >= cArr.length) {
                    cArr2 = this._textBuffer.expandCurrentSegment();
                }
                cArr2[i] = (char) i3;
                i++;
                cArr = cArr2;
            } else if (i3 == 101 || i3 == 69) {
                this._intLength = i2 + i;
                this._inputPtr++;
                return _startFloat(cArr, i, i3);
            }
            this._intLength = i2 + i;
            this._textBuffer.setCurrentLength(i);
            return _valueComplete(JsonToken.VALUE_NUMBER_INT);
        }
        this._minorState = 26;
        this._textBuffer.setCurrentLength(i);
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    protected JsonToken _finishNumberLeadingNegZeroes() throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 < 48) {
                if (i2 == 46) {
                    char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
                    emptyAndGetCurrentSegment[0] = (char) 45;
                    emptyAndGetCurrentSegment[1] = (char) 48;
                    this._intLength = 1;
                    return _startFloat(emptyAndGetCurrentSegment, 2, i2);
                }
            } else if (i2 <= 57) {
                if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
                    reportInvalidNumber("Leading zeroes not allowed");
                }
                if (i2 != 48) {
                    char[] emptyAndGetCurrentSegment2 = this._textBuffer.emptyAndGetCurrentSegment();
                    emptyAndGetCurrentSegment2[0] = (char) 45;
                    emptyAndGetCurrentSegment2[1] = (char) i2;
                    this._intLength = 1;
                    return _finishNumberIntegralPart(emptyAndGetCurrentSegment2, 2);
                }
            } else if (i2 == 101 || i2 == 69) {
                char[] emptyAndGetCurrentSegment3 = this._textBuffer.emptyAndGetCurrentSegment();
                emptyAndGetCurrentSegment3[0] = (char) 45;
                emptyAndGetCurrentSegment3[1] = (char) 48;
                this._intLength = 1;
                return _startFloat(emptyAndGetCurrentSegment3, 2, i2);
            } else if (i2 != 93 && i2 != 125) {
                reportUnexpectedNumberChar(i2, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
            }
            this._inputPtr--;
            return _valueCompleteInt(0, "0");
        }
        this._minorState = 25;
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    protected JsonToken _finishNumberLeadingZeroes() throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 < 48) {
                if (i2 == 46) {
                    char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
                    emptyAndGetCurrentSegment[0] = (char) 48;
                    this._intLength = 1;
                    return _startFloat(emptyAndGetCurrentSegment, 1, i2);
                }
            } else if (i2 <= 57) {
                if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
                    reportInvalidNumber("Leading zeroes not allowed");
                }
                if (i2 != 48) {
                    char[] emptyAndGetCurrentSegment2 = this._textBuffer.emptyAndGetCurrentSegment();
                    emptyAndGetCurrentSegment2[0] = (char) i2;
                    this._intLength = 1;
                    return _finishNumberIntegralPart(emptyAndGetCurrentSegment2, 1);
                }
            } else if (i2 == 101 || i2 == 69) {
                char[] emptyAndGetCurrentSegment3 = this._textBuffer.emptyAndGetCurrentSegment();
                emptyAndGetCurrentSegment3[0] = (char) 48;
                this._intLength = 1;
                return _startFloat(emptyAndGetCurrentSegment3, 1, i2);
            } else if (i2 != 93 && i2 != 125) {
                reportUnexpectedNumberChar(i2, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
            }
            this._inputPtr--;
            return _valueCompleteInt(0, "0");
        }
        this._minorState = 24;
        JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken;
        return jsonToken;
    }

    protected JsonToken _finishNumberMinus(int i) throws IOException {
        if (i <= 48) {
            if (i == 48) {
                return _finishNumberLeadingNegZeroes();
            }
            reportUnexpectedNumberChar(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
        } else if (i > 57) {
            if (i == 73) {
                return _finishNonStdToken(3, 2);
            }
            reportUnexpectedNumberChar(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = (char) 45;
        emptyAndGetCurrentSegment[1] = (char) i;
        this._intLength = 1;
        return _finishNumberIntegralPart(emptyAndGetCurrentSegment, 2);
    }

    protected final JsonToken _finishToken() throws IOException {
        int i = this._minorState;
        if (i != 1) {
            if (i == 4) {
                byte[] bArr = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                return _startFieldName(bArr[i2] & 255);
            } else if (i == 5) {
                byte[] bArr2 = this._inputBuffer;
                int i3 = this._inputPtr;
                this._inputPtr = i3 + 1;
                return _startFieldNameAfterComma(bArr2[i3] & 255);
            } else {
                switch (i) {
                    case 7:
                        return _parseEscapedName(this._quadLength, this._pending32, this._pendingBytes);
                    case 8:
                        return _finishFieldWithEscape();
                    case 9:
                        return _finishAposName(this._quadLength, this._pending32, this._pendingBytes);
                    case 10:
                        return _finishUnquotedName(this._quadLength, this._pending32, this._pendingBytes);
                    default:
                        switch (i) {
                            case 12:
                                byte[] bArr3 = this._inputBuffer;
                                int i4 = this._inputPtr;
                                this._inputPtr = i4 + 1;
                                return _startValue(bArr3[i4] & 255);
                            case 13:
                                byte[] bArr4 = this._inputBuffer;
                                int i5 = this._inputPtr;
                                this._inputPtr = i5 + 1;
                                return _startValueExpectComma(bArr4[i5] & 255);
                            case 14:
                                byte[] bArr5 = this._inputBuffer;
                                int i6 = this._inputPtr;
                                this._inputPtr = i6 + 1;
                                return _startValueExpectColon(bArr5[i6] & 255);
                            case 15:
                                byte[] bArr6 = this._inputBuffer;
                                int i7 = this._inputPtr;
                                this._inputPtr = i7 + 1;
                                return _startValueAfterComma(bArr6[i7] & 255);
                            case 16:
                                return _finishKeywordToken(JsonReaderKt.NULL, this._pending32, JsonToken.VALUE_NULL);
                            case 17:
                                return _finishKeywordToken("true", this._pending32, JsonToken.VALUE_TRUE);
                            case 18:
                                return _finishKeywordToken("false", this._pending32, JsonToken.VALUE_FALSE);
                            case 19:
                                return _finishNonStdToken(this._nonStdTokenType, this._pending32);
                            default:
                                switch (i) {
                                    case 23:
                                        byte[] bArr7 = this._inputBuffer;
                                        int i8 = this._inputPtr;
                                        this._inputPtr = i8 + 1;
                                        return _finishNumberMinus(bArr7[i8] & 255);
                                    case 24:
                                        return _finishNumberLeadingZeroes();
                                    case 25:
                                        return _finishNumberLeadingNegZeroes();
                                    case 26:
                                        return _finishNumberIntegralPart(this._textBuffer.getBufferWithoutReset(), this._textBuffer.getCurrentSegmentSize());
                                    default:
                                        switch (i) {
                                            case 30:
                                                return _finishFloatFraction();
                                            case 31:
                                                byte[] bArr8 = this._inputBuffer;
                                                int i9 = this._inputPtr;
                                                this._inputPtr = i9 + 1;
                                                return _finishFloatExponent(true, bArr8[i9] & 255);
                                            case 32:
                                                byte[] bArr9 = this._inputBuffer;
                                                int i10 = this._inputPtr;
                                                this._inputPtr = i10 + 1;
                                                return _finishFloatExponent(false, bArr9[i10] & 255);
                                            default:
                                                switch (i) {
                                                    case 40:
                                                        return _finishRegularString();
                                                    case 41:
                                                        int _decodeSplitEscaped = _decodeSplitEscaped(this._quoted32, this._quotedDigits);
                                                        if (_decodeSplitEscaped < 0) {
                                                            return JsonToken.NOT_AVAILABLE;
                                                        }
                                                        this._textBuffer.append((char) _decodeSplitEscaped);
                                                        return this._minorStateAfterSplit == 45 ? _finishAposString() : _finishRegularString();
                                                    case 42:
                                                        TextBuffer textBuffer = this._textBuffer;
                                                        int i11 = this._pending32;
                                                        byte[] bArr10 = this._inputBuffer;
                                                        int i12 = this._inputPtr;
                                                        this._inputPtr = i12 + 1;
                                                        textBuffer.append((char) _decodeUTF8_2(i11, bArr10[i12]));
                                                        return this._minorStateAfterSplit == 45 ? _finishAposString() : _finishRegularString();
                                                    case 43:
                                                        int i13 = this._pending32;
                                                        int i14 = this._pendingBytes;
                                                        byte[] bArr11 = this._inputBuffer;
                                                        int i15 = this._inputPtr;
                                                        this._inputPtr = i15 + 1;
                                                        return !_decodeSplitUTF8_3(i13, i14, bArr11[i15]) ? JsonToken.NOT_AVAILABLE : this._minorStateAfterSplit == 45 ? _finishAposString() : _finishRegularString();
                                                    case 44:
                                                        int i16 = this._pending32;
                                                        int i17 = this._pendingBytes;
                                                        byte[] bArr12 = this._inputBuffer;
                                                        int i18 = this._inputPtr;
                                                        this._inputPtr = i18 + 1;
                                                        return !_decodeSplitUTF8_4(i16, i17, bArr12[i18]) ? JsonToken.NOT_AVAILABLE : this._minorStateAfterSplit == 45 ? _finishAposString() : _finishRegularString();
                                                    case 45:
                                                        return _finishAposString();
                                                    default:
                                                        switch (i) {
                                                            case 50:
                                                                return _finishErrorToken();
                                                            case 51:
                                                                return _startSlashComment(this._pending32);
                                                            case 52:
                                                                return _finishCComment(this._pending32, true);
                                                            case 53:
                                                                return _finishCComment(this._pending32, false);
                                                            case 54:
                                                                return _finishCppComment(this._pending32);
                                                            case 55:
                                                                return _finishHashComment(this._pending32);
                                                            default:
                                                                VersionUtil.throwInternal();
                                                                return null;
                                                        }
                                                }
                                        }
                                }
                        }
                }
            }
        }
        return _finishBOM(this._pending32);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected final JsonToken _finishTokenWithEOF() throws IOException {
        JsonToken jsonToken = this._currToken;
        int i = this._minorState;
        if (i != 3 && i != 12) {
            if (i == 50) {
                return _finishErrorTokenWithEOF();
            }
            switch (i) {
                case 16:
                    return _finishKeywordTokenWithEOF(JsonReaderKt.NULL, this._pending32, JsonToken.VALUE_NULL);
                case 17:
                    return _finishKeywordTokenWithEOF("true", this._pending32, JsonToken.VALUE_TRUE);
                case 18:
                    return _finishKeywordTokenWithEOF("false", this._pending32, JsonToken.VALUE_FALSE);
                case 19:
                    return _finishNonStdTokenWithEOF(this._nonStdTokenType, this._pending32);
                default:
                    switch (i) {
                        case 24:
                        case 25:
                            return _valueCompleteInt(0, "0");
                        case 26:
                            int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
                            int i2 = currentSegmentSize;
                            if (this._numberNegative) {
                                i2 = currentSegmentSize - 1;
                            }
                            this._intLength = i2;
                            return _valueComplete(JsonToken.VALUE_NUMBER_INT);
                        default:
                            switch (i) {
                                case 30:
                                    this._expLength = 0;
                                    return _valueComplete(JsonToken.VALUE_NUMBER_FLOAT);
                                case 31:
                                    _reportInvalidEOF(": was expecting fraction after exponent marker", JsonToken.VALUE_NUMBER_FLOAT);
                                    _reportInvalidEOF(": was expecting closing '*/' for comment", JsonToken.NOT_AVAILABLE);
                                    return _eofAsNextToken();
                                case 32:
                                    return _valueComplete(JsonToken.VALUE_NUMBER_FLOAT);
                                default:
                                    switch (i) {
                                        case 52:
                                        case 53:
                                            _reportInvalidEOF(": was expecting closing '*/' for comment", JsonToken.NOT_AVAILABLE);
                                            break;
                                        case 54:
                                        case 55:
                                            break;
                                        default:
                                            _reportInvalidEOF(": was expecting rest of token (internal state: " + this._minorState + ")", this._currToken);
                                            return jsonToken;
                                    }
                                    return _eofAsNextToken();
                            }
                    }
            }
        }
        return _eofAsNextToken();
    }

    protected JsonToken _reportErrorToken(String str) throws IOException {
        _reportError("Unrecognized token '%s': was expecting %s", this._textBuffer.contentsAsString(), _validJsonTokenList());
        return JsonToken.NOT_AVAILABLE;
    }

    protected JsonToken _startAposString() throws IOException {
        int i = this._inputPtr;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i);
        byte[] bArr = this._inputBuffer;
        int i2 = 0;
        while (i < min) {
            int i3 = bArr[i] & 255;
            if (i3 != 39) {
                if (iArr[i3] != 0) {
                    break;
                }
                i++;
                emptyAndGetCurrentSegment[i2] = (char) i3;
                i2++;
            } else {
                this._inputPtr = i + 1;
                this._textBuffer.setCurrentLength(i2);
                return _valueComplete(JsonToken.VALUE_STRING);
            }
        }
        this._textBuffer.setCurrentLength(i2);
        this._inputPtr = i;
        return _finishAposString();
    }

    protected JsonToken _startFalseToken() throws IOException {
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
                            return _valueComplete(JsonToken.VALUE_FALSE);
                        }
                    }
                }
            }
        }
        this._minorState = 18;
        return _finishKeywordToken("false", 1, JsonToken.VALUE_FALSE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f9, code lost:
        if (r14 == 69) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0174, code lost:
        if (r0 == 43) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x025b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0239 -> B:47:0x01dd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _startFloat(char[] r5, int r6, int r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.NonBlockingJsonParser._startFloat(char[], int, int):com.fasterxml.jackson.core.JsonToken");
    }

    protected JsonToken _startFloatThatStartsWithPeriod() throws IOException {
        this._numberNegative = false;
        this._intLength = 0;
        return _startFloat(this._textBuffer.emptyAndGetCurrentSegment(), 0, 46);
    }

    protected JsonToken _startNegativeNumber() throws IOException {
        this._numberNegative = true;
        if (this._inputPtr >= this._inputEnd) {
            this._minorState = 23;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & 255;
        int i3 = 2;
        if (i2 <= 48) {
            if (i2 == 48) {
                return _finishNumberLeadingNegZeroes();
            }
            reportUnexpectedNumberChar(i2, "expected digit (0-9) to follow minus sign, for valid numeric value");
        } else if (i2 > 57) {
            if (i2 == 73) {
                return _finishNonStdToken(3, 2);
            }
            reportUnexpectedNumberChar(i2, "expected digit (0-9) to follow minus sign, for valid numeric value");
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = (char) 45;
        emptyAndGetCurrentSegment[1] = (char) i2;
        if (this._inputPtr >= this._inputEnd) {
            this._minorState = 26;
            this._textBuffer.setCurrentLength(2);
            this._intLength = 1;
            JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken2;
            return jsonToken2;
        }
        byte b = this._inputBuffer[this._inputPtr];
        while (true) {
            if (b < 48) {
                if (b == 46) {
                    this._intLength = i3 - 1;
                    this._inputPtr++;
                    return _startFloat(emptyAndGetCurrentSegment, i3, b);
                }
            } else if (b <= 57) {
                char[] cArr = emptyAndGetCurrentSegment;
                if (i3 >= emptyAndGetCurrentSegment.length) {
                    cArr = this._textBuffer.expandCurrentSegment();
                }
                int i4 = i3 + 1;
                cArr[i3] = (char) b;
                int i5 = this._inputPtr + 1;
                this._inputPtr = i5;
                if (i5 >= this._inputEnd) {
                    this._minorState = 26;
                    this._textBuffer.setCurrentLength(i4);
                    JsonToken jsonToken3 = JsonToken.NOT_AVAILABLE;
                    this._currToken = jsonToken3;
                    return jsonToken3;
                }
                b = this._inputBuffer[this._inputPtr] & 255;
                i3 = i4;
                emptyAndGetCurrentSegment = cArr;
            } else if (b == 101 || b == 69) {
                this._intLength = i3 - 1;
                this._inputPtr++;
                return _startFloat(emptyAndGetCurrentSegment, i3, b);
            }
        }
        this._intLength = i3 - 1;
        this._textBuffer.setCurrentLength(i3);
        return _valueComplete(JsonToken.VALUE_NUMBER_INT);
    }

    protected JsonToken _startNullToken() throws IOException {
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
                        return _valueComplete(JsonToken.VALUE_NULL);
                    }
                }
            }
        }
        this._minorState = 16;
        return _finishKeywordToken(JsonReaderKt.NULL, 1, JsonToken.VALUE_NULL);
    }

    protected JsonToken _startNumberLeadingZero() throws IOException {
        int i = this._inputPtr;
        if (i >= this._inputEnd) {
            this._minorState = 24;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        int i2 = i + 1;
        int i3 = this._inputBuffer[i] & 255;
        if (i3 < 48) {
            if (i3 == 46) {
                this._inputPtr = i2;
                this._intLength = 1;
                char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
                emptyAndGetCurrentSegment[0] = (char) 48;
                return _startFloat(emptyAndGetCurrentSegment, 1, i3);
            }
        } else if (i3 <= 57) {
            return _finishNumberLeadingZeroes();
        } else {
            if (i3 == 101 || i3 == 69) {
                this._inputPtr = i2;
                this._intLength = 1;
                char[] emptyAndGetCurrentSegment2 = this._textBuffer.emptyAndGetCurrentSegment();
                emptyAndGetCurrentSegment2[0] = (char) 48;
                return _startFloat(emptyAndGetCurrentSegment2, 1, i3);
            } else if (i3 != 93 && i3 != 125) {
                reportUnexpectedNumberChar(i3, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
            }
        }
        return _valueCompleteInt(0, "0");
    }

    protected JsonToken _startPositiveNumber(int i) throws IOException {
        this._numberNegative = false;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = (char) i;
        if (this._inputPtr >= this._inputEnd) {
            this._minorState = 26;
            this._textBuffer.setCurrentLength(1);
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        int i2 = this._inputBuffer[this._inputPtr] & 255;
        int i3 = 1;
        while (true) {
            if (i2 < 48) {
                if (i2 == 46) {
                    this._intLength = i3;
                    this._inputPtr++;
                    return _startFloat(emptyAndGetCurrentSegment, i3, i2);
                }
            } else if (i2 <= 57) {
                char[] cArr = emptyAndGetCurrentSegment;
                if (i3 >= emptyAndGetCurrentSegment.length) {
                    cArr = this._textBuffer.expandCurrentSegment();
                }
                int i4 = i3 + 1;
                cArr[i3] = (char) i2;
                int i5 = this._inputPtr + 1;
                this._inputPtr = i5;
                if (i5 >= this._inputEnd) {
                    this._minorState = 26;
                    this._textBuffer.setCurrentLength(i4);
                    JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                    this._currToken = jsonToken2;
                    return jsonToken2;
                }
                i2 = this._inputBuffer[this._inputPtr] & 255;
                i3 = i4;
                emptyAndGetCurrentSegment = cArr;
            } else if (i2 == 101 || i2 == 69) {
                this._intLength = i3;
                this._inputPtr++;
                return _startFloat(emptyAndGetCurrentSegment, i3, i2);
            }
        }
        this._intLength = i3;
        this._textBuffer.setCurrentLength(i3);
        return _valueComplete(JsonToken.VALUE_NUMBER_INT);
    }

    protected JsonToken _startString() throws IOException {
        int i = this._inputPtr;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i);
        byte[] bArr = this._inputBuffer;
        int i2 = 0;
        while (true) {
            if (i >= min) {
                break;
            }
            int i3 = bArr[i] & 255;
            if (iArr[i3] == 0) {
                i++;
                emptyAndGetCurrentSegment[i2] = (char) i3;
                i2++;
            } else if (i3 == 34) {
                this._inputPtr = i + 1;
                this._textBuffer.setCurrentLength(i2);
                return _valueComplete(JsonToken.VALUE_STRING);
            }
        }
        this._textBuffer.setCurrentLength(i2);
        this._inputPtr = i;
        return _finishRegularString();
    }

    protected JsonToken _startTrueToken() throws IOException {
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
                        return _valueComplete(JsonToken.VALUE_TRUE);
                    }
                }
            }
        }
        this._minorState = 17;
        return _finishKeywordToken("true", 1, JsonToken.VALUE_TRUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        if (r6 != 44) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003b, code lost:
        if (r4._parsingContext.inArray() != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
        if (r4._parsingContext.inRoot() != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
        if ((r4._features & com.fasterxml.jackson.core.json.async.NonBlockingJsonParser.FEAT_MASK_ALLOW_MISSING) == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
        r4._inputPtr--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        return _valueComplete(com.fasterxml.jackson.core.JsonToken.VALUE_NULL);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.core.JsonToken _startUnexpectedValue(boolean r5, int r6) throws java.io.IOException {
        /*
            r4 = this;
            r0 = r6
            r1 = 39
            if (r0 == r1) goto L73
            r0 = r6
            r1 = 73
            if (r0 == r1) goto L6c
            r0 = r6
            r1 = 78
            if (r0 == r1) goto L65
            r0 = r6
            r1 = 93
            if (r0 == r1) goto L34
            r0 = r6
            r1 = 125(0x7d, float:1.75E-43)
            if (r0 == r1) goto L83
            r0 = r6
            r1 = 43
            if (r0 == r1) goto L2d
            r0 = r6
            r1 = 44
            if (r0 == r1) goto L3e
            goto L83
        L2d:
            r0 = r4
            r1 = 2
            r2 = 1
            com.fasterxml.jackson.core.JsonToken r0 = r0._finishNonStdToken(r1, r2)
            return r0
        L34:
            r0 = r4
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r0._parsingContext
            boolean r0 = r0.inArray()
            if (r0 == 0) goto L83
        L3e:
            r0 = r4
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r0._parsingContext
            boolean r0 = r0.inRoot()
            if (r0 != 0) goto L83
            r0 = r4
            int r0 = r0._features
            int r1 = com.fasterxml.jackson.core.json.async.NonBlockingJsonParser.FEAT_MASK_ALLOW_MISSING
            r0 = r0 & r1
            if (r0 == 0) goto L83
            r0 = r4
            r1 = r4
            int r1 = r1._inputPtr
            r2 = 1
            int r1 = r1 - r2
            r0._inputPtr = r1
            r0 = r4
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.VALUE_NULL
            com.fasterxml.jackson.core.JsonToken r0 = r0._valueComplete(r1)
            return r0
        L65:
            r0 = r4
            r1 = 0
            r2 = 1
            com.fasterxml.jackson.core.JsonToken r0 = r0._finishNonStdToken(r1, r2)
            return r0
        L6c:
            r0 = r4
            r1 = 1
            r2 = 1
            com.fasterxml.jackson.core.JsonToken r0 = r0._finishNonStdToken(r1, r2)
            return r0
        L73:
            r0 = r4
            int r0 = r0._features
            int r1 = com.fasterxml.jackson.core.json.async.NonBlockingJsonParser.FEAT_MASK_ALLOW_SINGLE_QUOTES
            r0 = r0 & r1
            if (r0 == 0) goto L83
            r0 = r4
            com.fasterxml.jackson.core.JsonToken r0 = r0._startAposString()
            return r0
        L83:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "expected a valid value "
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = r4
            java.lang.String r1 = r1._validJsonValueList()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r6
            r2 = r7
            java.lang.String r2 = r2.toString()
            r0._reportUnexpectedChar(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.NonBlockingJsonParser._startUnexpectedValue(boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    public void endOfInput() {
        this._endOfInput = true;
    }

    public void feedInput(byte[] bArr, int i, int i2) throws IOException {
        if (this._inputPtr < this._inputEnd) {
            _reportError("Still have %d undecoded bytes, should not call 'feedInput'", Integer.valueOf(this._inputEnd - this._inputPtr));
        }
        if (i2 < i) {
            _reportError("Input end (%d) may not be before start (%d)", Integer.valueOf(i2), Integer.valueOf(i));
        }
        if (this._endOfInput) {
            _reportError("Already closed, can not feed more input");
        }
        this._currInputProcessed += this._origBufferLen;
        this._currInputRowStart = i - (this._inputEnd - this._currInputRowStart);
        this._currBufferStart = i;
        this._inputBuffer = bArr;
        this._inputPtr = i;
        this._inputEnd = i2;
        this._origBufferLen = i2 - i;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ByteArrayFeeder getNonBlockingInputFeeder() {
        return this;
    }

    public final boolean needMoreInput() {
        return this._inputPtr >= this._inputEnd && !this._endOfInput;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            if (this._closed) {
                return null;
            }
            return this._endOfInput ? this._currToken == JsonToken.NOT_AVAILABLE ? _finishTokenWithEOF() : _eofAsNextToken() : JsonToken.NOT_AVAILABLE;
        } else if (this._currToken == JsonToken.NOT_AVAILABLE) {
            return _finishToken();
        } else {
            this._numTypesValid = 0;
            this._tokenInputTotal = this._currInputProcessed + this._inputPtr;
            this._binaryValue = null;
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            switch (this._majorState) {
                case 0:
                    return _startDocument(i2);
                case 1:
                    return _startValue(i2);
                case 2:
                    return _startFieldName(i2);
                case 3:
                    return _startFieldNameAfterComma(i2);
                case 4:
                    return _startValueExpectColon(i2);
                case 5:
                    return _startValue(i2);
                case 6:
                    return _startValueExpectComma(i2);
                default:
                    VersionUtil.throwInternal();
                    return null;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.json.async.NonBlockingJsonParserBase, com.fasterxml.jackson.core.JsonParser
    public int releaseBuffered(OutputStream outputStream) throws IOException {
        int i = this._inputEnd - this._inputPtr;
        if (i > 0) {
            outputStream.write(this._inputBuffer, this._inputPtr, i);
        }
        return i;
    }
}
