package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.p049io.CharTypes;
import com.fasterxml.jackson.core.p049io.IOContext;
import com.fasterxml.jackson.core.p049io.NumberOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/json/WriterBasedJsonGenerator.class */
public final class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    public static final char[] HEX_CHARS = CharTypes.copyHexChars();
    public SerializableString _currentEscape;
    public char[] _entityBuffer;
    public char[] _outputBuffer;
    public int _outputEnd;
    public int _outputHead;
    public int _outputTail;
    public final Writer _writer;

    public WriterBasedJsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, Writer writer) {
        super(iOContext, i, objectCodec);
        this._writer = writer;
        this._outputBuffer = iOContext.allocConcatBuffer();
        this._outputEnd = this._outputBuffer.length;
    }

    public final char[] _allocateEntityBuffer() {
        char[] cArr = {(char) 92, 0, (char) 92, (char) 117, (char) 48, (char) 48, 0, 0, (char) 92, (char) 117};
        this._entityBuffer = cArr;
        return cArr;
    }

    public final void _appendCharacterEscape(char c, int i) throws IOException, JsonGenerationException {
        String str;
        int i2;
        if (i >= 0) {
            if (this._outputTail + 2 > this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i3 = this._outputTail;
            this._outputTail = i3 + 1;
            cArr[i3] = (char) 92;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            cArr[i4] = (char) i;
        } else if (i != -2) {
            if (this._outputTail + 5 >= this._outputEnd) {
                _flushBuffer();
            }
            int i5 = this._outputTail;
            char[] cArr2 = this._outputBuffer;
            int i6 = i5 + 1;
            cArr2[i5] = (char) 92;
            int i7 = i6 + 1;
            cArr2[i6] = (char) 117;
            if (c > 255) {
                int i8 = 255 & (c >> '\b');
                int i9 = i7 + 1;
                char[] cArr3 = HEX_CHARS;
                cArr2[i7] = cArr3[i8 >> 4];
                i2 = i9 + 1;
                cArr2[i9] = cArr3[i8 & 15];
                c = (char) (c & 255);
            } else {
                int i10 = i7 + 1;
                cArr2[i7] = (char) 48;
                i2 = i10 + 1;
                cArr2[i10] = (char) 48;
            }
            int i11 = i2 + 1;
            char[] cArr4 = HEX_CHARS;
            cArr2[i2] = cArr4[c >> 4];
            cArr2[i11] = cArr4[c & 15];
            this._outputTail = i11 + 1;
        } else {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                str = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                str = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = str.length();
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
                if (length > this._outputEnd) {
                    this._writer.write(str);
                    return;
                }
            }
            str.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
        }
    }

    public void _flushBuffer() throws IOException {
        int i = this._outputTail;
        int i2 = this._outputHead;
        int i3 = i - i2;
        if (i3 > 0) {
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i2, i3);
        }
    }

    public final int _prependOrWriteCharacterEscape(char[] cArr, int i, int i2, char c, int i3) throws IOException, JsonGenerationException {
        String str;
        int i4;
        if (i3 >= 0) {
            if (i <= 1 || i >= i2) {
                char[] cArr2 = this._entityBuffer;
                char[] cArr3 = cArr2;
                if (cArr2 == null) {
                    cArr3 = _allocateEntityBuffer();
                }
                cArr3[1] = (char) i3;
                this._writer.write(cArr3, 0, 2);
            } else {
                i -= 2;
                cArr[i] = (char) 92;
                cArr[i + 1] = (char) i3;
            }
            return i;
        } else if (i3 != -2) {
            if (i <= 5 || i >= i2) {
                char[] cArr4 = this._entityBuffer;
                char[] cArr5 = cArr4;
                if (cArr4 == null) {
                    cArr5 = _allocateEntityBuffer();
                }
                this._outputHead = this._outputTail;
                if (c > 255) {
                    int i5 = (c >> '\b') & 255;
                    int i6 = c & 255;
                    char[] cArr6 = HEX_CHARS;
                    cArr5[10] = cArr6[i5 >> 4];
                    cArr5[11] = cArr6[i5 & 15];
                    cArr5[12] = cArr6[i6 >> 4];
                    cArr5[13] = cArr6[i6 & 15];
                    this._writer.write(cArr5, 8, 6);
                } else {
                    char[] cArr7 = HEX_CHARS;
                    cArr5[6] = cArr7[c >> 4];
                    cArr5[7] = cArr7[c & 15];
                    this._writer.write(cArr5, 2, 6);
                }
            } else {
                int i7 = i - 6;
                int i8 = i7 + 1;
                cArr[i7] = (char) 92;
                int i9 = i8 + 1;
                cArr[i8] = (char) 117;
                if (c > 255) {
                    int i10 = (c >> '\b') & 255;
                    int i11 = i9 + 1;
                    char[] cArr8 = HEX_CHARS;
                    cArr[i9] = cArr8[i10 >> 4];
                    i4 = i11 + 1;
                    cArr[i11] = cArr8[i10 & 15];
                    c = (char) (c & 255);
                } else {
                    int i12 = i9 + 1;
                    cArr[i9] = (char) 48;
                    i4 = i12 + 1;
                    cArr[i12] = (char) 48;
                }
                int i13 = i4 + 1;
                char[] cArr9 = HEX_CHARS;
                cArr[i4] = cArr9[c >> 4];
                cArr[i13] = cArr9[c & 15];
                i = i13 - 5;
            }
            return i;
        } else {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                str = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                str = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = str.length();
            if (i < length || i >= i2) {
                this._writer.write(str);
            } else {
                i -= length;
                str.getChars(0, length, cArr, i);
            }
            return i;
        }
    }

    public final void _prependOrWriteCharacterEscape(char c, int i) throws IOException, JsonGenerationException {
        String str;
        int i2;
        if (i >= 0) {
            int i3 = this._outputTail;
            if (i3 >= 2) {
                int i4 = i3 - 2;
                this._outputHead = i4;
                char[] cArr = this._outputBuffer;
                cArr[i4] = (char) 92;
                cArr[i4 + 1] = (char) i;
                return;
            }
            char[] cArr2 = this._entityBuffer;
            char[] cArr3 = cArr2;
            if (cArr2 == null) {
                cArr3 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            cArr3[1] = (char) i;
            this._writer.write(cArr3, 0, 2);
        } else if (i != -2) {
            int i5 = this._outputTail;
            if (i5 >= 6) {
                char[] cArr4 = this._outputBuffer;
                int i6 = i5 - 6;
                this._outputHead = i6;
                cArr4[i6] = (char) 92;
                int i7 = i6 + 1;
                cArr4[i7] = (char) 117;
                if (c > 255) {
                    int i8 = (c >> '\b') & 255;
                    int i9 = i7 + 1;
                    char[] cArr5 = HEX_CHARS;
                    cArr4[i9] = cArr5[i8 >> 4];
                    i2 = i9 + 1;
                    cArr4[i2] = cArr5[i8 & 15];
                    c = (char) (c & 255);
                } else {
                    int i10 = i7 + 1;
                    cArr4[i10] = (char) 48;
                    i2 = i10 + 1;
                    cArr4[i2] = (char) 48;
                }
                int i11 = i2 + 1;
                char[] cArr6 = HEX_CHARS;
                cArr4[i11] = cArr6[c >> 4];
                cArr4[i11 + 1] = cArr6[c & 15];
                return;
            }
            char[] cArr7 = this._entityBuffer;
            char[] cArr8 = cArr7;
            if (cArr7 == null) {
                cArr8 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > 255) {
                int i12 = (c >> '\b') & 255;
                int i13 = c & 255;
                char[] cArr9 = HEX_CHARS;
                cArr8[10] = cArr9[i12 >> 4];
                cArr8[11] = cArr9[i12 & 15];
                cArr8[12] = cArr9[i13 >> 4];
                cArr8[13] = cArr9[i13 & 15];
                this._writer.write(cArr8, 8, 6);
                return;
            }
            char[] cArr10 = HEX_CHARS;
            cArr8[6] = cArr10[c >> 4];
            cArr8[7] = cArr10[c & 15];
            this._writer.write(cArr8, 2, 6);
        } else {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                str = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                str = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = str.length();
            int i14 = this._outputTail;
            if (i14 >= length) {
                int i15 = i14 - length;
                this._outputHead = i15;
                str.getChars(0, length, this._outputBuffer, i15);
                return;
            }
            this._outputHead = i14;
            this._writer.write(str);
        }
    }

    public final int _readMore(InputStream inputStream, byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4 = 0;
        for (int i5 = i; i5 < i2; i5++) {
            bArr[i4] = bArr[i5];
            i4++;
        }
        int min = Math.min(i3, bArr.length);
        while (true) {
            int i6 = min - i4;
            if (i6 == 0) {
                break;
            }
            int read = inputStream.read(bArr, i4, i6);
            if (read >= 0) {
                int i7 = i4 + read;
                i4 = i7;
                if (i7 >= 3) {
                    i4 = i7;
                    break;
                }
            } else {
                return i4;
            }
        }
        return i4;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public void _releaseBuffers() {
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    public void _verifyPrettyValueWrite(String str) throws IOException {
        int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        if (writeValue != 0) {
            if (writeValue == 1) {
                this._cfgPrettyPrinter.writeArrayValueSeparator(this);
            } else if (writeValue == 2) {
                this._cfgPrettyPrinter.writeObjectFieldValueSeparator(this);
            } else if (writeValue != 3) {
                _throwInternal();
            } else {
                this._cfgPrettyPrinter.writeRootValueSeparator(this);
            }
        } else if (this._writeContext.inArray()) {
            this._cfgPrettyPrinter.beforeArrayValues(this);
        } else if (this._writeContext.inObject()) {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public void _verifyValueWrite(String str) throws IOException {
        int i;
        SerializableString serializableString;
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str);
            return;
        }
        int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        if (writeValue == 1) {
            i = 44;
        } else if (writeValue == 2) {
            i = 58;
        } else if (writeValue == 3 && (serializableString = this._rootValueSeparator) != null) {
            writeRaw(serializableString.getValue());
            return;
        } else {
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        cArr[i2] = (char) i;
        this._outputTail = i2 + 1;
    }

    public int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        int _readMore;
        int i = this._outputEnd - 6;
        int i2 = -3;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i2;
            int i7 = i4;
            int i8 = i5;
            if (i4 > i2) {
                _readMore = _readMore(inputStream, bArr, i4, i5, bArr.length);
                if (_readMore < 3) {
                    break;
                }
                i8 = _readMore;
                i6 = _readMore - 3;
                i7 = 0;
            }
            if (this._outputTail > i) {
                _flushBuffer();
            }
            int i9 = i7 + 1;
            byte b = bArr[i7];
            int i10 = i9 + 1;
            byte b2 = bArr[i9];
            int i11 = i10 + 1;
            byte b3 = bArr[i10];
            int i12 = i3 + 3;
            this._outputTail = base64Variant.encodeBase64Chunk((((b2 & 255) | (b << 8)) << 8) | (b3 & 255), this._outputBuffer, this._outputTail);
            int i13 = maxLineLength - 1;
            i3 = i12;
            i2 = i6;
            i4 = i11;
            i5 = i8;
            maxLineLength = i13;
            if (i13 <= 0) {
                char[] cArr = this._outputBuffer;
                int i14 = this._outputTail;
                this._outputTail = i14 + 1;
                cArr[i14] = (char) 92;
                int i15 = this._outputTail;
                this._outputTail = i15 + 1;
                cArr[i15] = (char) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
                i3 = i12;
                i2 = i6;
                i4 = i11;
                i5 = i8;
            }
        }
        int i16 = i3;
        if (_readMore > 0) {
            if (this._outputTail > i) {
                _flushBuffer();
            }
            int i17 = bArr[0] << 16;
            int i18 = 1;
            int i19 = i17;
            if (1 < _readMore) {
                i19 = i17 | ((bArr[1] & 255) << 8);
                i18 = 2;
            }
            i16 = i3 + i18;
            this._outputTail = base64Variant.encodeBase64Partial(i19, i18, this._outputBuffer, this._outputTail);
        }
        return i16;
    }

    public int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i) throws IOException, JsonGenerationException {
        int i2;
        int i3;
        int i4 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i5 = -3;
        int i6 = 0;
        int i7 = 0;
        int i8 = i;
        while (true) {
            i2 = i6;
            i3 = i7;
            if (i8 <= 2) {
                break;
            }
            int i9 = i5;
            int i10 = i6;
            int i11 = i7;
            if (i6 > i5) {
                i3 = _readMore(inputStream, bArr, i6, i7, i8);
                if (i3 < 3) {
                    i2 = 0;
                    break;
                }
                i11 = i3;
                i9 = i3 - 3;
                i10 = 0;
            }
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            int i12 = i10 + 1;
            byte b = bArr[i10];
            int i13 = i12 + 1;
            byte b2 = bArr[i12];
            int i14 = i13 + 1;
            byte b3 = bArr[i13];
            int i15 = i8 - 3;
            this._outputTail = base64Variant.encodeBase64Chunk((((b2 & 255) | (b << 8)) << 8) | (b3 & 255), this._outputBuffer, this._outputTail);
            int i16 = maxLineLength - 1;
            maxLineLength = i16;
            i5 = i9;
            i6 = i14;
            i7 = i11;
            i8 = i15;
            if (i16 <= 0) {
                char[] cArr = this._outputBuffer;
                int i17 = this._outputTail;
                this._outputTail = i17 + 1;
                cArr[i17] = (char) 92;
                int i18 = this._outputTail;
                this._outputTail = i18 + 1;
                cArr[i18] = (char) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
                i5 = i9;
                i6 = i14;
                i7 = i11;
                i8 = i15;
            }
        }
        int i19 = i8;
        if (i8 > 0) {
            int _readMore = _readMore(inputStream, bArr, i2, i3, i8);
            i19 = i8;
            if (_readMore > 0) {
                if (this._outputTail > i4) {
                    _flushBuffer();
                }
                int i20 = bArr[0] << 16;
                int i21 = 1;
                int i22 = i20;
                if (1 < _readMore) {
                    i22 = i20 | ((bArr[1] & 255) << 8);
                    i21 = 2;
                }
                this._outputTail = base64Variant.encodeBase64Partial(i22, i21, this._outputBuffer, this._outputTail);
                i19 = i8 - i21;
            }
        }
        return i19;
    }

    public void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        while (i <= i2 - 3) {
            if (this._outputTail > i3) {
                _flushBuffer();
            }
            int i4 = i + 1;
            int i5 = i4 + 1;
            this._outputTail = base64Variant.encodeBase64Chunk((((bArr[i] << 8) | (bArr[i4] & 255)) << 8) | (bArr[i5] & 255), this._outputBuffer, this._outputTail);
            int i6 = maxLineLength - 1;
            maxLineLength = i6;
            if (i6 <= 0) {
                char[] cArr = this._outputBuffer;
                int i7 = this._outputTail;
                this._outputTail = i7 + 1;
                cArr[i7] = (char) 92;
                int i8 = this._outputTail;
                this._outputTail = i8 + 1;
                cArr[i8] = (char) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
            i = i5 + 1;
        }
        int i9 = i2 - i;
        if (i9 > 0) {
            if (this._outputTail > i3) {
                _flushBuffer();
            }
            int i10 = bArr[i] << 16;
            int i11 = i10;
            if (i9 == 2) {
                i11 = i10 | ((bArr[i + 1] & 255) << 8);
            }
            this._outputTail = base64Variant.encodeBase64Partial(i11, i9, this._outputBuffer, this._outputTail);
        }
    }

    public void _writeFieldName(SerializableString serializableString, boolean z) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString, z);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z) {
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = (char) 44;
        }
        char[] asQuotedChars = serializableString.asQuotedChars();
        if (!isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = (char) 34;
        int length = asQuotedChars.length;
        int i3 = this._outputTail;
        if (i3 + length + 1 >= this._outputEnd) {
            writeRaw(asQuotedChars, 0, length);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr3 = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            cArr3[i4] = (char) 34;
            return;
        }
        System.arraycopy(asQuotedChars, 0, cArr2, i3, length);
        this._outputTail += length;
        char[] cArr4 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        cArr4[i5] = (char) 34;
    }

    public void _writeFieldName(String str, boolean z) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str, z);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z) {
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = (char) 44;
        }
        if (!isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
            _writeString(str);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = (char) 34;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr3[i3] = (char) 34;
    }

    public final void _writeLongString(String str) throws IOException {
        _flushBuffer();
        int length = str.length();
        int i = 0;
        while (true) {
            int i2 = this._outputEnd;
            int i3 = i2;
            if (i + i2 > length) {
                i3 = length - i;
            }
            int i4 = i + i3;
            str.getChars(i, i4, this._outputBuffer, 0);
            if (this._characterEscapes != null) {
                _writeSegmentCustom(i3);
            } else {
                int i5 = this._maximumNonEscapedChar;
                if (i5 != 0) {
                    _writeSegmentASCII(i3, i5);
                } else {
                    _writeSegment(i3);
                }
            }
            if (i4 < length) {
                i = i4;
            } else {
                return;
            }
        }
    }

    public final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        int i = this._outputTail;
        char[] cArr = this._outputBuffer;
        cArr[i] = (char) 110;
        int i2 = i + 1;
        cArr[i2] = (char) 117;
        int i3 = i2 + 1;
        cArr[i3] = (char) 108;
        int i4 = i3 + 1;
        cArr[i4] = (char) 108;
        this._outputTail = i4 + 1;
    }

    public void _writePPFieldName(SerializableString serializableString, boolean z) throws IOException {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        char[] asQuotedChars = serializableString.asQuotedChars();
        if (isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = (char) 34;
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr2 = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr2[i2] = (char) 34;
            return;
        }
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
    }

    public void _writePPFieldName(String str, boolean z) throws IOException {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = (char) 34;
            _writeString(str);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr2 = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr2[i2] = (char) 34;
            return;
        }
        _writeString(str);
    }

    public final void _writeQuotedInt(int i) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = (char) 34;
        this._outputTail = NumberOutput.outputInt(i, cArr, this._outputTail);
        char[] cArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr2[i3] = (char) 34;
    }

    public final void _writeQuotedLong(long j) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = (char) 34;
        this._outputTail = NumberOutput.outputLong(j, cArr, this._outputTail);
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = (char) 34;
    }

    public final void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = (char) 34;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = (char) 34;
    }

    public final void _writeQuotedShort(short s) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = (char) 34;
        this._outputTail = NumberOutput.outputInt(s, cArr, this._outputTail);
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = (char) 34;
    }

    public final void _writeSegment(int i) throws IOException {
        char c;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            while (true) {
                c = this._outputBuffer[i2];
                if (c < length && iArr[c] != 0) {
                    break;
                }
                int i4 = i2 + 1;
                i2 = i4;
                if (i4 >= i) {
                    i2 = i4;
                    break;
                }
            }
            int i5 = i2 - i3;
            if (i5 > 0) {
                this._writer.write(this._outputBuffer, i3, i5);
                if (i2 >= i) {
                    return;
                }
            }
            i2++;
            i3 = _prependOrWriteCharacterEscape(this._outputBuffer, i2, i, c, iArr[c]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void _writeSegmentASCII(int r8, int r9) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 191
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentASCII(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void _writeSegmentCustom(int r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentCustom(int):void");
    }

    public final void _writeString(String str) throws IOException {
        int length = str.length();
        int i = this._outputEnd;
        if (length > i) {
            _writeLongString(str);
            return;
        }
        if (this._outputTail + length > i) {
            _flushBuffer();
        }
        str.getChars(0, length, this._outputBuffer, this._outputTail);
        if (this._characterEscapes != null) {
            _writeStringCustom(length);
            return;
        }
        int i2 = this._maximumNonEscapedChar;
        if (i2 != 0) {
            _writeStringASCII(length, i2);
        } else {
            _writeString2(length);
        }
    }

    public final void _writeString(char[] cArr, int i, int i2) throws IOException {
        if (this._characterEscapes != null) {
            _writeStringCustom(cArr, i, i2);
            return;
        }
        int i3 = this._maximumNonEscapedChar;
        if (i3 != 0) {
            _writeStringASCII(cArr, i, i2, i3);
            return;
        }
        int i4 = i2 + i;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        while (i < i4) {
            int i5 = i;
            while (true) {
                char c = cArr[i5];
                if (c < length && iArr[c] != 0) {
                    break;
                }
                int i6 = i5 + 1;
                i5 = i6;
                if (i6 >= i4) {
                    i5 = i6;
                    break;
                }
            }
            int i7 = i5 - i;
            if (i7 < 32) {
                if (this._outputTail + i7 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i7 > 0) {
                    System.arraycopy(cArr, i, this._outputBuffer, this._outputTail, i7);
                    this._outputTail += i7;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i, i7);
            }
            if (i5 < i4) {
                i = i5 + 1;
                char c2 = cArr[i5];
                _appendCharacterEscape(c2, iArr[c2]);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
        if (r0 <= 0) goto L_0x0056;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
        r5._writer.write(r0, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
        r0 = r5._outputBuffer;
        r0 = r5._outputTail;
        r5._outputTail = r0 + 1;
        r0 = r0[r0];
        _prependOrWriteCharacterEscape(r0, r0[r0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        r0 = r5._outputHead;
        r0 = r0 - r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void _writeString2(int r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0._outputTail
            r1 = r6
            int r0 = r0 + r1
            r7 = r0
            r0 = r5
            int[] r0 = r0._outputEscapes
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r6 = r0
        L_0x000f:
            r0 = r5
            int r0 = r0._outputTail
            r1 = r7
            if (r0 >= r1) goto L_0x0092
        L_0x0017:
            r0 = r5
            char[] r0 = r0._outputBuffer
            r9 = r0
            r0 = r5
            int r0 = r0._outputTail
            r10 = r0
            r0 = r9
            r1 = r10
            char r0 = r0[r1]
            r11 = r0
            r0 = r11
            r1 = r6
            if (r0 >= r1) goto L_0x007e
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            if (r0 == 0) goto L_0x007e
            r0 = r5
            int r0 = r0._outputHead
            r11 = r0
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r10 = r0
            r0 = r10
            if (r0 <= 0) goto L_0x0056
            r0 = r5
            java.io.Writer r0 = r0._writer
            r1 = r9
            r2 = r11
            r3 = r10
            r0.write(r1, r2, r3)
        L_0x0056:
            r0 = r5
            char[] r0 = r0._outputBuffer
            r9 = r0
            r0 = r5
            int r0 = r0._outputTail
            r11 = r0
            r0 = r5
            r1 = r11
            r2 = 1
            int r1 = r1 + r2
            r0._outputTail = r1
            r0 = r9
            r1 = r11
            char r0 = r0[r1]
            r12 = r0
            r0 = r5
            r1 = r12
            r2 = r8
            r3 = r12
            r2 = r2[r3]
            r0._prependOrWriteCharacterEscape(r1, r2)
            goto L_0x000f
        L_0x007e:
            r0 = r5
            int r0 = r0._outputTail
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
            r0 = r5
            r1 = r11
            r0._outputTail = r1
            r0 = r11
            r1 = r7
            if (r0 < r1) goto L_0x0017
        L_0x0092:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeString2(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0093 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void _writeStringASCII(int r6, int r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0._outputTail
            r1 = r6
            int r0 = r0 + r1
            r8 = r0
            r0 = r5
            int[] r0 = r0._outputEscapes
            r9 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r7
            r2 = 1
            int r1 = r1 + r2
            int r0 = java.lang.Math.min(r0, r1)
            r10 = r0
        L_0x0018:
            r0 = r5
            int r0 = r0._outputTail
            r1 = r8
            if (r0 >= r1) goto L_0x0093
        L_0x0020:
            r0 = r5
            char[] r0 = r0._outputBuffer
            r1 = r5
            int r1 = r1._outputTail
            char r0 = r0[r1]
            r11 = r0
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x003f
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0082
            goto L_0x0047
        L_0x003f:
            r0 = r11
            r1 = r7
            if (r0 <= r1) goto L_0x0082
            r0 = -1
            r6 = r0
        L_0x0047:
            r0 = r5
            int r0 = r0._outputTail
            r12 = r0
            r0 = r5
            int r0 = r0._outputHead
            r13 = r0
            r0 = r12
            r1 = r13
            int r0 = r0 - r1
            r12 = r0
            r0 = r12
            if (r0 <= 0) goto L_0x006e
            r0 = r5
            java.io.Writer r0 = r0._writer
            r1 = r5
            char[] r1 = r1._outputBuffer
            r2 = r13
            r3 = r12
            r0.write(r1, r2, r3)
        L_0x006e:
            r0 = r5
            r1 = r5
            int r1 = r1._outputTail
            r2 = 1
            int r1 = r1 + r2
            r0._outputTail = r1
            r0 = r5
            r1 = r11
            r2 = r6
            r0._prependOrWriteCharacterEscape(r1, r2)
            goto L_0x0018
        L_0x0082:
            r0 = r5
            int r0 = r0._outputTail
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            r1 = r6
            r0._outputTail = r1
            r0 = r6
            r1 = r8
            if (r0 < r1) goto L_0x0020
        L_0x0093:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0079 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void _writeStringASCII(char[] r7, int r8, int r9, int r10) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(char[], int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00c4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void _writeStringCustom(int r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void _writeStringCustom(char[] r7, int r8, int r9) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(char[], int, int):void");
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this._outputBuffer != null && isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                JsonWriteContext outputContext = getOutputContext();
                if (!outputContext.inArray()) {
                    if (!outputContext.inObject()) {
                        break;
                    }
                    writeEndObject();
                } else {
                    writeEndArray();
                }
            }
        }
        _flushBuffer();
        this._outputHead = 0;
        this._outputTail = 0;
        if (this._writer != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                this._writer.close();
            } else if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                this._writer.flush();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._writer != null && isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            this._writer.flush();
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int getOutputBuffered() {
        return Math.max(0, this._outputTail - this._outputHead);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._writer;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) throws IOException, JsonGenerationException {
        int i2;
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr[i3] = (char) 34;
        byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            if (i < 0) {
                i2 = _writeBinary(base64Variant, inputStream, allocBase64Buffer);
            } else {
                int _writeBinary = _writeBinary(base64Variant, inputStream, allocBase64Buffer, i);
                i2 = i;
                if (_writeBinary > 0) {
                    _reportError("Too few bytes available: missing " + _writeBinary + " bytes (out of " + i + ")");
                    i2 = i;
                }
            }
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr2 = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            cArr2[i4] = (char) 34;
            return i2;
        } catch (Throwable th) {
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            throw th;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr[i3] = (char) 34;
        _writeBinary(base64Variant, bArr, i, i2 + i);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = (char) 34;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z) throws IOException {
        int i;
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i2 = this._outputTail;
        char[] cArr = this._outputBuffer;
        if (z) {
            cArr[i2] = (char) 116;
            int i3 = i2 + 1;
            cArr[i3] = (char) 114;
            int i4 = i3 + 1;
            cArr[i4] = (char) 117;
            i = i4 + 1;
            cArr[i] = (char) 101;
        } else {
            cArr[i2] = (char) 102;
            int i5 = i2 + 1;
            cArr[i5] = (char) 97;
            int i6 = i5 + 1;
            cArr[i6] = (char) 108;
            int i7 = i6 + 1;
            cArr[i7] = (char) 115;
            i = i7 + 1;
            cArr[i] = (char) 101;
        }
        this._outputTail = i + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndArray() throws IOException, JsonGenerationException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not an ARRAY but " + this._writeContext.getTypeDesc());
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = (char) 93;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndObject() throws IOException, JsonGenerationException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not an object but " + this._writeContext.getTypeDesc());
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = (char) 125;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        boolean z = true;
        if (writeFieldName != 1) {
            z = false;
        }
        _writeFieldName(serializableString, z);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        boolean z = true;
        if (writeFieldName != 1) {
            z = false;
        }
        _writeFieldName(str, z);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d) throws IOException {
        if (this._cfgNumbersAsStrings || (isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS) && (Double.isNaN(d) || Double.isInfinite(d)))) {
            writeString(String.valueOf(d));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(d));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f) throws IOException {
        if (this._cfgNumbersAsStrings || (isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS) && (Float.isNaN(f) || Float.isInfinite(f)))) {
            writeString(String.valueOf(f));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(f));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i);
            return;
        }
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(i, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(long j) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedLong(j);
            return;
        }
        if (this._outputTail + 21 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(String str) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(str);
        } else {
            writeRaw(str);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        _verifyValueWrite("write a number");
        if (bigDecimal == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(isEnabled(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) ? bigDecimal.toPlainString() : bigDecimal.toString());
        } else if (isEnabled(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN)) {
            writeRaw(bigDecimal.toPlainString());
        } else {
            writeRaw(bigDecimal.toString());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        _verifyValueWrite("write a number");
        if (bigInteger == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(bigInteger.toString());
        } else {
            writeRaw(bigInteger.toString());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s);
            return;
        }
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(s, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = c;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        writeRaw(serializableString.getValue());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        int i = this._outputEnd - this._outputTail;
        int i2 = i;
        if (i == 0) {
            _flushBuffer();
            i2 = this._outputEnd - this._outputTail;
        }
        if (i2 >= length) {
            str.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
            return;
        }
        writeRawLong(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i, int i2) throws IOException {
        int i3 = this._outputEnd - this._outputTail;
        int i4 = i3;
        if (i3 < i2) {
            _flushBuffer();
            i4 = this._outputEnd - this._outputTail;
        }
        if (i4 >= i2) {
            str.getChars(i, i + i2, this._outputBuffer, this._outputTail);
            this._outputTail += i2;
            return;
        }
        writeRawLong(str.substring(i, i2 + i));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char[] cArr, int i, int i2) throws IOException {
        if (i2 < 32) {
            if (i2 > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(cArr, i, this._outputBuffer, this._outputTail, i2);
            this._outputTail += i2;
            return;
        }
        _flushBuffer();
        this._writer.write(cArr, i, i2);
    }

    public final void writeRawLong(String str) throws IOException {
        int i = this._outputEnd;
        int i2 = this._outputTail;
        int i3 = i - i2;
        str.getChars(0, i3, this._outputBuffer, i2);
        this._outputTail += i3;
        _flushBuffer();
        int length = str.length() - i3;
        while (true) {
            int i4 = this._outputEnd;
            if (length > i4) {
                int i5 = i3 + i4;
                str.getChars(i3, i5, this._outputBuffer, 0);
                this._outputHead = 0;
                this._outputTail = i4;
                _flushBuffer();
                length -= i4;
                i3 = i5;
            } else {
                str.getChars(i3, i3 + length, this._outputBuffer, 0);
                this._outputHead = 0;
                this._outputTail = length;
                return;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray() throws IOException, JsonGenerationException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = (char) 91;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject() throws IOException, JsonGenerationException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = (char) 123;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = (char) 34;
        char[] asQuotedChars = serializableString.asQuotedChars();
        int length = asQuotedChars.length;
        if (length < 32) {
            if (length > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(asQuotedChars, 0, this._outputBuffer, this._outputTail, length);
            this._outputTail += length;
        } else {
            _flushBuffer();
            this._writer.write(asQuotedChars, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = (char) 34;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = (char) 34;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = (char) 34;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr2[i3] = (char) 34;
        _writeString(cArr, i, i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr3[i4] = (char) 34;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }
}
