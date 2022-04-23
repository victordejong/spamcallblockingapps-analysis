package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/json/WriterBasedJsonGenerator.class */
public class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    protected static final char[] HEX_CHARS = CharTypes.copyHexChars();
    protected static final int SHORT_WRITE = 32;
    protected char[] _copyBuffer;
    protected SerializableString _currentEscape;
    protected char[] _entityBuffer;
    protected char[] _outputBuffer;
    protected int _outputEnd;
    protected int _outputHead;
    protected int _outputTail;
    protected char _quoteChar;
    protected final Writer _writer;

    @Deprecated
    public WriterBasedJsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, Writer writer) {
        this(iOContext, i, objectCodec, writer, '\"');
    }

    public WriterBasedJsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, Writer writer, char c2) {
        super(iOContext, i, objectCodec);
        this._writer = writer;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._outputBuffer = allocConcatBuffer;
        this._outputEnd = allocConcatBuffer.length;
        this._quoteChar = c2;
        if (c2 != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c2);
        }
    }

    private char[] _allocateCopyBuffer() {
        if (this._copyBuffer == null) {
            this._copyBuffer = this._ioContext.allocNameCopyBuffer(2000);
        }
        return this._copyBuffer;
    }

    private char[] _allocateEntityBuffer() {
        char[] cArr = {(char) 92, 0, (char) 92, (char) 117, (char) 48, (char) 48, 0, 0, (char) 92, (char) 117};
        this._entityBuffer = cArr;
        return cArr;
    }

    private void _appendCharacterEscape(char c2, int i) throws IOException, JsonGenerationException {
        String str;
        int i2;
        if (i >= 0) {
            if (this._outputTail + 2 > this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i3 = this._outputTail;
            int i4 = i3 + 1;
            this._outputTail = i4;
            cArr[i3] = (char) 92;
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
            if (c2 > 255) {
                int i8 = 255 & (c2 >> '\b');
                int i9 = i7 + 1;
                char[] cArr3 = HEX_CHARS;
                cArr2[i7] = cArr3[i8 >> 4];
                i2 = i9 + 1;
                cArr2[i9] = cArr3[i8 & 15];
                c2 = (char) (c2 & 255);
            } else {
                int i10 = i7 + 1;
                cArr2[i7] = (char) 48;
                i2 = i10 + 1;
                cArr2[i10] = (char) 48;
            }
            int i11 = i2 + 1;
            char[] cArr4 = HEX_CHARS;
            cArr2[i2] = cArr4[c2 >> 4];
            cArr2[i11] = cArr4[c2 & 15];
            this._outputTail = i11 + 1;
        } else {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                str = this._characterEscapes.getEscapeSequence(c2).getValue();
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

    private int _prependOrWriteCharacterEscape(char[] cArr, int i, int i2, char c2, int i3) throws IOException, JsonGenerationException {
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
                if (c2 > 255) {
                    int i5 = (c2 >> '\b') & 255;
                    int i6 = c2 & 255;
                    char[] cArr6 = HEX_CHARS;
                    cArr5[10] = cArr6[i5 >> 4];
                    cArr5[11] = cArr6[i5 & 15];
                    cArr5[12] = cArr6[i6 >> 4];
                    cArr5[13] = cArr6[i6 & 15];
                    this._writer.write(cArr5, 8, 6);
                } else {
                    char[] cArr7 = HEX_CHARS;
                    cArr5[6] = cArr7[c2 >> 4];
                    cArr5[7] = cArr7[c2 & 15];
                    this._writer.write(cArr5, 2, 6);
                }
            } else {
                int i7 = i - 6;
                int i8 = i7 + 1;
                cArr[i7] = (char) 92;
                int i9 = i8 + 1;
                cArr[i8] = (char) 117;
                if (c2 > 255) {
                    int i10 = (c2 >> '\b') & 255;
                    int i11 = i9 + 1;
                    char[] cArr8 = HEX_CHARS;
                    cArr[i9] = cArr8[i10 >> 4];
                    i4 = i11 + 1;
                    cArr[i11] = cArr8[i10 & 15];
                    c2 = (char) (c2 & 255);
                } else {
                    int i12 = i9 + 1;
                    cArr[i9] = (char) 48;
                    i4 = i12 + 1;
                    cArr[i12] = (char) 48;
                }
                int i13 = i4 + 1;
                char[] cArr9 = HEX_CHARS;
                cArr[i4] = cArr9[c2 >> 4];
                cArr[i13] = cArr9[c2 & 15];
                i = i13 - 5;
            }
            return i;
        } else {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                str = this._characterEscapes.getEscapeSequence(c2).getValue();
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

    private void _prependOrWriteCharacterEscape(char c2, int i) throws IOException, JsonGenerationException {
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
                if (c2 > 255) {
                    int i8 = (c2 >> '\b') & 255;
                    int i9 = i7 + 1;
                    char[] cArr5 = HEX_CHARS;
                    cArr4[i9] = cArr5[i8 >> 4];
                    i2 = i9 + 1;
                    cArr4[i2] = cArr5[i8 & 15];
                    c2 = (char) (c2 & 255);
                } else {
                    int i10 = i7 + 1;
                    cArr4[i10] = (char) 48;
                    i2 = i10 + 1;
                    cArr4[i2] = (char) 48;
                }
                int i11 = i2 + 1;
                char[] cArr6 = HEX_CHARS;
                cArr4[i11] = cArr6[c2 >> 4];
                cArr4[i11 + 1] = cArr6[c2 & 15];
                return;
            }
            char[] cArr7 = this._entityBuffer;
            char[] cArr8 = cArr7;
            if (cArr7 == null) {
                cArr8 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c2 > 255) {
                int i12 = (c2 >> '\b') & 255;
                int i13 = c2 & 255;
                char[] cArr9 = HEX_CHARS;
                cArr8[10] = cArr9[i12 >> 4];
                cArr8[11] = cArr9[i12 & 15];
                cArr8[12] = cArr9[i13 >> 4];
                cArr8[13] = cArr9[i13 & 15];
                this._writer.write(cArr8, 8, 6);
                return;
            }
            char[] cArr10 = HEX_CHARS;
            cArr8[6] = cArr10[c2 >> 4];
            cArr8[7] = cArr10[c2 & 15];
            this._writer.write(cArr8, 2, 6);
        } else {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                str = this._characterEscapes.getEscapeSequence(c2).getValue();
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

    private int _readMore(InputStream inputStream, byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4;
        int i5 = 0;
        for (int i6 = i; i6 < i2; i6++) {
            bArr[i5] = bArr[i6];
            i5++;
        }
        int min = Math.min(i3, bArr.length);
        do {
            int i7 = min - i5;
            i4 = i5;
            if (i7 == 0) {
                break;
            }
            int read = inputStream.read(bArr, i5, i7);
            if (read < 0) {
                return i5;
            }
            i4 = i5 + read;
            i5 = i4;
        } while (i4 < 3);
        return i4;
    }

    private final void _writeFieldNameTail(SerializableString serializableString) throws IOException {
        char[] asQuotedChars = serializableString.asQuotedChars();
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
    }

    private void _writeLongString(String str) throws IOException {
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
            } else if (this._maximumNonEscapedChar != 0) {
                _writeSegmentASCII(i3, this._maximumNonEscapedChar);
            } else {
                _writeSegment(i3);
            }
            if (i4 < length) {
                i = i4;
            } else {
                return;
            }
        }
    }

    private final void _writeNull() throws IOException {
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

    private void _writeQuotedInt(int i) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i3 = i2 + 1;
        this._outputTail = i3;
        cArr[i2] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(i, cArr, i3);
        this._outputTail = outputInt;
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        cArr2[outputInt] = this._quoteChar;
    }

    private void _writeQuotedLong(long j) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        int i2 = i + 1;
        this._outputTail = i2;
        cArr[i] = this._quoteChar;
        int outputLong = NumberOutput.outputLong(j, cArr, i2);
        this._outputTail = outputLong;
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputLong + 1;
        cArr2[outputLong] = this._quoteChar;
    }

    private void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    private void _writeQuotedRaw(char[] cArr, int i, int i2) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr2[i3] = this._quoteChar;
        writeRaw(cArr, i, i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr3[i4] = this._quoteChar;
    }

    private void _writeQuotedShort(short s) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        int i2 = i + 1;
        this._outputTail = i2;
        cArr[i] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(s, cArr, i2);
        this._outputTail = outputInt;
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        cArr2[outputInt] = this._quoteChar;
    }

    private void _writeSegment(int i) throws IOException {
        char[] cArr;
        char c2;
        int i2;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            do {
                cArr = this._outputBuffer;
                c2 = cArr[i3];
                if (c2 < length) {
                    i2 = i3;
                    if (iArr[c2] != 0) {
                        break;
                    }
                }
                i2 = i3 + 1;
                i3 = i2;
            } while (i2 < i);
            int i5 = i2 - i4;
            if (i5 > 0) {
                this._writer.write(cArr, i4, i5);
                if (i2 >= i) {
                    return;
                }
            }
            i3 = i2 + 1;
            i4 = _prependOrWriteCharacterEscape(this._outputBuffer, i3, i, c2, iArr[c2]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0080 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeSegmentASCII(int r8, int r9) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentASCII(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeSegmentCustom(int r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentCustom(int):void");
    }

    private void _writeString(String str) throws IOException {
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
        } else if (this._maximumNonEscapedChar != 0) {
            _writeStringASCII(length, this._maximumNonEscapedChar);
        } else {
            _writeString2(length);
        }
    }

    private void _writeString(char[] cArr, int i, int i2) throws IOException {
        int i3;
        if (this._characterEscapes != null) {
            _writeStringCustom(cArr, i, i2);
        } else if (this._maximumNonEscapedChar != 0) {
            _writeStringASCII(cArr, i, i2, this._maximumNonEscapedChar);
        } else {
            int i4 = i2 + i;
            int[] iArr = this._outputEscapes;
            int length = iArr.length;
            while (i < i4) {
                int i5 = i;
                do {
                    char c2 = cArr[i5];
                    if (c2 < length) {
                        i3 = i5;
                        if (iArr[c2] != 0) {
                            break;
                        }
                    }
                    i3 = i5 + 1;
                    i5 = i3;
                } while (i3 < i4);
                int i6 = i3 - i;
                if (i6 < 32) {
                    if (this._outputTail + i6 > this._outputEnd) {
                        _flushBuffer();
                    }
                    if (i6 > 0) {
                        System.arraycopy(cArr, i, this._outputBuffer, this._outputTail, i6);
                        this._outputTail += i6;
                    }
                } else {
                    _flushBuffer();
                    this._writer.write(cArr, i, i6);
                }
                if (i3 < i4) {
                    i = i3 + 1;
                    char c3 = cArr[i3];
                    _appendCharacterEscape(c3, iArr[c3]);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0049, code lost:
        if (r0 <= 0) goto L_0x0059;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
        r5._writer.write(r0, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0059, code lost:
        r0 = r5._outputBuffer;
        r0 = r5._outputTail;
        r5._outputTail = r0 + 1;
        r0 = r0[r0];
        _prependOrWriteCharacterEscape(r0, r0[r0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        r0 = r5._outputHead;
        r0 = r0 - r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeString2(int r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0._outputTail
            r1 = r6
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            int[] r0 = r0._outputEscapes
            r7 = r0
            r0 = r7
            int r0 = r0.length
            r8 = r0
        L_0x000f:
            r0 = r5
            int r0 = r0._outputTail
            r1 = r6
            if (r0 >= r1) goto L_0x0093
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
            r1 = r8
            if (r0 >= r1) goto L_0x0081
            r0 = r7
            r1 = r11
            r0 = r0[r1]
            if (r0 != 0) goto L_0x003a
            goto L_0x0081
        L_0x003a:
            r0 = r5
            int r0 = r0._outputHead
            r11 = r0
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r10 = r0
            r0 = r10
            if (r0 <= 0) goto L_0x0059
            r0 = r5
            java.io.Writer r0 = r0._writer
            r1 = r9
            r2 = r11
            r3 = r10
            r0.write(r1, r2, r3)
        L_0x0059:
            r0 = r5
            char[] r0 = r0._outputBuffer
            r9 = r0
            r0 = r5
            int r0 = r0._outputTail
            r10 = r0
            r0 = r5
            r1 = r10
            r2 = 1
            int r1 = r1 + r2
            r0._outputTail = r1
            r0 = r9
            r1 = r10
            char r0 = r0[r1]
            r12 = r0
            r0 = r5
            r1 = r12
            r2 = r7
            r3 = r12
            r2 = r2[r3]
            r0._prependOrWriteCharacterEscape(r1, r2)
            goto L_0x000f
        L_0x0081:
            int r10 = r10 + 1
            r0 = r5
            r1 = r10
            r0._outputTail = r1
            r0 = r10
            r1 = r6
            if (r0 >= r1) goto L_0x0093
            goto L_0x0017
        L_0x0093:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeString2(int):void");
    }

    private void _writeString2(SerializableString serializableString) throws IOException {
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
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004f, code lost:
        r0 = r5._outputHead;
        r0 = r0 - r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005e, code lost:
        if (r0 <= 0) goto L_0x006e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0061, code lost:
        r5._writer.write(r0, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006e, code lost:
        r5._outputTail++;
        _prependOrWriteCharacterEscape(r0, r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0091 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringASCII(int r6, int r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
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
            if (r0 >= r1) goto L_0x0091
        L_0x0020:
            r0 = r5
            char[] r0 = r0._outputBuffer
            r11 = r0
            r0 = r5
            int r0 = r0._outputTail
            r12 = r0
            r0 = r11
            r1 = r12
            char r0 = r0[r1]
            r13 = r0
            r0 = r13
            r1 = r10
            if (r0 >= r1) goto L_0x0047
            r0 = r9
            r1 = r13
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0082
            goto L_0x004f
        L_0x0047:
            r0 = r13
            r1 = r7
            if (r0 <= r1) goto L_0x0082
            r0 = -1
            r6 = r0
        L_0x004f:
            r0 = r5
            int r0 = r0._outputHead
            r14 = r0
            r0 = r12
            r1 = r14
            int r0 = r0 - r1
            r12 = r0
            r0 = r12
            if (r0 <= 0) goto L_0x006e
            r0 = r5
            java.io.Writer r0 = r0._writer
            r1 = r11
            r2 = r14
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
            r1 = r13
            r2 = r6
            r0._prependOrWriteCharacterEscape(r1, r2)
            goto L_0x0018
        L_0x0082:
            r0 = r12
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            r1 = r6
            r0._outputTail = r1
            r0 = r6
            r1 = r8
            if (r0 < r1) goto L_0x0020
        L_0x0091:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0070 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringASCII(char[] r7, int r8, int r9, int r10) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(char[], int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00c6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringCustom(int r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringCustom(char[] r7, int r8, int r9) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(char[], int, int):void");
    }

    private void writeRawLong(String str) throws IOException {
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

    protected void _flushBuffer() throws IOException {
        int i = this._outputTail;
        int i2 = this._outputHead;
        int i3 = i - i2;
        if (i3 > 0) {
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i2, i3);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public void _releaseBuffers() {
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
        char[] cArr2 = this._copyBuffer;
        if (cArr2 != null) {
            this._copyBuffer = null;
            this._ioContext.releaseNameCopyBuffer(cArr2);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public final void _verifyValueWrite(String str) throws IOException {
        int i;
        int writeValue = this._writeContext.writeValue();
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str, writeValue);
            return;
        }
        if (writeValue == 1) {
            i = 44;
        } else if (writeValue == 2) {
            i = 58;
        } else if (writeValue != 3) {
            if (writeValue == 5) {
                _reportCantWriteValueExpectName(str);
                return;
            }
            return;
        } else if (this._rootValueSeparator != null) {
            writeRaw(this._rootValueSeparator.getValue());
            return;
        } else {
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = (char) i;
    }

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        int i;
        int i2 = this._outputEnd - 6;
        int i3 = 2;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i4 = -3;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i4;
            int i9 = i5;
            i = i6;
            if (i5 > i4) {
                i = _readMore(inputStream, bArr, i5, i6, bArr.length);
                if (i < 3) {
                    break;
                }
                i8 = i - 3;
                i9 = 0;
            }
            if (this._outputTail > i2) {
                _flushBuffer();
            }
            int i10 = i9 + 1;
            byte b2 = bArr[i9];
            int i11 = i10 + 1;
            byte b3 = bArr[i10];
            int i12 = i11 + 1;
            byte b4 = bArr[i11];
            int i13 = i7 + 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((b3 & 255) | (b2 << 8)) << 8) | (b4 & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            int i14 = maxLineLength - 1;
            maxLineLength = i14;
            i4 = i8;
            i5 = i12;
            i6 = i;
            i7 = i13;
            if (i14 <= 0) {
                char[] cArr = this._outputBuffer;
                int i15 = encodeBase64Chunk + 1;
                this._outputTail = i15;
                cArr[encodeBase64Chunk] = (char) 92;
                this._outputTail = i15 + 1;
                cArr[i15] = (char) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
                i4 = i8;
                i5 = i12;
                i6 = i;
                i7 = i13;
            }
        }
        int i16 = i7;
        if (i > 0) {
            if (this._outputTail > i2) {
                _flushBuffer();
            }
            int i17 = bArr[0] << 16;
            if (1 < i) {
                i17 |= (bArr[1] & 255) << 8;
            } else {
                i3 = 1;
            }
            i16 = i7 + i3;
            this._outputTail = base64Variant.encodeBase64Partial(i17, i3, this._outputBuffer, this._outputTail);
        }
        return i16;
    }

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i) throws IOException, JsonGenerationException {
        int i2;
        int i3;
        int i4 = this._outputEnd - 6;
        int i5 = 2;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i6 = -3;
        int i7 = 0;
        int i8 = 0;
        int i9 = i;
        while (true) {
            i2 = i7;
            i3 = i8;
            if (i9 <= 2) {
                break;
            }
            int i10 = i6;
            int i11 = i7;
            i3 = i8;
            if (i7 > i6) {
                i3 = _readMore(inputStream, bArr, i7, i8, i9);
                if (i3 < 3) {
                    i2 = 0;
                    break;
                }
                i10 = i3 - 3;
                i11 = 0;
            }
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            int i12 = i11 + 1;
            byte b2 = bArr[i11];
            int i13 = i12 + 1;
            byte b3 = bArr[i12];
            int i14 = i13 + 1;
            byte b4 = bArr[i13];
            int i15 = i9 - 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((b3 & 255) | (b2 << 8)) << 8) | (b4 & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            int i16 = maxLineLength - 1;
            maxLineLength = i16;
            i6 = i10;
            i7 = i14;
            i8 = i3;
            i9 = i15;
            if (i16 <= 0) {
                char[] cArr = this._outputBuffer;
                int i17 = encodeBase64Chunk + 1;
                this._outputTail = i17;
                cArr[encodeBase64Chunk] = (char) 92;
                this._outputTail = i17 + 1;
                cArr[i17] = (char) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
                i6 = i10;
                i7 = i14;
                i8 = i3;
                i9 = i15;
            }
        }
        int i18 = i9;
        if (i9 > 0) {
            int _readMore = _readMore(inputStream, bArr, i2, i3, i9);
            i18 = i9;
            if (_readMore > 0) {
                if (this._outputTail > i4) {
                    _flushBuffer();
                }
                int i19 = bArr[0] << 16;
                if (1 < _readMore) {
                    i19 |= (bArr[1] & 255) << 8;
                } else {
                    i5 = 1;
                }
                this._outputTail = base64Variant.encodeBase64Partial(i19, i5, this._outputBuffer, this._outputTail);
                i18 = i9 - i5;
            }
        }
        return i18;
    }

    protected final void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        while (i <= i2 - 3) {
            if (this._outputTail > i3) {
                _flushBuffer();
            }
            int i4 = i + 1;
            int i5 = i4 + 1;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i] << 8) | (bArr[i4] & 255)) << 8) | (bArr[i5] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            int i6 = maxLineLength - 1;
            maxLineLength = i6;
            if (i6 <= 0) {
                char[] cArr = this._outputBuffer;
                int i7 = encodeBase64Chunk + 1;
                this._outputTail = i7;
                cArr[encodeBase64Chunk] = (char) 92;
                this._outputTail = i7 + 1;
                cArr[i7] = (char) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
            i = i5 + 1;
        }
        int i8 = i2 - i;
        if (i8 > 0) {
            if (this._outputTail > i3) {
                _flushBuffer();
            }
            int i9 = bArr[i] << 16;
            int i10 = i9;
            if (i8 == 2) {
                i10 = i9 | ((bArr[i + 1] & 255) << 8);
            }
            this._outputTail = base64Variant.encodeBase64Partial(i10, i8, this._outputBuffer, this._outputTail);
        }
    }

    protected final void _writeFieldName(SerializableString serializableString, boolean z) throws IOException {
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
        if (this._cfgUnqNames) {
            char[] asQuotedChars = serializableString.asQuotedChars();
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        int i3 = i2 + 1;
        this._outputTail = i3;
        cArr2[i2] = this._quoteChar;
        int appendQuoted = serializableString.appendQuoted(cArr2, i3);
        if (appendQuoted < 0) {
            _writeFieldNameTail(serializableString);
            return;
        }
        int i4 = this._outputTail + appendQuoted;
        this._outputTail = i4;
        if (i4 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        cArr3[i5] = this._quoteChar;
    }

    protected final void _writeFieldName(String str, boolean z) throws IOException {
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
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr3[i3] = this._quoteChar;
    }

    protected final void _writePPFieldName(SerializableString serializableString, boolean z) throws IOException {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        char[] asQuotedChars = serializableString.asQuotedChars();
        if (this._cfgUnqNames) {
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    protected final void _writePPFieldName(String str, boolean z) throws IOException {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean canWriteFormattedNumbers() {
        return true;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this._outputBuffer != null && isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                JsonStreamContext outputContext = getOutputContext();
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
        cArr[i3] = this._quoteChar;
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
            cArr2[i4] = this._quoteChar;
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
        cArr[i3] = this._quoteChar;
        _writeBinary(base64Variant, bArr, i, i2 + i);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
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
    public void writeEndArray() throws IOException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not Array but " + this._writeContext.typeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
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
    public void writeEndObject() throws IOException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not Object but " + this._writeContext.typeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = (char) JsonReaderKt.END_OBJ;
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
    public void writeNumber(double d2) throws IOException {
        if (this._cfgNumbersAsStrings || (NumberOutput.notFinite(d2) && isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            writeString(String.valueOf(d2));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(d2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f) throws IOException {
        if (this._cfgNumbersAsStrings || (NumberOutput.notFinite(f) && isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
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
        if (str == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
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
            _writeQuotedRaw(_asString(bigDecimal));
        } else {
            writeRaw(_asString(bigDecimal));
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
    public void writeNumber(char[] cArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(cArr, i, i2);
        } else {
            writeRaw(cArr, i, i2);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c2) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = c2;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        int appendUnquoted = serializableString.appendUnquoted(this._outputBuffer, this._outputTail);
        if (appendUnquoted < 0) {
            writeRaw(serializableString.getValue());
        } else {
            this._outputTail += appendUnquoted;
        }
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

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray() throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
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
    public void writeStartArray(Object obj) throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext(obj);
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
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
    public void writeStartArray(Object obj, int i) throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext(obj);
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = (char) 91;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject() throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
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
    public void writeStartObject(Object obj) throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext(obj);
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
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
        int i2 = i + 1;
        this._outputTail = i2;
        cArr[i] = this._quoteChar;
        int appendQuoted = serializableString.appendQuoted(cArr, i2);
        if (appendQuoted < 0) {
            _writeString2(serializableString);
            return;
        }
        int i3 = this._outputTail + appendQuoted;
        this._outputTail = i3;
        if (i3 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(Reader reader, int i) throws IOException {
        int read;
        _verifyValueWrite("write a string");
        if (reader == null) {
            _reportError("null reader");
            return;
        }
        int i2 = i >= 0 ? i : Integer.MAX_VALUE;
        if (this._outputTail + i >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr[i3] = this._quoteChar;
        char[] _allocateCopyBuffer = _allocateCopyBuffer();
        while (i2 > 0 && (read = reader.read(_allocateCopyBuffer, 0, Math.min(i2, _allocateCopyBuffer.length))) > 0) {
            if (this._outputTail + i >= this._outputEnd) {
                _flushBuffer();
            }
            _writeString(_allocateCopyBuffer, 0, read);
            i2 -= read;
        }
        if (this._outputTail + i >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr2[i4] = this._quoteChar;
        if (i2 > 0 && i >= 0) {
            _reportError("Didn't read enough from reader");
        }
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
        cArr[i] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = this._quoteChar;
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
        cArr2[i3] = this._quoteChar;
        _writeString(cArr, i, i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        cArr3[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }
}
