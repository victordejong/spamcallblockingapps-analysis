package com.fasterxml.jackson.core.json;

import androidx.media.AudioAttributesCompat;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.p049io.CharTypes;
import com.fasterxml.jackson.core.p049io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/json/UTF8StreamJsonParser.class */
public class UTF8StreamJsonParser extends ParserBase {
    public boolean _bufferRecyclable;
    public byte[] _inputBuffer;
    public InputStream _inputStream;
    public int _nameStartCol;
    public int _nameStartOffset;
    public int _nameStartRow;
    public ObjectCodec _objectCodec;
    public int _quad1;
    public int[] _quadBuffer = new int[16];
    public final ByteQuadsCanonicalizer _symbols;
    public boolean _tokenIncomplete;
    public static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    public static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    public UTF8StreamJsonParser(IOContext iOContext, int i, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i2, int i3, boolean z) {
        super(iOContext, i);
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputBuffer = bArr;
        this._inputPtr = i2;
        this._inputEnd = i3;
        this._currInputRowStart = i2;
        this._currInputProcessed = -i2;
        this._bufferRecyclable = z;
    }

    public static int[] growArrayBy(int[] iArr, int i) {
        return iArr == null ? new int[i] : Arrays.copyOf(iArr, iArr.length + i);
    }

    public static final int pad(int i, int i2) {
        if (i2 != 4) {
            i |= (-1) << (i2 << 3);
        }
        return i;
    }

    public final void _checkMatchEnd(String str, int i, int i2) throws IOException {
        if (Character.isJavaIdentifierPart((char) _decodeCharForError(i2))) {
            _reportInvalidToken(str.substring(0, i));
        }
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

    public final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
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
                    int _decodeBase64Escape = _decodeBase64Escape(base64Variant, i2, 0);
                    i3 = _decodeBase64Escape;
                    if (_decodeBase64Escape < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
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
                    loadMoreGuaranteed();
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
                        if (i9 != 34 || base64Variant.usesPadding()) {
                            i11 = _decodeBase64Escape(base64Variant, i9, 2);
                        } else {
                            _getByteArrayBuilder.append(i7 >> 4);
                            return _getByteArrayBuilder.toByteArray();
                        }
                    }
                    i10 = i11;
                    if (i11 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            loadMoreGuaranteed();
                        }
                        byte[] bArr4 = this._inputBuffer;
                        int i12 = this._inputPtr;
                        this._inputPtr = i12 + 1;
                        int i13 = bArr4[i12] & 255;
                        if (base64Variant.usesPaddingChar(i13)) {
                            _getByteArrayBuilder.append(i7 >> 4);
                        } else {
                            throw reportInvalidBase64Char(base64Variant, i13, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                    }
                }
                int i14 = (i7 << 6) | i10;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
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
                        if (i16 != 34 || base64Variant.usesPadding()) {
                            i18 = _decodeBase64Escape(base64Variant, i16, 3);
                        } else {
                            _getByteArrayBuilder.appendTwoBytes(i14 >> 2);
                            return _getByteArrayBuilder.toByteArray();
                        }
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
    public int _decodeCharForError(int r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._decodeCharForError(int):int");
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public char _decodeEscaped() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in character escape sequence");
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
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in character escape sequence");
            }
            byte[] bArr2 = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            byte b2 = bArr2[i4];
            int charToHex = CharTypes.charToHex(b2);
            if (charToHex < 0) {
                _reportUnexpectedChar(b2, "expected a hex-digit for character escape sequence");
            }
            i2 = (i2 << 4) | charToHex;
        }
        return (char) i2;
    }

    public final int _decodeUtf8_2(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
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

    public final int _decodeUtf8_3(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
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

    public final int _decodeUtf8_3fast(int i) throws IOException {
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

    public final int _decodeUtf8_4(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
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

    public String _finishAndReturnString() throws IOException {
        int i = this._inputPtr;
        int i2 = i;
        if (i >= this._inputEnd) {
            loadMoreGuaranteed();
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

    public void _finishString() throws IOException {
        int i = this._inputPtr;
        int i2 = i;
        if (i >= this._inputEnd) {
            loadMoreGuaranteed();
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

    public final void _finishString2(char[] cArr, int i) throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        char[] cArr2 = cArr;
        while (true) {
            int i2 = this._inputPtr;
            int i3 = i2;
            if (i2 >= this._inputEnd) {
                loadMoreGuaranteed();
                i3 = this._inputPtr;
            }
            char[] cArr3 = cArr2;
            int i4 = i;
            if (i >= cArr2.length) {
                cArr3 = this._textBuffer.finishCurrentSegment();
                i4 = 0;
            }
            int min = Math.min(this._inputEnd, (cArr3.length - i4) + i3);
            while (true) {
                if (i3 >= min) {
                    this._inputPtr = i3;
                    cArr2 = cArr3;
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
                        i6 = _decodeEscaped();
                    } else if (i7 == 2) {
                        i6 = _decodeUtf8_2(i6);
                    } else if (i7 == 3) {
                        i6 = this._inputEnd - this._inputPtr >= 2 ? _decodeUtf8_3fast(i6) : _decodeUtf8_3(i6);
                    } else if (i7 == 4) {
                        int _decodeUtf8_4 = _decodeUtf8_4(i6);
                        int i8 = i4 + 1;
                        cArr3[i4] = (char) (55296 | (_decodeUtf8_4 >> 10));
                        i4 = i8;
                        cArr3 = cArr3;
                        if (i8 >= cArr3.length) {
                            cArr3 = this._textBuffer.finishCurrentSegment();
                            i4 = 0;
                        }
                        i6 = (_decodeUtf8_4 & AudioAttributesCompat.FLAG_ALL) | GeneratorBase.SURR2_FIRST;
                    } else if (i6 < 32) {
                        _throwUnquotedSpace(i6, "string value");
                    } else {
                        _reportInvalidChar(i6);
                    }
                    cArr2 = cArr3;
                    int i9 = i4;
                    if (i4 >= cArr3.length) {
                        cArr2 = this._textBuffer.finishCurrentSegment();
                        i9 = 0;
                    }
                    cArr2[i9] = (char) i6;
                    i = i9 + 1;
                } else {
                    cArr3[i4] = (char) i6;
                    i3 = i5;
                    i4++;
                }
            }
        }
    }

    public final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        int id = jsonToken.m33768id();
        return id != 5 ? (id == 6 || id == 7 || id == 8) ? this._textBuffer.contentsAsString() : jsonToken.asString() : this._parsingContext.getCurrentName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b1, code lost:
        if (r0 != 39) goto L_0x00c1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b4, code lost:
        r6._textBuffer.setCurrentLength(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c0, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_STRING;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c1, code lost:
        r0 = r0[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ca, code lost:
        if (r0 == 1) goto L_0x0195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d0, code lost:
        if (r0 == 2) goto L_0x0183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d6, code lost:
        if (r0 == 3) goto L_0x0152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00dc, code lost:
        if (r0 == 4) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e3, code lost:
        if (r0 >= 32) goto L_0x00ef;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e6, code lost:
        _throwUnquotedSpace(r0, "string value");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ef, code lost:
        _reportInvalidChar(r0);
        r7 = r11;
        r12 = r14;
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0103, code lost:
        r0 = _decodeUtf8_4(r0);
        r0 = r14 + 1;
        r11[r14] = (char) (55296 | (r0 >> 10));
        r7 = r11;
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x012d, code lost:
        if (r0 < r11.length) goto L_0x013b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0130, code lost:
        r7 = r6._textBuffer.finishCurrentSegment();
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x013b, code lost:
        r10 = 56320 | (r0 & androidx.media.AudioAttributesCompat.FLAG_ALL);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x015c, code lost:
        if ((r6._inputEnd - r6._inputPtr) < 2) goto L_0x0171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x015f, code lost:
        r10 = _decodeUtf8_3fast(r0);
        r7 = r11;
        r12 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0171, code lost:
        r10 = _decodeUtf8_3(r0);
        r7 = r11;
        r12 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0183, code lost:
        r10 = _decodeUtf8_2(r0);
        r7 = r11;
        r12 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0195, code lost:
        r7 = r11;
        r12 = r14;
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01a4, code lost:
        if (r0 == 39) goto L_0x01b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01a7, code lost:
        r10 = _decodeEscaped();
        r12 = r14;
        r7 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01b4, code lost:
        r11 = r7;
        r14 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01bf, code lost:
        if (r12 < r7.length) goto L_0x01ce;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01c2, code lost:
        r11 = r6._textBuffer.finishCurrentSegment();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01ce, code lost:
        r11[r14] = (char) r10;
        r10 = r14 + 1;
        r7 = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken _handleApos() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleApos():com.fasterxml.jackson.core.JsonToken");
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c2, code lost:
        reportUnexpectedNumberChar(r8, "expected digit (0-9) to follow minus sign, for valid numeric value");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cb, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken _handleInvalidNumberStart(int r6, boolean r7) throws java.io.IOException {
        /*
            r5 = this;
        L_0x0000:
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 73
            if (r0 != r1) goto L_0x00c2
            r0 = r5
            int r0 = r0._inputPtr
            r1 = r5
            int r1 = r1._inputEnd
            if (r0 < r1) goto L_0x001e
            r0 = r5
            boolean r0 = r0.loadMore()
            if (r0 != 0) goto L_0x001e
            r0 = r5
            r0._reportInvalidEOFInValue()
        L_0x001e:
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
            if (r0 != r1) goto L_0x004f
            r0 = r7
            if (r0 == 0) goto L_0x0047
            java.lang.String r0 = "-INF"
            r9 = r0
            goto L_0x0068
        L_0x0047:
            java.lang.String r0 = "+INF"
            r9 = r0
            goto L_0x0068
        L_0x004f:
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 110(0x6e, float:1.54E-43)
            if (r0 != r1) goto L_0x00c2
            r0 = r7
            if (r0 == 0) goto L_0x0063
            java.lang.String r0 = "-Infinity"
            r9 = r0
            goto L_0x0068
        L_0x0063:
            java.lang.String r0 = "+Infinity"
            r9 = r0
        L_0x0068:
            r0 = r5
            r1 = r9
            r2 = 3
            r0._matchToken(r1, r2)
            r0 = r5
            com.fasterxml.jackson.core.JsonParser$Feature r1 = com.fasterxml.jackson.core.JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS
            boolean r0 = r0.isEnabled(r1)
            if (r0 == 0) goto L_0x0093
            r0 = r7
            if (r0 == 0) goto L_0x0085
            r0 = -4503599627370496(0xfff0000000000000, double:-Infinity)
            r10 = r0
            goto L_0x008a
        L_0x0085:
            r0 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            r10 = r0
        L_0x008a:
            r0 = r5
            r1 = r9
            r2 = r10
            com.fasterxml.jackson.core.JsonToken r0 = r0.resetAsNaN(r1, r2)
            return r0
        L_0x0093:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "Non-standard token '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            java.lang.String r1 = "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r12
            java.lang.String r1 = r1.toString()
            r0._reportError(r1)
            goto L_0x0000
        L_0x00c2:
            r0 = r5
            r1 = r8
            java.lang.String r2 = "expected digit (0-9) to follow minus sign, for valid numeric value"
            r0.reportUnexpectedNumberChar(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleInvalidNumberStart(int, boolean):com.fasterxml.jackson.core.JsonToken");
    }

    public String _handleOddName(int i) throws IOException {
        int[] iArr;
        int i2;
        if (i == 39 && isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return _parseAposName();
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            _reportUnexpectedChar((char) _decodeCharForError(i), "was expecting double-quote to start field name");
        }
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        if (inputCodeUtf8JsNames[i] != 0) {
            _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int[] iArr2 = this._quadBuffer;
        int i3 = 0;
        int i4 = i;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i3 < 4) {
                i2 = i3 + 1;
                i6 = (i6 << 8) | i4;
                iArr = iArr2;
            } else {
                iArr = iArr2;
                if (i5 >= iArr2.length) {
                    iArr = growArrayBy(iArr2, iArr2.length);
                    this._quadBuffer = iArr;
                }
                iArr[i5] = i6;
                i5++;
                i2 = 1;
                i6 = i4;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            byte[] bArr = this._inputBuffer;
            int i7 = this._inputPtr;
            int i8 = bArr[i7] & 255;
            if (inputCodeUtf8JsNames[i8] != 0) {
                break;
            }
            this._inputPtr = i7 + 1;
            iArr2 = iArr;
            i3 = i2;
            i4 = i8;
        }
        int[] iArr3 = iArr;
        int i9 = i5;
        if (i2 > 0) {
            iArr3 = iArr;
            if (i5 >= iArr.length) {
                iArr3 = growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr3;
            }
            iArr3[i5] = i6;
            i9 = i5 + 1;
        }
        String findName = this._symbols.findName(iArr3, i9);
        String str = findName;
        if (findName == null) {
            str = addName(iArr3, i9, i2);
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken _handleUnexpectedValue(int r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleUnexpectedValue(int):com.fasterxml.jackson.core.JsonToken");
    }

    public final boolean _isNextTokenNameMaybe(int i, SerializableString serializableString) throws IOException {
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
        } else if (_skipColon == 91) {
            jsonToken = JsonToken.START_ARRAY;
        } else if (_skipColon == 102) {
            _matchToken("false", 1);
            jsonToken = JsonToken.VALUE_FALSE;
        } else if (_skipColon == 110) {
            _matchToken(C14247d.f31851f, 1);
            jsonToken = JsonToken.VALUE_NULL;
        } else if (_skipColon == 116) {
            _matchToken("true", 1);
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

    public final void _isNextTokenNameYes(int i) throws IOException {
        this._currToken = JsonToken.FIELD_NAME;
        _updateLocation();
        if (i == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
        } else if (i == 45) {
            this._nextToken = _parseNegNumber();
        } else if (i == 91) {
            this._nextToken = JsonToken.START_ARRAY;
        } else if (i == 102) {
            _matchToken("false", 1);
            this._nextToken = JsonToken.VALUE_FALSE;
        } else if (i == 110) {
            _matchToken(C14247d.f31851f, 1);
            this._nextToken = JsonToken.VALUE_NULL;
        } else if (i == 116) {
            _matchToken("true", 1);
            this._nextToken = JsonToken.VALUE_TRUE;
        } else if (i != 123) {
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
        } else {
            this._nextToken = JsonToken.START_OBJECT;
        }
    }

    public final void _matchToken(String str, int i) throws IOException {
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
        if (i4 >= 48 && i4 != 93 && i4 != 125) {
            _checkMatchEnd(str, i2, i4);
        }
    }

    public final void _matchToken2(String str, int i) throws IOException {
        int i2;
        int i3;
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i2 = i + 1;
            i = i2;
        } while (i2 < length);
        if ((this._inputPtr < this._inputEnd || loadMore()) && (i3 = this._inputBuffer[this._inputPtr] & 255) >= 48 && i3 != 93 && i3 != 125) {
            _checkMatchEnd(str, i2, i3);
        }
    }

    public final JsonToken _nextAfterName() {
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

    public final JsonToken _nextTokenNotInObject(int i) throws IOException {
        if (i == 34) {
            this._tokenIncomplete = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this._currToken = jsonToken;
            return jsonToken;
        } else if (i == 45) {
            JsonToken _parseNegNumber = _parseNegNumber();
            this._currToken = _parseNegNumber;
            return _parseNegNumber;
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
            _matchToken(C14247d.f31851f, 1);
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this._currToken = jsonToken4;
            return jsonToken4;
        } else if (i == 116) {
            _matchToken("true", 1);
            JsonToken jsonToken5 = JsonToken.VALUE_TRUE;
            this._currToken = jsonToken5;
            return jsonToken5;
        } else if (i != 123) {
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
        } else {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            JsonToken jsonToken6 = JsonToken.START_OBJECT;
            this._currToken = jsonToken6;
            return jsonToken6;
        }
    }

    public String _parseAposName() throws IOException {
        int i;
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(": was expecting closing ''' for name");
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (i3 == 39) {
            return "";
        }
        int[] iArr = this._quadBuffer;
        int[] iArr2 = _icLatin1;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i3 != 39) {
            int i7 = i3;
            int i8 = i4;
            int i9 = i5;
            int[] iArr3 = iArr;
            int i10 = i6;
            if (i3 != 34) {
                i7 = i3;
                i8 = i4;
                i9 = i5;
                iArr3 = iArr;
                i10 = i6;
                if (iArr2[i3] != 0) {
                    if (i3 != 92) {
                        _throwUnquotedSpace(i3, "name");
                        i = i3;
                    } else {
                        i = _decodeEscaped();
                    }
                    i7 = i;
                    i8 = i4;
                    i9 = i5;
                    iArr3 = iArr;
                    i10 = i6;
                    if (i > 127) {
                        int i11 = i4;
                        i9 = i5;
                        int[] iArr4 = iArr;
                        int i12 = i6;
                        if (i4 >= 4) {
                            iArr4 = iArr;
                            if (i5 >= iArr.length) {
                                iArr4 = growArrayBy(iArr, iArr.length);
                                this._quadBuffer = iArr4;
                            }
                            iArr4[i5] = i6;
                            i9 = i5 + 1;
                            i11 = 0;
                            i12 = 0;
                        }
                        if (i < 2048) {
                            i10 = (i12 << 8) | (i >> 6) | PsExtractor.AUDIO_STREAM;
                            i8 = i11 + 1;
                            iArr3 = iArr4;
                        } else {
                            int i13 = (i12 << 8) | (i >> 12) | 224;
                            int i14 = i11 + 1;
                            int i15 = i14;
                            i9 = i9;
                            iArr3 = iArr4;
                            int i16 = i13;
                            if (i14 >= 4) {
                                iArr3 = iArr4;
                                if (i9 >= iArr4.length) {
                                    iArr3 = growArrayBy(iArr4, iArr4.length);
                                    this._quadBuffer = iArr3;
                                }
                                iArr3[i9] = i13;
                                i9++;
                                i15 = 0;
                                i16 = 0;
                            }
                            i10 = (i16 << 8) | ((i >> 6) & 63) | 128;
                            i8 = i15 + 1;
                        }
                        i7 = (i & 63) | 128;
                    }
                }
            }
            if (i8 < 4) {
                i4 = i8 + 1;
                i6 = i7 | (i10 << 8);
                i5 = i9;
                iArr = iArr3;
            } else {
                iArr = iArr3;
                if (i9 >= iArr3.length) {
                    iArr = growArrayBy(iArr3, iArr3.length);
                    this._quadBuffer = iArr;
                }
                iArr[i9] = i10;
                i6 = i7;
                i5 = i9 + 1;
                i4 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            byte[] bArr2 = this._inputBuffer;
            int i17 = this._inputPtr;
            this._inputPtr = i17 + 1;
            i3 = bArr2[i17] & 255;
        }
        if (i4 > 0) {
            int[] iArr5 = iArr;
            if (i5 >= iArr.length) {
                iArr5 = growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr5;
            }
            i5++;
            iArr5[i5] = pad(i6, i4);
            iArr = iArr5;
        }
        String findName = this._symbols.findName(iArr, i5);
        String str = findName;
        if (findName == null) {
            str = addName(iArr, i5, i4);
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00da, code lost:
        if (r13 == 69) goto L_0x00dd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0143, code lost:
        if (r0 == 43) goto L_0x014f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.core.JsonToken _parseFloat(char[] r7, int r8, int r9, boolean r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseFloat(char[], int, int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    public final String _parseName(int i) throws IOException {
        if (i != 34) {
            return _handleOddName(i);
        }
        int i2 = this._inputPtr;
        if (i2 + 13 > this._inputEnd) {
            return slowParseName();
        }
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
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

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d5, code lost:
        if (r0 == 46) goto L_0x0114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00dc, code lost:
        if (r0 == 101) goto L_0x0114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e3, code lost:
        if (r0 != 69) goto L_0x00e9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e9, code lost:
        r7._inputPtr--;
        r7._textBuffer.setCurrentLength(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0103, code lost:
        if (r7._parsingContext.inRoot() == false) goto L_0x010c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0106, code lost:
        _verifyRootSpace(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0113, code lost:
        return resetInt(true, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0120, code lost:
        return _parseFloat(r0, r12, r0, true, r11);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken _parseNegNumber() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseNegNumber():com.fasterxml.jackson.core.JsonToken");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0085, code lost:
        if (r0 == 46) goto L_0x00d9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008c, code lost:
        if (r0 == 101) goto L_0x00d9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0093, code lost:
        if (r0 != 69) goto L_0x0099;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0099, code lost:
        r7._inputPtr--;
        r7._textBuffer.setCurrentLength(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b2, code lost:
        if (r7._parsingContext.inRoot() == false) goto L_0x00d1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
        r0 = r7._inputBuffer;
        r0 = r7._inputPtr;
        r7._inputPtr = r0 + 1;
        _verifyRootSpace(r0[r0] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d8, code lost:
        return resetInt(r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e4, code lost:
        return _parseFloat(r8, r9, r0, r10, r11);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.core.JsonToken _parseNumber2(char[] r8, int r9, boolean r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseNumber2(char[], int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    public JsonToken _parsePosNumber(int i) throws IOException {
        int i2;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i3 = i;
        if (i == 48) {
            i3 = _verifyNoLeadingZeroes();
        }
        emptyAndGetCurrentSegment[0] = (char) i3;
        int length = (this._inputPtr + emptyAndGetCurrentSegment.length) - 1;
        int i4 = this._inputEnd;
        int i5 = length;
        if (length > i4) {
            i5 = i4;
        }
        int i6 = 1;
        int i7 = 1;
        while (true) {
            int i8 = this._inputPtr;
            if (i8 >= i5) {
                return _parseNumber2(emptyAndGetCurrentSegment, i6, false, i7);
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i8 + 1;
            i2 = bArr[i8] & 255;
            if (i2 < 48 || i2 > 57) {
                break;
            }
            i7++;
            emptyAndGetCurrentSegment[i6] = (char) i2;
            i6++;
        }
        if (i2 == 46 || i2 == 101 || i2 == 69) {
            return _parseFloat(emptyAndGetCurrentSegment, i6, i2, false, i7);
        }
        this._inputPtr--;
        this._textBuffer.setCurrentLength(i6);
        if (this._parsingContext.inRoot()) {
            _verifyRootSpace(i2);
        }
        return resetInt(false, i7);
    }

    public int _readBinary(Base64Variant base64Variant, OutputStream outputStream, byte[] bArr) throws IOException {
        int i;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            int i5 = bArr2[i4] & 255;
            if (i5 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(i5);
                int i6 = decodeBase64Char;
                if (decodeBase64Char < 0) {
                    if (i5 == 34) {
                        i = i2;
                        break;
                    }
                    int _decodeBase64Escape = _decodeBase64Escape(base64Variant, i5, 0);
                    i6 = _decodeBase64Escape;
                    if (_decodeBase64Escape < 0) {
                        continue;
                    }
                }
                i = i2;
                int i7 = i3;
                if (i3 > length - 3) {
                    i = i2 + i3;
                    outputStream.write(bArr, 0, i3);
                    i7 = 0;
                }
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i8 = this._inputPtr;
                this._inputPtr = i8 + 1;
                int i9 = bArr3[i8] & 255;
                int decodeBase64Char2 = base64Variant.decodeBase64Char(i9);
                int i10 = decodeBase64Char2;
                if (decodeBase64Char2 < 0) {
                    i10 = _decodeBase64Escape(base64Variant, i9, 1);
                }
                int i11 = (i6 << 6) | i10;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr4 = this._inputBuffer;
                int i12 = this._inputPtr;
                this._inputPtr = i12 + 1;
                int i13 = bArr4[i12] & 255;
                int decodeBase64Char3 = base64Variant.decodeBase64Char(i13);
                int i14 = decodeBase64Char3;
                if (decodeBase64Char3 < 0) {
                    int i15 = decodeBase64Char3;
                    if (decodeBase64Char3 != -2) {
                        if (i13 == 34 && !base64Variant.usesPadding()) {
                            bArr[i7] = (byte) (i11 >> 4);
                            i3 = i7 + 1;
                            break;
                        }
                        i15 = _decodeBase64Escape(base64Variant, i13, 2);
                    }
                    i14 = i15;
                    if (i15 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            loadMoreGuaranteed();
                        }
                        byte[] bArr5 = this._inputBuffer;
                        int i16 = this._inputPtr;
                        this._inputPtr = i16 + 1;
                        int i17 = bArr5[i16] & 255;
                        if (base64Variant.usesPaddingChar(i17)) {
                            i3 = i7 + 1;
                            bArr[i7] = (byte) (i11 >> 4);
                            i2 = i;
                        } else {
                            throw reportInvalidBase64Char(base64Variant, i17, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                    }
                }
                int i18 = (i11 << 6) | i14;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr6 = this._inputBuffer;
                int i19 = this._inputPtr;
                this._inputPtr = i19 + 1;
                int i20 = bArr6[i19] & 255;
                int decodeBase64Char4 = base64Variant.decodeBase64Char(i20);
                int i21 = decodeBase64Char4;
                if (decodeBase64Char4 < 0) {
                    int i22 = decodeBase64Char4;
                    if (decodeBase64Char4 != -2) {
                        if (i20 == 34 && !base64Variant.usesPadding()) {
                            int i23 = i18 >> 2;
                            int i24 = i7 + 1;
                            bArr[i7] = (byte) (i23 >> 8);
                            i3 = i24 + 1;
                            bArr[i24] = (byte) i23;
                            break;
                        }
                        i22 = _decodeBase64Escape(base64Variant, i20, 3);
                    }
                    i21 = i22;
                    if (i22 == -2) {
                        int i25 = i18 >> 2;
                        int i26 = i7 + 1;
                        bArr[i7] = (byte) (i25 >> 8);
                        i3 = i26 + 1;
                        bArr[i26] = (byte) i25;
                        i2 = i;
                    }
                }
                int i27 = (i18 << 6) | i21;
                int i28 = i7 + 1;
                bArr[i7] = (byte) (i27 >> 16);
                int i29 = i28 + 1;
                bArr[i28] = (byte) (i27 >> 8);
                i3 = i29 + 1;
                bArr[i29] = (byte) i27;
                i2 = i;
            }
        }
        this._tokenIncomplete = false;
        int i30 = i;
        if (i3 > 0) {
            i30 = i + i3;
            outputStream.write(bArr, 0, i3);
        }
        return i30;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public void _releaseBuffers() throws IOException {
        byte[] bArr;
        super._releaseBuffers();
        this._symbols.release();
        if (this._bufferRecyclable && (bArr = this._inputBuffer) != null) {
            this._inputBuffer = ByteArrayBuilder.NO_BYTES;
            this._ioContext.releaseReadIOBuffer(bArr);
        }
    }

    public void _reportInvalidChar(int i) throws JsonParseException {
        if (i < 32) {
            _throwInvalidSpace(i);
        }
        _reportInvalidInitial(i);
    }

    public void _reportInvalidInitial(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    public void _reportInvalidOther(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    public void _reportInvalidOther(int i, int i2) throws JsonParseException {
        this._inputPtr = i2;
        _reportInvalidOther(i);
    }

    public void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, "'null', 'true', 'false' or NaN");
    }

    public void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
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
        }
        _reportError("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }

    public final void _skipCComment() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & 255;
            int i3 = inputCodeComment[i2];
            if (i3 != 0) {
                if (i3 == 2) {
                    _skipUtf8_2(i2);
                } else if (i3 == 3) {
                    _skipUtf8_3(i2);
                } else if (i3 == 4) {
                    _skipUtf8_4(i2);
                } else if (i3 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i3 != 13) {
                    if (i3 == 42) {
                        if (this._inputPtr >= this._inputEnd && !loadMore()) {
                            break;
                        }
                        byte[] bArr2 = this._inputBuffer;
                        int i4 = this._inputPtr;
                        if (bArr2[i4] == 47) {
                            this._inputPtr = i4 + 1;
                            return;
                        }
                    } else {
                        _reportInvalidChar(i2);
                    }
                } else {
                    _skipCR();
                }
            }
        }
        _reportInvalidEOF(" in a comment");
    }

    public final void _skipCR() throws IOException {
        if (this._inputPtr < this._inputEnd || loadMore()) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            if (bArr[i] == 10) {
                this._inputPtr = i + 1;
            }
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b0, code lost:
        if (r0 == 9) goto L_0x00b3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int _skipColon() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._skipColon():int");
    }

    public final int _skipColon2(boolean z) throws IOException {
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
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
                            if (i2 < 32) {
                                _throwInvalidSpace(i2);
                            }
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
            } else {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        if (r0 == 9) goto L_0x004d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int _skipColonFast(int r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._skipColonFast(int):int");
    }

    public final void _skipComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in a comment");
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

    public final void _skipLine() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                int i2 = bArr[i] & 255;
                int i3 = inputCodeComment[i2];
                if (i3 != 0) {
                    if (i3 == 2) {
                        _skipUtf8_2(i2);
                    } else if (i3 == 3) {
                        _skipUtf8_3(i2);
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

    public void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i = this._inputPtr;
            int i2 = this._inputEnd;
            int i3 = i;
            int i4 = i2;
            if (i >= i2) {
                loadMoreGuaranteed();
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
                    if (i6 != 34) {
                        int i7 = iArr[i6];
                        if (i7 == 1) {
                            _decodeEscaped();
                        } else if (i7 == 2) {
                            _skipUtf8_2(i6);
                        } else if (i7 == 3) {
                            _skipUtf8_3(i6);
                        } else if (i7 == 4) {
                            _skipUtf8_4(i6);
                        } else if (i6 < 32) {
                            _throwUnquotedSpace(i6, "string value");
                        } else {
                            _reportInvalidChar(i6);
                        }
                    } else {
                        return;
                    }
                } else {
                    i3 = i5;
                }
            }
        }
    }

    public final void _skipUtf8_2(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
    }

    public final void _skipUtf8_3(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
    }

    public final void _skipUtf8_4(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b3 = bArr3[i4];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & 255, this._inputPtr);
        }
    }

    public final int _skipWS() throws IOException {
        while (true) {
            int i = this._inputPtr;
            if (i >= this._inputEnd) {
                return _skipWS2();
            }
            byte[] bArr = this._inputBuffer;
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
    }

    public final int _skipWS2() throws IOException {
        int i;
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
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
            } else {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
            }
        }
        return i;
    }

    public final int _skipWSOrEnd() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return _eofAsNextChar();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & 255;
        if (i2 <= 32) {
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
            while (true) {
                int i3 = this._inputPtr;
                if (i3 >= this._inputEnd) {
                    return _skipWSOrEnd2();
                }
                byte[] bArr2 = this._inputBuffer;
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
        } else if (i2 != 47 && i2 != 35) {
            return i2;
        } else {
            this._inputPtr--;
            return _skipWSOrEnd2();
        }
    }

    public final int _skipWSOrEnd2() throws IOException {
        int i;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
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

    public final boolean _skipYAMLComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        _skipLine();
        return true;
    }

    public final void _updateLocation() {
        this._tokenInputRow = this._currInputRow;
        int i = this._inputPtr;
        this._tokenInputTotal = this._currInputProcessed + i;
        this._tokenInputCol = i - this._currInputRowStart;
    }

    public final void _updateNameLocation() {
        this._nameStartRow = this._currInputRow;
        int i = this._inputPtr;
        this._nameStartOffset = i;
        this._nameStartCol = i - this._currInputRowStart;
    }

    public final int _verifyNoLeadingZeroes() throws IOException {
        int i;
        if ((this._inputPtr >= this._inputEnd && !loadMore()) || (i = this._inputBuffer[this._inputPtr] & 255) < 48 || i > 57) {
            return 48;
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
        }
        this._inputPtr++;
        int i2 = i;
        if (i == 48) {
            i2 = i;
            while (true) {
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    break;
                }
                byte[] bArr = this._inputBuffer;
                int i3 = this._inputPtr;
                int i4 = bArr[i3] & 255;
                if (i4 >= 48 && i4 <= 57) {
                    this._inputPtr = i3 + 1;
                    i2 = i4;
                    if (i4 != 48) {
                        i2 = i4;
                        break;
                    }
                } else {
                    return 48;
                }
            }
        }
        return i2;
    }

    public final void _verifyRootSpace(int i) throws IOException {
        this._inputPtr++;
        if (i == 9) {
            return;
        }
        if (i == 10) {
            this._currInputRow++;
            this._currInputRowStart = this._inputPtr;
        } else if (i == 13) {
            _skipCR();
        } else if (i != 32) {
            _reportMissingRootWS(i);
        }
    }

    public final String addName(int[] iArr, int i, int i2) throws JsonParseException {
        int i3;
        int i4;
        int i5;
        int i6 = ((i << 2) - 4) + i2;
        if (i2 < 4) {
            int i7 = i - 1;
            i3 = iArr[i7];
            iArr[i7] = i3 << ((4 - i2) << 3);
        } else {
            i3 = 0;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i8 = 0;
        int i9 = 0;
        while (i8 < i6) {
            int i10 = (iArr[i8 >> 2] >> ((3 - (i8 & 3)) << 3)) & 255;
            int i11 = i8 + 1;
            i8 = i11;
            char[] cArr = emptyAndGetCurrentSegment;
            int i12 = i9;
            int i13 = i10;
            if (i10 > 127) {
                if ((i10 & 224) == 192) {
                    i4 = i10 & 31;
                    i5 = 1;
                } else if ((i10 & 240) == 224) {
                    i4 = i10 & 15;
                    i5 = 2;
                } else if ((i10 & 248) == 240) {
                    i4 = i10 & 7;
                    i5 = 3;
                } else {
                    _reportInvalidInitial(i10);
                    i5 = 1;
                    i4 = 1;
                }
                if (i11 + i5 > i6) {
                    _reportInvalidEOF(" in field name");
                }
                int i14 = iArr[i11 >> 2] >> ((3 - (i11 & 3)) << 3);
                int i15 = i11 + 1;
                if ((i14 & PsExtractor.AUDIO_STREAM) != 128) {
                    _reportInvalidOther(i14);
                }
                int i16 = (i4 << 6) | (i14 & 63);
                if (i5 > 1) {
                    int i17 = iArr[i15 >> 2] >> ((3 - (i15 & 3)) << 3);
                    int i18 = i15 + 1;
                    if ((i17 & PsExtractor.AUDIO_STREAM) != 128) {
                        _reportInvalidOther(i17);
                    }
                    int i19 = (i17 & 63) | (i16 << 6);
                    i16 = i19;
                    i8 = i18;
                    if (i5 > 2) {
                        int i20 = iArr[i18 >> 2] >> ((3 - (i18 & 3)) << 3);
                        i8 = i18 + 1;
                        if ((i20 & PsExtractor.AUDIO_STREAM) != 128) {
                            _reportInvalidOther(i20 & 255);
                        }
                        i16 = (i19 << 6) | (i20 & 63);
                    }
                } else {
                    i8 = i15;
                }
                if (i5 > 2) {
                    int i21 = i16 - 65536;
                    cArr = emptyAndGetCurrentSegment;
                    if (i9 >= emptyAndGetCurrentSegment.length) {
                        cArr = this._textBuffer.expandCurrentSegment();
                    }
                    cArr[i9] = (char) ((i21 >> 10) + GeneratorBase.SURR1_FIRST);
                    i13 = (i21 & AudioAttributesCompat.FLAG_ALL) | GeneratorBase.SURR2_FIRST;
                    i12 = i9 + 1;
                } else {
                    i13 = i16;
                    i12 = i9;
                    cArr = emptyAndGetCurrentSegment;
                }
            }
            emptyAndGetCurrentSegment = cArr;
            if (i12 >= cArr.length) {
                emptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
            }
            emptyAndGetCurrentSegment[i12] = (char) i13;
            i9 = i12 + 1;
        }
        String str = new String(emptyAndGetCurrentSegment, 0, i9);
        if (i2 < 4) {
            iArr[i - 1] = i3;
        }
        return this._symbols.addName(str, iArr, i);
    }

    public final String findName(int i, int i2) throws JsonParseException {
        int pad = pad(i, i2);
        String findName = this._symbols.findName(pad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = pad;
        return addName(iArr, 1, i2);
    }

    public final String findName(int i, int i2, int i3) throws JsonParseException {
        int pad = pad(i2, i3);
        String findName = this._symbols.findName(i, pad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        iArr[1] = pad;
        return addName(iArr, 2, i3);
    }

    public final String findName(int i, int i2, int i3, int i4) throws JsonParseException {
        int pad = pad(i3, i4);
        String findName = this._symbols.findName(i, i2, pad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = pad(pad, i4);
        return addName(iArr, 3, i4);
    }

    public final String findName(int[] iArr, int i, int i2, int i3) throws JsonParseException {
        int[] iArr2 = iArr;
        if (i >= iArr.length) {
            iArr2 = growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr2;
        }
        int i4 = i + 1;
        iArr2[i] = pad(i2, i3);
        String findName = this._symbols.findName(iArr2, i4);
        return findName == null ? addName(iArr2, i4, i3) : findName;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING && (jsonToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null)) {
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

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), this._currInputProcessed + this._inputPtr, -1L, this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._inputStream;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getText() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING) {
            return _getText2(jsonToken);
        }
        if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        }
        this._tokenIncomplete = false;
        return _finishAndReturnString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return null;
        }
        int id = jsonToken.m33768id();
        if (id != 5) {
            if (id != 6) {
                if (!(id == 7 || id == 8)) {
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
            char[] cArr = this._nameCopyBuffer;
            if (cArr == null) {
                this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(length);
            } else if (cArr.length < length) {
                this._nameCopyBuffer = new char[length];
            }
            currentName.getChars(0, length, this._nameCopyBuffer, 0);
            this._nameCopied = true;
        }
        return this._nameCopyBuffer;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return 0;
        }
        int id = jsonToken.m33768id();
        if (id == 5) {
            return this._parsingContext.getCurrentName().length();
        }
        if (id != 6) {
            if (!(id == 7 || id == 8)) {
                return this._currToken.asCharArray().length;
            }
        } else if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.size();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextOffset() throws IOException {
        int id;
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null || (id = jsonToken.m33768id()) == 5) {
            return 0;
        }
        if (id != 6) {
            if (!(id == 7 || id == 8)) {
                return 0;
            }
        } else if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.getTextOffset();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        Object sourceReference = this._ioContext.getSourceReference();
        if (this._currToken != JsonToken.FIELD_NAME) {
            return new JsonLocation(sourceReference, this._tokenInputTotal - 1, -1L, this._tokenInputRow, this._tokenInputCol);
        }
        return new JsonLocation(sourceReference, (this._nameStartOffset - 1) + this._currInputProcessed, -1L, this._nameStartRow, this._nameStartCol);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.getValueAsInt(0);
        }
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

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getValueAsInt(int i) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.getValueAsInt(i);
        }
        int i2 = this._numTypesValid;
        if ((i2 & 1) == 0) {
            if (i2 == 0) {
                return _parseIntValue();
            }
            if ((i2 & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING) {
            return jsonToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(null);
        }
        if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        }
        this._tokenIncomplete = false;
        return _finishAndReturnString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING) {
            return jsonToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(str);
        }
        if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        }
        this._tokenIncomplete = false;
        return _finishAndReturnString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public final boolean loadMore() throws IOException {
        byte[] bArr;
        int length;
        int i = this._inputEnd;
        this._currInputProcessed += i;
        this._currInputRowStart -= i;
        this._nameStartOffset -= i;
        InputStream inputStream = this._inputStream;
        if (inputStream == null || (length = (bArr = this._inputBuffer).length) == 0) {
            return false;
        }
        int read = inputStream.read(bArr, 0, length);
        if (read > 0) {
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

    @Override // com.fasterxml.jackson.core.JsonParser
    public Boolean nextBooleanValue() throws IOException {
        if (this._currToken == JsonToken.FIELD_NAME) {
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
        } else {
            JsonToken nextToken = nextToken();
            if (nextToken == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (nextToken == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            return null;
        }
    }

    public final int nextByte() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        return bArr[i] & 255;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextFieldName() throws IOException {
        JsonToken jsonToken;
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return null;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _updateLocation();
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_ARRAY;
            return null;
        } else if (_skipWSOrEnd == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_OBJECT;
            return null;
        } else {
            int i = _skipWSOrEnd;
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
                }
                i = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                _nextTokenNotInObject(i);
                return null;
            }
            _updateNameLocation();
            String _parseName = _parseName(i);
            this._parsingContext.setCurrentName(_parseName);
            this._currToken = JsonToken.FIELD_NAME;
            int _skipColon = _skipColon();
            _updateLocation();
            if (_skipColon == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return _parseName;
            }
            if (_skipColon == 45) {
                jsonToken = _parseNegNumber();
            } else if (_skipColon == 91) {
                jsonToken = JsonToken.START_ARRAY;
            } else if (_skipColon == 102) {
                _matchToken("false", 1);
                jsonToken = JsonToken.VALUE_FALSE;
            } else if (_skipColon == 110) {
                _matchToken(C14247d.f31851f, 1);
                jsonToken = JsonToken.VALUE_NULL;
            } else if (_skipColon == 116) {
                _matchToken("true", 1);
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
            return _parseName;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        int i = 0;
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return false;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return false;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _updateLocation();
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_ARRAY;
            return false;
        } else if (_skipWSOrEnd == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            this._currToken = JsonToken.END_OBJECT;
            return false;
        } else {
            int i2 = _skipWSOrEnd;
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
                }
                i2 = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                _nextTokenNotInObject(i2);
                return false;
            }
            _updateNameLocation();
            if (i2 == 34) {
                byte[] asQuotedUTF8 = serializableString.asQuotedUTF8();
                int length = asQuotedUTF8.length;
                int i3 = this._inputPtr;
                if (i3 + length + 4 < this._inputEnd) {
                    int i4 = length + i3;
                    if (this._inputBuffer[i4] == 34) {
                        while (i3 != i4) {
                            if (asQuotedUTF8[i] == this._inputBuffer[i3]) {
                                i++;
                                i3++;
                            }
                        }
                        this._parsingContext.setCurrentName(serializableString.getValue());
                        _isNextTokenNameYes(_skipColonFast(i3 + 1));
                        return true;
                    }
                }
            }
            return _isNextTokenNameMaybe(i2, serializableString);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int nextIntValue(int i) throws IOException {
        if (this._currToken == JsonToken.FIELD_NAME) {
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
        if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
            i = getIntValue();
        }
        return i;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long nextLongValue(long j) throws IOException {
        if (this._currToken == JsonToken.FIELD_NAME) {
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
        if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
            j = getLongValue();
        }
        return j;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextTextValue() throws IOException {
        String str = null;
        if (this._currToken == JsonToken.FIELD_NAME) {
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
        } else {
            if (nextToken() == JsonToken.VALUE_STRING) {
                str = getText();
            }
            return str;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        JsonToken jsonToken;
        if (this._currToken == JsonToken.FIELD_NAME) {
            return _nextAfterName();
        }
        this._numTypesValid = 0;
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _updateLocation();
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken2 = JsonToken.END_ARRAY;
            this._currToken = jsonToken2;
            return jsonToken2;
        } else if (_skipWSOrEnd == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken3 = JsonToken.END_OBJECT;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else {
            int i = _skipWSOrEnd;
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
                }
                i = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                return _nextTokenNotInObject(i);
            }
            _updateNameLocation();
            this._parsingContext.setCurrentName(_parseName(i));
            this._currToken = JsonToken.FIELD_NAME;
            int _skipColon = _skipColon();
            _updateLocation();
            if (_skipColon == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return this._currToken;
            }
            if (_skipColon == 45) {
                jsonToken = _parseNegNumber();
            } else if (_skipColon == 91) {
                jsonToken = JsonToken.START_ARRAY;
            } else if (_skipColon == 102) {
                _matchToken("false", 1);
                jsonToken = JsonToken.VALUE_FALSE;
            } else if (_skipColon == 110) {
                _matchToken(C14247d.f31851f, 1);
                jsonToken = JsonToken.VALUE_NULL;
            } else if (_skipColon == 116) {
                _matchToken("true", 1);
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
            return this._currToken;
        }
    }

    public final String parseEscapedName(int[] iArr, int i, int i2, int i3, int i4) throws IOException {
        int[] iArr2 = _icLatin1;
        int i5 = i3;
        while (true) {
            int[] iArr3 = iArr;
            int i6 = i;
            int i7 = i2;
            int i8 = i5;
            int i9 = i4;
            if (iArr2[i5] != 0) {
                if (i5 == 34) {
                    break;
                }
                if (i5 != 92) {
                    _throwUnquotedSpace(i5, "name");
                } else {
                    i5 = _decodeEscaped();
                }
                iArr3 = iArr;
                i6 = i;
                i7 = i2;
                i8 = i5;
                i9 = i4;
                if (i5 > 127) {
                    int[] iArr4 = iArr;
                    int i10 = i;
                    int i11 = i2;
                    int i12 = i4;
                    if (i4 >= 4) {
                        iArr4 = iArr;
                        if (i >= iArr.length) {
                            iArr4 = growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr4;
                        }
                        iArr4[i] = i2;
                        i10 = i + 1;
                        i11 = 0;
                        i12 = 0;
                    }
                    if (i5 < 2048) {
                        i7 = (i11 << 8) | (i5 >> 6) | PsExtractor.AUDIO_STREAM;
                        i9 = i12 + 1;
                        iArr3 = iArr4;
                        i6 = i10;
                    } else {
                        int i13 = (i11 << 8) | (i5 >> 12) | 224;
                        int i14 = i12 + 1;
                        iArr3 = iArr4;
                        i6 = i10;
                        int i15 = i13;
                        int i16 = i14;
                        if (i14 >= 4) {
                            iArr3 = iArr4;
                            if (i10 >= iArr4.length) {
                                iArr3 = growArrayBy(iArr4, iArr4.length);
                                this._quadBuffer = iArr3;
                            }
                            iArr3[i10] = i13;
                            i6 = i10 + 1;
                            i15 = 0;
                            i16 = 0;
                        }
                        i7 = (i15 << 8) | ((i5 >> 6) & 63) | 128;
                        i9 = i16 + 1;
                    }
                    i8 = (i5 & 63) | 128;
                }
            }
            if (i9 < 4) {
                i4 = i9 + 1;
                i2 = (i7 << 8) | i8;
                iArr = iArr3;
                i = i6;
            } else {
                iArr = iArr3;
                if (i6 >= iArr3.length) {
                    iArr = growArrayBy(iArr3, iArr3.length);
                    this._quadBuffer = iArr;
                }
                iArr[i6] = i7;
                i2 = i8;
                i = i6 + 1;
                i4 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            byte[] bArr = this._inputBuffer;
            int i17 = this._inputPtr;
            this._inputPtr = i17 + 1;
            i5 = bArr[i17] & 255;
        }
        int[] iArr5 = iArr;
        int i18 = i;
        if (i4 > 0) {
            iArr5 = iArr;
            if (i >= iArr.length) {
                iArr5 = growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr5;
            }
            iArr5[i] = pad(i2, i4);
            i18 = i + 1;
        }
        String findName = this._symbols.findName(iArr5, i18);
        String str = findName;
        if (findName == null) {
            str = addName(iArr5, i18, i4);
        }
        return str;
    }

    public final String parseLongName(int i, int i2, int i3) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = this._quad1;
        iArr[1] = i2;
        iArr[2] = i3;
        byte[] bArr = this._inputBuffer;
        int[] iArr2 = _icLatin1;
        int i4 = 3;
        int i5 = i;
        while (true) {
            int i6 = this._inputPtr;
            if (i6 + 4 > this._inputEnd) {
                return parseEscapedName(this._quadBuffer, i4, 0, i5, 0);
            }
            this._inputPtr = i6 + 1;
            int i7 = bArr[i6] & 255;
            if (iArr2[i7] != 0) {
                return i7 == 34 ? findName(this._quadBuffer, i4, i5, 1) : parseEscapedName(this._quadBuffer, i4, i5, i7, 1);
            }
            int i8 = (i5 << 8) | i7;
            int i9 = this._inputPtr;
            this._inputPtr = i9 + 1;
            int i10 = bArr[i9] & 255;
            if (iArr2[i10] != 0) {
                return i10 == 34 ? findName(this._quadBuffer, i4, i8, 2) : parseEscapedName(this._quadBuffer, i4, i8, i10, 2);
            }
            int i11 = (i8 << 8) | i10;
            int i12 = this._inputPtr;
            this._inputPtr = i12 + 1;
            int i13 = bArr[i12] & 255;
            if (iArr2[i13] != 0) {
                return i13 == 34 ? findName(this._quadBuffer, i4, i11, 3) : parseEscapedName(this._quadBuffer, i4, i11, i13, 3);
            }
            int i14 = (i11 << 8) | i13;
            int i15 = this._inputPtr;
            this._inputPtr = i15 + 1;
            i5 = bArr[i15] & 255;
            if (iArr2[i5] != 0) {
                return i5 == 34 ? findName(this._quadBuffer, i4, i14, 4) : parseEscapedName(this._quadBuffer, i4, i14, i5, 4);
            }
            int[] iArr3 = this._quadBuffer;
            if (i4 >= iArr3.length) {
                this._quadBuffer = growArrayBy(iArr3, i4);
            }
            this._quadBuffer[i4] = i14;
            i4++;
        }
    }

    public final String parseMediumName(int i) throws IOException {
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

    public final String parseMediumName2(int i, int i2) throws IOException {
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

    public final String parseName(int i, int i2, int i3) throws IOException {
        return parseEscapedName(this._quadBuffer, 0, i, i2, i3);
    }

    public final String parseName(int i, int i2, int i3, int i4) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        return parseEscapedName(iArr, 1, i2, i3, i4);
    }

    public final String parseName(int i, int i2, int i3, int i4, int i5) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        iArr[1] = i2;
        return parseEscapedName(iArr, 2, i3, i4, i5);
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
        int i = this._inputEnd;
        int i2 = this._inputPtr;
        int i3 = i - i2;
        if (i3 < 1) {
            return 0;
        }
        outputStream.write(this._inputBuffer, i2, i3);
        return i3;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    public String slowParseName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(": was expecting closing '\"' for name");
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & 255;
        return i2 == 34 ? "" : parseEscapedName(this._quadBuffer, 0, 0, i2, 0);
    }
}
