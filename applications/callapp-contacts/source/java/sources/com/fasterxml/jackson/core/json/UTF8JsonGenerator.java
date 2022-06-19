package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.p309io.CharTypes;
import com.fasterxml.jackson.core.p309io.CharacterEscapes;
import com.fasterxml.jackson.core.p309io.IOContext;
import com.fasterxml.jackson.core.p309io.NumberOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/json/UTF8JsonGenerator.class */
public class UTF8JsonGenerator extends JsonGeneratorImpl {
    private static final byte BYTE_0 = 48;
    private static final byte BYTE_BACKSLASH = 92;
    private static final byte BYTE_COLON = 58;
    private static final byte BYTE_COMMA = 44;
    private static final byte BYTE_LBRACKET = 91;
    private static final byte BYTE_LCURLY = 123;
    private static final byte BYTE_RBRACKET = 93;
    private static final byte BYTE_RCURLY = 125;
    private static final byte BYTE_u = 117;
    private static final int MAX_BYTES_TO_BUFFER = 512;
    protected boolean _bufferRecyclable;
    protected char[] _charBuffer;
    protected final int _charBufferLength;
    protected byte[] _entityBuffer;
    protected byte[] _outputBuffer;
    protected final int _outputEnd;
    protected final int _outputMaxContiguous;
    protected final OutputStream _outputStream;
    protected int _outputTail;
    protected byte _quoteChar;
    private static final byte[] HEX_CHARS = CharTypes.copyHexBytes();
    private static final byte[] NULL_BYTES = {110, 117, 108, 108};
    private static final byte[] TRUE_BYTES = {116, 114, 117, 101};
    private static final byte[] FALSE_BYTES = {102, 97, 108, 115, 101};

    @Deprecated
    public UTF8JsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, OutputStream outputStream) {
        this(iOContext, i, objectCodec, outputStream, '\"');
    }

    public UTF8JsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, OutputStream outputStream, char c) {
        super(iOContext, i, objectCodec);
        this._outputStream = outputStream;
        this._quoteChar = (byte) c;
        if (c != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c);
        }
        this._bufferRecyclable = true;
        byte[] allocWriteEncodingBuffer = iOContext.allocWriteEncodingBuffer();
        this._outputBuffer = allocWriteEncodingBuffer;
        int length = allocWriteEncodingBuffer.length;
        this._outputEnd = length;
        this._outputMaxContiguous = length >> 3;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._charBuffer = allocConcatBuffer;
        this._charBufferLength = allocConcatBuffer.length;
        if (isEnabled(JsonGenerator.Feature.ESCAPE_NON_ASCII)) {
            setHighestNonEscapedChar(127);
        }
    }

    public UTF8JsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, OutputStream outputStream, char c, byte[] bArr, int i2, boolean z) {
        super(iOContext, i, objectCodec);
        this._outputStream = outputStream;
        this._quoteChar = (byte) c;
        if (c != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c);
        }
        this._bufferRecyclable = z;
        this._outputTail = i2;
        this._outputBuffer = bArr;
        int length = bArr.length;
        this._outputEnd = length;
        this._outputMaxContiguous = length >> 3;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._charBuffer = allocConcatBuffer;
        this._charBufferLength = allocConcatBuffer.length;
    }

    @Deprecated
    public UTF8JsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, OutputStream outputStream, byte[] bArr, int i2, boolean z) {
        this(iOContext, i, objectCodec, outputStream, '\"', bArr, i2, z);
    }

    private final int _handleLongCustomEscape(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IOException, JsonGenerationException {
        int length = bArr2.length;
        int i4 = i;
        if (i + length > i2) {
            this._outputTail = i;
            _flushBuffer();
            int i5 = this._outputTail;
            i4 = i5;
            if (length > bArr.length) {
                this._outputStream.write(bArr2, 0, length);
                return i5;
            }
        }
        System.arraycopy(bArr2, 0, bArr, i4, length);
        int i6 = i4 + length;
        if ((i3 * 6) + i6 > i2) {
            this._outputTail = i6;
            _flushBuffer();
            return this._outputTail;
        }
        return i6;
    }

    private final int _outputMultiByteChar(int i, int i2) throws IOException {
        int i3;
        byte[] bArr = this._outputBuffer;
        if (i < 55296 || i > 57343) {
            int i4 = i2 + 1;
            bArr[i2] = (byte) ((i >> 12) | 224);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (((i >> 6) & 63) | 128);
            bArr[i5] = (byte) ((i & 63) | 128);
            i3 = i5 + 1;
        } else {
            int i6 = i2 + 1;
            bArr[i2] = (byte) 92;
            int i7 = i6 + 1;
            bArr[i6] = (byte) 117;
            int i8 = i7 + 1;
            byte[] bArr2 = HEX_CHARS;
            bArr[i7] = bArr2[(i >> 12) & 15];
            int i9 = i8 + 1;
            bArr[i8] = bArr2[(i >> 8) & 15];
            int i10 = i9 + 1;
            bArr[i9] = bArr2[(i >> 4) & 15];
            bArr[i10] = bArr2[i & 15];
            i3 = i10 + 1;
        }
        return i3;
    }

    private final int _outputRawMultiByteChar(int i, char[] cArr, int i2, int i3) throws IOException {
        if (i >= 55296 && i <= 57343) {
            if (i2 >= i3 || cArr == null) {
                _reportError(String.format("Split surrogate on writeRaw() input (last character): first character 0x%4x", Integer.valueOf(i)));
            } else {
                _outputSurrogates(i, cArr[i2]);
            }
            return i2 + 1;
        }
        byte[] bArr = this._outputBuffer;
        int i4 = this._outputTail;
        int i5 = i4 + 1;
        this._outputTail = i5;
        bArr[i4] = (byte) ((i >> 12) | 224);
        int i6 = i5 + 1;
        this._outputTail = i6;
        bArr[i5] = (byte) (((i >> 6) & 63) | 128);
        this._outputTail = i6 + 1;
        bArr[i6] = (byte) ((i & 63) | 128);
        return i2;
    }

    private final int _readMore(InputStream inputStream, byte[] bArr, int i, int i2, int i3) throws IOException {
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

    private final void _writeBytes(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
            if (length > 512) {
                this._outputStream.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    private final void _writeBytes(byte[] bArr, int i, int i2) throws IOException {
        if (this._outputTail + i2 > this._outputEnd) {
            _flushBuffer();
            if (i2 > 512) {
                this._outputStream.write(bArr, i, i2);
                return;
            }
        }
        System.arraycopy(bArr, i, this._outputBuffer, this._outputTail, i2);
        this._outputTail += i2;
    }

    private final int _writeCustomEscape(byte[] bArr, int i, SerializableString serializableString, int i2) throws IOException, JsonGenerationException {
        byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
        int length = asUnquotedUTF8.length;
        if (length > 6) {
            return _handleLongCustomEscape(bArr, i, this._outputEnd, asUnquotedUTF8, i2);
        }
        System.arraycopy(asUnquotedUTF8, 0, bArr, i, length);
        return i + length;
    }

    private final void _writeCustomStringSegment2(String str, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = this._maximumNonEscapedChar <= 0 ? 65535 : this._maximumNonEscapedChar;
        CharacterEscapes characterEscapes = this._characterEscapes;
        int i5 = i;
        int i6 = i3;
        while (i5 < i2) {
            int i7 = i5 + 1;
            char charAt = str.charAt(i5);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i6] = (byte) charAt;
                    i5 = i7;
                    i6++;
                } else {
                    int i8 = iArr[charAt];
                    if (i8 > 0) {
                        int i9 = i6 + 1;
                        bArr[i6] = (byte) 92;
                        i6 = i9 + 1;
                        bArr[i9] = (byte) i8;
                    } else if (i8 == -2) {
                        SerializableString escapeSequence = characterEscapes.getEscapeSequence(charAt);
                        if (escapeSequence == null) {
                            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(charAt) + ", although was supposed to have one");
                        }
                        i6 = _writeCustomEscape(bArr, i6, escapeSequence, i2 - i7);
                    } else {
                        i6 = _writeGenericEscape(charAt, i6);
                    }
                }
            } else if (charAt > i4) {
                i6 = _writeGenericEscape(charAt, i6);
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(charAt);
                if (escapeSequence2 != null) {
                    i6 = _writeCustomEscape(bArr, i6, escapeSequence2, i2 - i7);
                } else if (charAt <= 2047) {
                    int i10 = i6 + 1;
                    bArr[i6] = (byte) ((charAt >> 6) | 192);
                    i6 = i10 + 1;
                    bArr[i10] = (byte) ((charAt & '?') | 128);
                } else {
                    i6 = _outputMultiByteChar(charAt, i6);
                }
            }
            i5 = i7;
        }
        this._outputTail = i6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v68, types: [int] */
    private final void _writeCustomStringSegment2(char[] cArr, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        char c = this._maximumNonEscapedChar <= 0 ? (char) 65535 : this._maximumNonEscapedChar;
        CharacterEscapes characterEscapes = this._characterEscapes;
        int i4 = i;
        int i5 = i3;
        while (i4 < i2) {
            int i6 = i4 + 1;
            char c2 = cArr[i4];
            if (c2 <= 127) {
                if (iArr[c2] == 0) {
                    bArr[i5] = (byte) c2;
                    i4 = i6;
                    i5++;
                } else {
                    int i7 = iArr[c2];
                    if (i7 > 0) {
                        int i8 = i5 + 1;
                        bArr[i5] = (byte) 92;
                        i5 = i8 + 1;
                        bArr[i8] = (byte) i7;
                    } else if (i7 == -2) {
                        SerializableString escapeSequence = characterEscapes.getEscapeSequence(c2);
                        if (escapeSequence == null) {
                            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c2) + ", although was supposed to have one");
                        }
                        i5 = _writeCustomEscape(bArr, i5, escapeSequence, i2 - i6);
                    } else {
                        i5 = _writeGenericEscape(c2, i5);
                    }
                }
            } else if (c2 > c) {
                i5 = _writeGenericEscape(c2, i5);
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(c2);
                if (escapeSequence2 != null) {
                    i5 = _writeCustomEscape(bArr, i5, escapeSequence2, i2 - i6);
                } else if (c2 <= 2047) {
                    int i9 = i5 + 1;
                    bArr[i5] = (byte) ((c2 >> 6) | 192);
                    i5 = i9 + 1;
                    bArr[i9] = (byte) ((c2 & '?') | 128);
                } else {
                    i5 = _outputMultiByteChar(c2, i5);
                }
            }
            i4 = i6;
        }
        this._outputTail = i5;
    }

    private int _writeGenericEscape(int i, int i2) throws IOException {
        int i3;
        byte[] bArr = this._outputBuffer;
        int i4 = i2 + 1;
        bArr[i2] = (byte) 92;
        int i5 = i4 + 1;
        bArr[i4] = (byte) 117;
        if (i > 255) {
            int i6 = 255 & (i >> 8);
            int i7 = i5 + 1;
            byte[] bArr2 = HEX_CHARS;
            bArr[i5] = bArr2[i6 >> 4];
            i3 = i7 + 1;
            bArr[i7] = bArr2[i6 & 15];
            i &= 255;
        } else {
            int i8 = i5 + 1;
            bArr[i5] = (byte) 48;
            i3 = i8 + 1;
            bArr[i8] = (byte) 48;
        }
        int i9 = i3 + 1;
        byte[] bArr3 = HEX_CHARS;
        bArr[i3] = bArr3[i >> 4];
        bArr[i9] = bArr3[i & 15];
        return i9 + 1;
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(NULL_BYTES, 0, this._outputBuffer, this._outputTail, 4);
        this._outputTail += 4;
    }

    private final void _writeQuotedInt(int i) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i3 = i2 + 1;
        this._outputTail = i3;
        bArr[i2] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(i, bArr, i3);
        this._outputTail = outputInt;
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        bArr2[outputInt] = this._quoteChar;
    }

    private final void _writeQuotedLong(long j) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        int i2 = i + 1;
        this._outputTail = i2;
        bArr[i] = this._quoteChar;
        int outputLong = NumberOutput.outputLong(j, bArr, i2);
        this._outputTail = outputLong;
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputLong + 1;
        bArr2[outputLong] = this._quoteChar;
    }

    private final void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = this._quoteChar;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = this._quoteChar;
    }

    private void _writeQuotedRaw(char[] cArr, int i, int i2) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = this._quoteChar;
        writeRaw(cArr, i, i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr2[i4] = this._quoteChar;
    }

    private final void _writeQuotedShort(short s) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        int i2 = i + 1;
        this._outputTail = i2;
        bArr[i] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(s, bArr, i2);
        this._outputTail = outputInt;
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        bArr2[outputInt] = this._quoteChar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004b, code lost:
        r0 = r6._outputBuffer;
        r0 = r6._outputTail;
        r0 = r0 + 1;
        r6._outputTail = r0;
        r0[r0] = (byte) ((r0 >> 6) | 192);
        r6._outputTail = r0 + 1;
        r0[r0] = (byte) ((r0 & '?') | 128);
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x008e, code lost:
        r8 = _outputRawMultiByteChar(r0, r7, r0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0039, code lost:
        r0 = r8 + 1;
        r0 = r7[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0048, code lost:
        if (r0 >= 2048) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeRawSegment(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            r0 = r8
            r1 = r9
            if (r0 >= r1) goto L9c
        L5:
            r0 = r7
            r1 = r8
            char r0 = r0[r1]
            r10 = r0
            r0 = r10
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 > r1) goto L39
            r0 = r6
            byte[] r0 = r0._outputBuffer
            r11 = r0
            r0 = r6
            int r0 = r0._outputTail
            r12 = r0
            r0 = r6
            r1 = r12
            r2 = 1
            int r1 = r1 + r2
            r0._outputTail = r1
            r0 = r11
            r1 = r12
            r2 = r10
            byte r2 = (byte) r2
            byte r2 = (byte) r2
            r0[r1] = r2
            int r8 = r8 + 1
            r0 = r8
            r1 = r9
            if (r0 >= r1) goto L9c
            goto L5
        L39:
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r7
            r1 = r8
            char r0 = r0[r1]
            r13 = r0
            r0 = r13
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 >= r1) goto L8e
            r0 = r6
            byte[] r0 = r0._outputBuffer
            r11 = r0
            r0 = r6
            int r0 = r0._outputTail
            r8 = r0
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r12 = r0
            r0 = r6
            r1 = r12
            r0._outputTail = r1
            r0 = r11
            r1 = r8
            r2 = r13
            r3 = 6
            int r2 = r2 >> r3
            r3 = 192(0xc0, float:2.69E-43)
            r2 = r2 | r3
            byte r2 = (byte) r2
            byte r2 = (byte) r2
            r0[r1] = r2
            r0 = r6
            r1 = r12
            r2 = 1
            int r1 = r1 + r2
            r0._outputTail = r1
            r0 = r11
            r1 = r12
            r2 = r13
            r3 = 63
            r2 = r2 & r3
            r3 = 128(0x80, float:1.794E-43)
            r2 = r2 | r3
            byte r2 = (byte) r2
            byte r2 = (byte) r2
            r0[r1] = r2
            r0 = r10
            r8 = r0
            goto L0
        L8e:
            r0 = r6
            r1 = r13
            r2 = r7
            r3 = r10
            r4 = r9
            int r0 = r0._outputRawMultiByteChar(r1, r2, r3, r4)
            r8 = r0
            goto L0
        L9c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator._writeRawSegment(char[], int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005b, code lost:
        if ((r6._outputTail + 3) < r6._outputEnd) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005e, code lost:
        _flushBuffer();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0062, code lost:
        r0 = r8 + 1;
        r0 = r7[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0070, code lost:
        if (r0 >= 2048) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0073, code lost:
        r0 = r6._outputTail;
        r0 = r0 + 1;
        r6._outputTail = r0;
        r0[r0] = (byte) ((r0 >> 6) | 192);
        r6._outputTail = r0 + 1;
        r0[r0] = (byte) ((r0 & '?') | 128);
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00af, code lost:
        r8 = _outputRawMultiByteChar(r0, r7, r0, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void _writeSegmentedRaw(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator._writeSegmentedRaw(char[], int, int):void");
    }

    private final void _writeStringSegment(String str, int i, int i2) throws IOException {
        char charAt;
        int i3 = i2 + i;
        int i4 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i < i3 && (charAt = str.charAt(i)) <= 127 && iArr[charAt] == 0) {
            bArr[i4] = (byte) charAt;
            i++;
            i4++;
        }
        this._outputTail = i4;
        if (i < i3) {
            if (this._characterEscapes != null) {
                _writeCustomStringSegment2(str, i, i3);
            } else if (this._maximumNonEscapedChar == 0) {
                _writeStringSegment2(str, i, i3);
            } else {
                _writeStringSegmentASCII2(str, i, i3);
            }
        }
    }

    private final void _writeStringSegment(char[] cArr, int i, int i2) throws IOException {
        char c;
        int i3 = i2 + i;
        int i4 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i5 = i;
        int i6 = i4;
        while (i5 < i3 && (c = cArr[i5]) <= 127 && iArr[c] == 0) {
            bArr[i6] = (byte) c;
            i5++;
            i6++;
        }
        this._outputTail = i6;
        if (i5 < i3) {
            if (this._characterEscapes != null) {
                _writeCustomStringSegment2(cArr, i5, i3);
            } else if (this._maximumNonEscapedChar == 0) {
                _writeStringSegment2(cArr, i5, i3);
            } else {
                _writeStringSegmentASCII2(cArr, i5, i3);
            }
        }
    }

    private final void _writeStringSegment2(String str, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = i;
        int i5 = i3;
        while (i4 < i2) {
            int i6 = i4 + 1;
            char charAt = str.charAt(i4);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i5] = (byte) charAt;
                    i4 = i6;
                    i5++;
                } else {
                    int i7 = iArr[charAt];
                    if (i7 > 0) {
                        int i8 = i5 + 1;
                        bArr[i5] = (byte) 92;
                        i5 = i8 + 1;
                        bArr[i8] = (byte) i7;
                    } else {
                        i5 = _writeGenericEscape(charAt, i5);
                    }
                }
            } else if (charAt <= 2047) {
                int i9 = i5 + 1;
                bArr[i5] = (byte) ((charAt >> 6) | 192);
                i5 = i9 + 1;
                bArr[i9] = (byte) ((charAt & '?') | 128);
            } else {
                i5 = _outputMultiByteChar(charAt, i5);
            }
            i4 = i6;
        }
        this._outputTail = i5;
    }

    private final void _writeStringSegment2(char[] cArr, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = i;
        int i5 = i3;
        while (i4 < i2) {
            int i6 = i4 + 1;
            char c = cArr[i4];
            if (c <= 127) {
                if (iArr[c] == 0) {
                    bArr[i5] = (byte) c;
                    i4 = i6;
                    i5++;
                } else {
                    int i7 = iArr[c];
                    if (i7 > 0) {
                        int i8 = i5 + 1;
                        bArr[i5] = (byte) 92;
                        i5 = i8 + 1;
                        bArr[i8] = (byte) i7;
                    } else {
                        i5 = _writeGenericEscape(c, i5);
                    }
                }
            } else if (c <= 2047) {
                int i9 = i5 + 1;
                bArr[i5] = (byte) ((c >> 6) | 192);
                i5 = i9 + 1;
                bArr[i9] = (byte) ((c & '?') | 128);
            } else {
                i5 = _outputMultiByteChar(c, i5);
            }
            i4 = i6;
        }
        this._outputTail = i5;
    }

    private final void _writeStringSegmentASCII2(String str, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = this._maximumNonEscapedChar;
        int i5 = i;
        int i6 = i3;
        while (i5 < i2) {
            int i7 = i5 + 1;
            char charAt = str.charAt(i5);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i6] = (byte) charAt;
                    i5 = i7;
                    i6++;
                } else {
                    int i8 = iArr[charAt];
                    if (i8 > 0) {
                        int i9 = i6 + 1;
                        bArr[i6] = (byte) 92;
                        i6 = i9 + 1;
                        bArr[i9] = (byte) i8;
                    } else {
                        i6 = _writeGenericEscape(charAt, i6);
                    }
                }
            } else if (charAt > i4) {
                i6 = _writeGenericEscape(charAt, i6);
            } else if (charAt <= 2047) {
                int i10 = i6 + 1;
                bArr[i6] = (byte) ((charAt >> 6) | 192);
                i6 = i10 + 1;
                bArr[i10] = (byte) ((charAt & '?') | 128);
            } else {
                i6 = _outputMultiByteChar(charAt, i6);
            }
            i5 = i7;
        }
        this._outputTail = i6;
    }

    private final void _writeStringSegmentASCII2(char[] cArr, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = this._maximumNonEscapedChar;
        int i5 = i;
        int i6 = i3;
        while (i5 < i2) {
            int i7 = i5 + 1;
            char c = cArr[i5];
            if (c <= 127) {
                if (iArr[c] == 0) {
                    bArr[i6] = (byte) c;
                    i5 = i7;
                    i6++;
                } else {
                    int i8 = iArr[c];
                    if (i8 > 0) {
                        int i9 = i6 + 1;
                        bArr[i6] = (byte) 92;
                        i6 = i9 + 1;
                        bArr[i9] = (byte) i8;
                    } else {
                        i6 = _writeGenericEscape(c, i6);
                    }
                }
            } else if (c > i4) {
                i6 = _writeGenericEscape(c, i6);
            } else if (c <= 2047) {
                int i10 = i6 + 1;
                bArr[i6] = (byte) ((c >> 6) | 192);
                i6 = i10 + 1;
                bArr[i10] = (byte) ((c & '?') | 128);
            } else {
                i6 = _outputMultiByteChar(c, i6);
            }
            i5 = i7;
        }
        this._outputTail = i6;
    }

    private final void _writeStringSegments(String str, int i, int i2) throws IOException {
        int i3;
        do {
            int min = Math.min(this._outputMaxContiguous, i2);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i, min);
            i += min;
            i3 = i2 - min;
            i2 = i3;
        } while (i3 > 0);
    }

    private final void _writeStringSegments(String str, boolean z) throws IOException {
        if (z) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = this._quoteChar;
        }
        int length = str.length();
        int i2 = 0;
        while (length > 0) {
            int min = Math.min(this._outputMaxContiguous, length);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i2, min);
            i2 += min;
            length -= min;
        }
        if (z) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i3 = this._outputTail;
            this._outputTail = i3 + 1;
            bArr2[i3] = this._quoteChar;
        }
    }

    private final void _writeStringSegments(char[] cArr, int i, int i2) throws IOException {
        int i3;
        do {
            int min = Math.min(this._outputMaxContiguous, i2);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i, min);
            i += min;
            i3 = i2 - min;
            i2 = i3;
        } while (i3 > 0);
    }

    private final void _writeUTF8Segment(byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int[] iArr = this._outputEscapes;
        for (int i3 = i; i3 < i + i2; i3++) {
            byte b = bArr[i3];
            if (b >= 0 && iArr[b] != 0) {
                _writeUTF8Segment2(bArr, i, i2);
                return;
            }
        }
        if (this._outputTail + i2 > this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(bArr, i, this._outputBuffer, this._outputTail, i2);
        this._outputTail += i2;
    }

    private final void _writeUTF8Segment2(byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = this._outputTail;
        int i4 = i3;
        if ((i2 * 6) + i3 > this._outputEnd) {
            _flushBuffer();
            i4 = this._outputTail;
        }
        byte[] bArr2 = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i5 = i;
        while (true) {
            int i6 = i5;
            if (i6 >= i2 + i) {
                this._outputTail = i4;
                return;
            }
            i5 = i6 + 1;
            byte b = bArr[i6];
            if (b < 0 || iArr[b] == 0) {
                bArr2[i4] = b;
                i4++;
            } else {
                int i7 = iArr[b];
                if (i7 > 0) {
                    int i8 = i4 + 1;
                    bArr2[i4] = (byte) 92;
                    i4 = i8 + 1;
                    bArr2[i8] = (byte) i7;
                } else {
                    i4 = _writeGenericEscape(b, i4);
                }
            }
        }
    }

    private final void _writeUTF8Segments(byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3;
        do {
            int min = Math.min(this._outputMaxContiguous, i2);
            _writeUTF8Segment(bArr, i, min);
            i += min;
            i3 = i2 - min;
            i2 = i3;
        } while (i3 > 0);
    }

    private final void _writeUnq(SerializableString serializableString) throws IOException {
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
    }

    protected final void _flushBuffer() throws IOException {
        int i = this._outputTail;
        if (i > 0) {
            this._outputTail = 0;
            this._outputStream.write(this._outputBuffer, 0, i);
        }
    }

    protected final void _outputSurrogates(int i, int i2) throws IOException {
        int _decodeSurrogate = _decodeSurrogate(i, i2);
        if (this._outputTail + 4 > this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i3 = this._outputTail;
        int i4 = i3 + 1;
        this._outputTail = i4;
        bArr[i3] = (byte) ((_decodeSurrogate >> 18) | 240);
        int i5 = i4 + 1;
        this._outputTail = i5;
        bArr[i4] = (byte) (((_decodeSurrogate >> 12) & 63) | 128);
        int i6 = i5 + 1;
        this._outputTail = i6;
        bArr[i5] = (byte) (((_decodeSurrogate >> 6) & 63) | 128);
        this._outputTail = i6 + 1;
        bArr[i6] = (byte) ((_decodeSurrogate & 63) | 128);
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public void _releaseBuffers() {
        byte[] bArr = this._outputBuffer;
        if (bArr != null && this._bufferRecyclable) {
            this._outputBuffer = null;
            this._ioContext.releaseWriteEncodingBuffer(bArr);
        }
        char[] cArr = this._charBuffer;
        if (cArr != null) {
            this._charBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
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
        } else if (writeValue != 2) {
            if (writeValue != 3) {
                if (writeValue != 5) {
                    return;
                }
                _reportCantWriteValueExpectName(str);
                return;
            } else if (this._rootValueSeparator == null) {
                return;
            } else {
                byte[] asUnquotedUTF8 = this._rootValueSeparator.asUnquotedUTF8();
                if (asUnquotedUTF8.length <= 0) {
                    return;
                }
                _writeBytes(asUnquotedUTF8);
                return;
            }
        } else {
            i = 58;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = (byte) i;
    }

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        int i;
        int i2;
        int i3 = this._outputEnd - 6;
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
            if (this._outputTail > i3) {
                _flushBuffer();
            }
            int i10 = i9 + 1;
            byte b = bArr[i9];
            int i11 = i10 + 1;
            byte b2 = bArr[i10];
            int i12 = i11 + 1;
            byte b3 = bArr[i11];
            int i13 = i7 + 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((b2 & 255) | (b << 8)) << 8) | (b3 & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            int i14 = maxLineLength - 1;
            maxLineLength = i14;
            i4 = i8;
            i5 = i12;
            i6 = i;
            i7 = i13;
            if (i14 <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i15 = encodeBase64Chunk + 1;
                this._outputTail = i15;
                bArr2[encodeBase64Chunk] = (byte) 92;
                this._outputTail = i15 + 1;
                bArr2[i15] = (byte) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
                i4 = i8;
                i5 = i12;
                i6 = i;
                i7 = i13;
            }
        }
        int i16 = i7;
        if (i > 0) {
            if (this._outputTail > i3) {
                _flushBuffer();
            }
            int i17 = bArr[0] << 16;
            if (1 < i) {
                i17 |= (bArr[1] & 255) << 8;
                i2 = 2;
            } else {
                i2 = 1;
            }
            this._outputTail = base64Variant.encodeBase64Partial(i17, i2, this._outputBuffer, this._outputTail);
            i16 = i7 + i2;
        }
        return i16;
    }

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i) throws IOException, JsonGenerationException {
        int i2;
        int i3;
        int i4;
        int i5 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i6 = -3;
        int i7 = 0;
        int i8 = i;
        int i9 = 0;
        while (true) {
            i2 = i9;
            i3 = i7;
            if (i8 <= 2) {
                break;
            }
            int i10 = i6;
            int i11 = i9;
            i3 = i7;
            if (i9 > i6) {
                i3 = _readMore(inputStream, bArr, i9, i7, i8);
                if (i3 < 3) {
                    i2 = 0;
                    break;
                }
                i10 = i3 - 3;
                i11 = 0;
            }
            if (this._outputTail > i5) {
                _flushBuffer();
            }
            int i12 = i11 + 1;
            byte b = bArr[i11];
            int i13 = i12 + 1;
            byte b2 = bArr[i12];
            int i14 = i13 + 1;
            byte b3 = bArr[i13];
            int i15 = i8 - 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((b2 & 255) | (b << 8)) << 8) | (b3 & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            int i16 = maxLineLength - 1;
            maxLineLength = i16;
            i6 = i10;
            i9 = i14;
            i7 = i3;
            i8 = i15;
            if (i16 <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i17 = encodeBase64Chunk + 1;
                this._outputTail = i17;
                bArr2[encodeBase64Chunk] = (byte) 92;
                this._outputTail = i17 + 1;
                bArr2[i17] = (byte) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
                i6 = i10;
                i9 = i14;
                i7 = i3;
                i8 = i15;
            }
        }
        int i18 = i8;
        if (i8 > 0) {
            int _readMore = _readMore(inputStream, bArr, i2, i3, i8);
            i18 = i8;
            if (_readMore > 0) {
                if (this._outputTail > i5) {
                    _flushBuffer();
                }
                int i19 = bArr[0] << 16;
                if (1 < _readMore) {
                    i19 |= (bArr[1] & 255) << 8;
                    i4 = 2;
                } else {
                    i4 = 1;
                }
                this._outputTail = base64Variant.encodeBase64Partial(i19, i4, this._outputBuffer, this._outputTail);
                i18 = i8 - i4;
            }
        }
        return i18;
    }

    protected final void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = this._outputEnd - 6;
        int i4 = i;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        while (i4 <= i2 - 3) {
            if (this._outputTail > i3) {
                _flushBuffer();
            }
            int i5 = i4 + 1;
            int i6 = i5 + 1;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i4] << 8) | (bArr[i5] & 255)) << 8) | (bArr[i6] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            int i7 = maxLineLength - 1;
            maxLineLength = i7;
            if (i7 <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i8 = encodeBase64Chunk + 1;
                this._outputTail = i8;
                bArr2[encodeBase64Chunk] = (byte) 92;
                this._outputTail = i8 + 1;
                bArr2[i8] = (byte) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
            i4 = i6 + 1;
        }
        int i9 = i2 - i4;
        if (i9 > 0) {
            if (this._outputTail > i3) {
                _flushBuffer();
            }
            int i10 = bArr[i4] << 16;
            int i11 = i10;
            if (i9 == 2) {
                i11 = i10 | ((bArr[i4 + 1] & 255) << 8);
            }
            this._outputTail = base64Variant.encodeBase64Partial(i11, i9, this._outputBuffer, this._outputTail);
        }
    }

    protected final void _writePPFieldName(SerializableString serializableString) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        boolean z = !this._cfgUnqNames;
        if (z) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = this._quoteChar;
        }
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (z) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr2[i2] = this._quoteChar;
        }
    }

    protected final void _writePPFieldName(String str) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = this._quoteChar;
        str.getChars(0, length, this._charBuffer, 0);
        if (length <= this._outputMaxContiguous) {
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(this._charBuffer, 0, length);
        } else {
            _writeStringSegments(this._charBuffer, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = this._quoteChar;
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
        this._outputTail = 0;
        if (this._outputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                this._outputStream.close();
            } else if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                this._outputStream.flush();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._outputStream == null || !isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this._outputStream.flush();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int getOutputBuffered() {
        return this._outputTail;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._outputStream;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) throws IOException, JsonGenerationException {
        int i2;
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = this._quoteChar;
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
            byte[] bArr2 = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            bArr2[i4] = this._quoteChar;
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
        byte[] bArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = this._quoteChar;
        _writeBinary(base64Variant, bArr, i, i2 + i);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr3[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z) throws IOException {
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = z ? TRUE_BYTES : FALSE_BYTES;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndArray() throws IOException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not Array but " + this._writeContext.typeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) 93;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndObject() throws IOException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not Object but " + this._writeContext.typeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) 125;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) 44;
        }
        if (this._cfgUnqNames) {
            _writeUnq(serializableString);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        int i3 = i2 + 1;
        this._outputTail = i3;
        bArr2[i2] = this._quoteChar;
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(bArr2, i3);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr3[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) 44;
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        int i3 = i2 + 1;
        this._outputTail = i3;
        bArr2[i2] = this._quoteChar;
        if (length <= this._outputMaxContiguous) {
            if (i3 + length > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, 0, length);
        } else {
            _writeStringSegments(str, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr3[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d) throws IOException {
        if (this._cfgNumbersAsStrings || (NumberOutput.notFinite(d) && JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this._features))) {
            writeString(String.valueOf(d));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(d));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f) throws IOException {
        if (this._cfgNumbersAsStrings || (NumberOutput.notFinite(f) && JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this._features))) {
            writeString(String.valueOf(f));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(f));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i) throws IOException {
        _verifyValueWrite("write a number");
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i);
        } else {
            this._outputTail = NumberOutput.outputInt(i, this._outputBuffer, this._outputTail);
        }
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
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s);
        } else {
            this._outputTail = NumberOutput.outputInt(s, this._outputBuffer, this._outputTail);
        }
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
    public void writeRaw(char c) throws IOException {
        if (this._outputTail + 3 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        if (c <= 127) {
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) c;
        } else if (c >= 2048) {
            _outputRawMultiByteChar(c, null, 0, 0);
        } else {
            int i2 = this._outputTail;
            int i3 = i2 + 1;
            this._outputTail = i3;
            bArr[i2] = (byte) ((c >> 6) | 192);
            this._outputTail = i3 + 1;
            bArr[i3] = (byte) ((c & '?') | 128);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        int appendUnquotedUTF8 = serializableString.appendUnquotedUTF8(this._outputBuffer, this._outputTail);
        if (appendUnquotedUTF8 < 0) {
            _writeBytes(serializableString.asUnquotedUTF8());
        } else {
            this._outputTail += appendUnquotedUTF8;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        char[] cArr = this._charBuffer;
        if (length > cArr.length) {
            writeRaw(str, 0, length);
            return;
        }
        str.getChars(0, length, cArr, 0);
        writeRaw(cArr, 0, length);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i, int i2) throws IOException {
        char[] cArr = this._charBuffer;
        int length = cArr.length;
        if (i2 <= length) {
            str.getChars(i, i + i2, cArr, 0);
            writeRaw(cArr, 0, i2);
            return;
        }
        int i3 = this._outputEnd;
        int min = Math.min(length, (i3 >> 2) + (i3 >> 4));
        while (i2 > 0) {
            int min2 = Math.min(min, i2);
            str.getChars(i, i + min2, cArr, 0);
            if (this._outputTail + (min * 3) > this._outputEnd) {
                _flushBuffer();
            }
            int i4 = min2;
            if (min2 > 1) {
                char c = cArr[min2 - 1];
                i4 = min2;
                if (c >= 55296) {
                    i4 = min2;
                    if (c <= 56319) {
                        i4 = min2 - 1;
                    }
                }
            }
            _writeRawSegment(cArr, 0, i4);
            i += i4;
            i2 -= i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
        r0 = r8 + 1;
        r0 = r7[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007b, code lost:
        if (r0 >= 2048) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007e, code lost:
        r0 = r6._outputBuffer;
        r0 = r6._outputTail;
        r0 = r0 + 1;
        r6._outputTail = r0;
        r0[r0] = (byte) ((r0 >> 6) | 192);
        r6._outputTail = r0 + 1;
        r0[r0] = (byte) ((r0 & '?') | 128);
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c0, code lost:
        r8 = _outputRawMultiByteChar(r0, r7, r0, r0);
     */
    @Override // com.fasterxml.jackson.core.JsonGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeRaw(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator.writeRaw(char[], int, int):void");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = this._quoteChar;
        _writeBytes(bArr, i, i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr3[i4] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeRawValue(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a raw (unencoded) value");
        int appendUnquotedUTF8 = serializableString.appendUnquotedUTF8(this._outputBuffer, this._outputTail);
        if (appendUnquotedUTF8 < 0) {
            _writeBytes(serializableString.asUnquotedUTF8());
        } else {
            this._outputTail += appendUnquotedUTF8;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray() throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = (byte) 91;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray(Object obj) throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext(obj);
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = (byte) 91;
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
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = (byte) 91;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartObject() throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = (byte) 123;
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
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = (byte) 123;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public final void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        int i2 = i + 1;
        this._outputTail = i2;
        bArr[i] = this._quoteChar;
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(bArr, i2);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = this._quoteChar;
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
        char[] cArr = this._charBuffer;
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = this._quoteChar;
        while (i2 > 0 && (read = reader.read(cArr, 0, Math.min(i2, cArr.length))) > 0) {
            if (this._outputTail + i >= this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegments(cArr, 0, read);
            i2 -= read;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr2[i4] = this._quoteChar;
        if (i2 <= 0 || i < 0) {
            return;
        }
        _reportError("Didn't read enough from reader");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        int length = str.length();
        if (length > this._outputMaxContiguous) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail + length >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = this._quoteChar;
        _writeStringSegment(str, 0, length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i3 = this._outputTail;
        int i4 = i3 + 1;
        this._outputTail = i4;
        bArr[i3] = this._quoteChar;
        if (i2 <= this._outputMaxContiguous) {
            if (i4 + i2 > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i, i2);
        } else {
            _writeStringSegments(cArr, i, i2);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        bArr2[i5] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = this._quoteChar;
        if (i2 <= this._outputMaxContiguous) {
            _writeUTF8Segment(bArr, i, i2);
        } else {
            _writeUTF8Segments(bArr, i, i2);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr3[i4] = this._quoteChar;
    }
}
