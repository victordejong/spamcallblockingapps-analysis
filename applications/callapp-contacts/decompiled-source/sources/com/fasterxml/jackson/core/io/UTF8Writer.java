package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.base.GeneratorBase;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/UTF8Writer.class */
public final class UTF8Writer extends Writer {
    private final IOContext _context;
    private OutputStream _out;
    private byte[] _outBuffer;
    private final int _outBufferEnd;
    private int _outPtr = 0;
    private int _surrogate;

    public UTF8Writer(IOContext iOContext, OutputStream outputStream) {
        this._context = iOContext;
        this._out = outputStream;
        byte[] allocWriteEncodingBuffer = iOContext.allocWriteEncodingBuffer();
        this._outBuffer = allocWriteEncodingBuffer;
        this._outBufferEnd = allocWriteEncodingBuffer.length - 4;
    }

    protected static void illegalSurrogate(int i) throws IOException {
        throw new IOException(illegalSurrogateDesc(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String illegalSurrogateDesc(int i) {
        if (i > 1114111) {
            return "Illegal character point (0x" + Integer.toHexString(i) + ") to output; max is 0x10FFFF as per RFC 4627";
        } else if (i < 55296) {
            return "Illegal character point (0x" + Integer.toHexString(i) + ") to output";
        } else if (i <= 56319) {
            return "Unmatched first part of surrogate pair (0x" + Integer.toHexString(i) + ")";
        } else {
            return "Unmatched second part of surrogate pair (0x" + Integer.toHexString(i) + ")";
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(char c2) throws IOException {
        write(c2);
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        OutputStream outputStream = this._out;
        if (outputStream != null) {
            int i = this._outPtr;
            if (i > 0) {
                outputStream.write(this._outBuffer, 0, i);
                this._outPtr = 0;
            }
            OutputStream outputStream2 = this._out;
            this._out = null;
            byte[] bArr = this._outBuffer;
            if (bArr != null) {
                this._outBuffer = null;
                this._context.releaseWriteEncodingBuffer(bArr);
            }
            outputStream2.close();
            int i2 = this._surrogate;
            this._surrogate = 0;
            if (i2 > 0) {
                illegalSurrogate(i2);
            }
        }
    }

    protected final int convertSurrogate(int i) throws IOException {
        int i2 = this._surrogate;
        this._surrogate = 0;
        if (i >= 56320 && i <= 57343) {
            return ((i2 - GeneratorBase.SURR1_FIRST) << 10) + 65536 + (i - GeneratorBase.SURR2_FIRST);
        }
        throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() throws IOException {
        OutputStream outputStream = this._out;
        if (outputStream != null) {
            int i = this._outPtr;
            if (i > 0) {
                outputStream.write(this._outBuffer, 0, i);
                this._outPtr = 0;
            }
            this._out.flush();
        }
    }

    @Override // java.io.Writer
    public final void write(int i) throws IOException {
        int i2;
        int i3;
        if (this._surrogate > 0) {
            i2 = convertSurrogate(i);
        } else {
            i2 = i;
            if (i >= 55296) {
                i2 = i;
                if (i <= 57343) {
                    if (i > 56319) {
                        illegalSurrogate(i);
                    }
                    this._surrogate = i;
                    return;
                }
            }
        }
        int i4 = this._outPtr;
        if (i4 >= this._outBufferEnd) {
            this._out.write(this._outBuffer, 0, i4);
            this._outPtr = 0;
        }
        if (i2 < 128) {
            byte[] bArr = this._outBuffer;
            int i5 = this._outPtr;
            this._outPtr = i5 + 1;
            bArr[i5] = (byte) i2;
            return;
        }
        int i6 = this._outPtr;
        if (i2 < 2048) {
            byte[] bArr2 = this._outBuffer;
            int i7 = i6 + 1;
            bArr2[i6] = (byte) ((i2 >> 6) | 192);
            i3 = i7 + 1;
            bArr2[i7] = (byte) ((i2 & 63) | 128);
        } else if (i2 <= 65535) {
            byte[] bArr3 = this._outBuffer;
            int i8 = i6 + 1;
            bArr3[i6] = (byte) ((i2 >> 12) | 224);
            int i9 = i8 + 1;
            bArr3[i8] = (byte) (((i2 >> 6) & 63) | 128);
            bArr3[i9] = (byte) ((i2 & 63) | 128);
            i3 = i9 + 1;
        } else {
            if (i2 > 1114111) {
                illegalSurrogate(i2);
            }
            byte[] bArr4 = this._outBuffer;
            int i10 = i6 + 1;
            bArr4[i6] = (byte) ((i2 >> 18) | 240);
            int i11 = i10 + 1;
            bArr4[i10] = (byte) (((i2 >> 12) & 63) | 128);
            int i12 = i11 + 1;
            bArr4[i11] = (byte) (((i2 >> 6) & 63) | 128);
            i3 = i12 + 1;
            bArr4[i12] = (byte) ((i2 & 63) | 128);
        }
        this._outPtr = i3;
    }

    @Override // java.io.Writer
    public final void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    @Override // java.io.Writer
    public final void write(String str, int i, int i2) throws IOException {
        int i3;
        if (i2 >= 2) {
            int i4 = i;
            int i5 = i2;
            if (this._surrogate > 0) {
                i5 = i2 - 1;
                write(convertSurrogate(str.charAt(i)));
                i4 = i + 1;
            }
            int i6 = this._outPtr;
            byte[] bArr = this._outBuffer;
            int i7 = this._outBufferEnd;
            int i8 = i5 + i4;
            int i9 = i4;
            while (true) {
                i3 = i6;
                if (i9 >= i8) {
                    break;
                }
                int i10 = i6;
                if (i6 >= i7) {
                    this._out.write(bArr, 0, i6);
                    i10 = 0;
                }
                int i11 = i9 + 1;
                char charAt = str.charAt(i9);
                int i12 = i10;
                i9 = i11;
                char c2 = charAt;
                if (charAt < 128) {
                    i12 = i10 + 1;
                    bArr[i10] = (byte) charAt;
                    int i13 = i8 - i11;
                    int i14 = i7 - i12;
                    int i15 = i13;
                    if (i13 > i14) {
                        i15 = i14;
                    }
                    i9 = i11;
                    while (true) {
                        i6 = i12;
                        i9 = i9;
                        if (i9 >= i15 + i11) {
                            break;
                        }
                        i9++;
                        char charAt2 = str.charAt(i9);
                        if (charAt2 >= 128) {
                            c2 = charAt2;
                            break;
                        } else {
                            bArr[i12] = (byte) charAt2;
                            i12++;
                        }
                    }
                }
                if (c2 >= 2048) {
                    if (c2 >= 55296 && c2 <= 57343) {
                        if (c2 > 56319) {
                            this._outPtr = i12;
                            illegalSurrogate(c2);
                        }
                        this._surrogate = c2;
                        i3 = i12;
                        if (i9 >= i8) {
                            break;
                        }
                        i9++;
                        int convertSurrogate = convertSurrogate(str.charAt(i9));
                        if (convertSurrogate > 1114111) {
                            this._outPtr = i12;
                            illegalSurrogate(convertSurrogate);
                        }
                        int i16 = i12 + 1;
                        bArr[i12] = (byte) ((convertSurrogate >> 18) | 240);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) (((convertSurrogate >> 12) & 63) | 128);
                        int i18 = i17 + 1;
                        bArr[i17] = (byte) (((convertSurrogate >> 6) & 63) | 128);
                        i6 = i18 + 1;
                        bArr[i18] = (byte) ((convertSurrogate & 63) | 128);
                    } else {
                        int i19 = i12 + 1;
                        bArr[i12] = (byte) ((c2 >> '\f') | 224);
                        int i20 = i19 + 1;
                        bArr[i19] = (byte) (((c2 >> 6) & 63) | 128);
                        bArr[i20] = (byte) ((c2 & '?') | 128);
                        i6 = i20 + 1;
                    }
                } else {
                    int i21 = i12 + 1;
                    bArr[i12] = (byte) ((c2 >> 6) | 192);
                    i6 = i21 + 1;
                    bArr[i21] = (byte) ((c2 & '?') | 128);
                }
            }
            this._outPtr = i3;
        } else if (i2 == 1) {
            write(str.charAt(i));
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) throws IOException {
        int i3;
        if (i2 >= 2) {
            int i4 = i;
            int i5 = i2;
            if (this._surrogate > 0) {
                i5 = i2 - 1;
                write(convertSurrogate(cArr[i]));
                i4 = i + 1;
            }
            int i6 = this._outPtr;
            byte[] bArr = this._outBuffer;
            int i7 = this._outBufferEnd;
            int i8 = i5 + i4;
            int i9 = i4;
            while (true) {
                i3 = i6;
                if (i9 >= i8) {
                    break;
                }
                int i10 = i6;
                if (i6 >= i7) {
                    this._out.write(bArr, 0, i6);
                    i10 = 0;
                }
                int i11 = i9 + 1;
                char c2 = cArr[i9];
                int i12 = i10;
                i9 = i11;
                char c3 = c2;
                if (c2 < 128) {
                    i12 = i10 + 1;
                    bArr[i10] = (byte) c2;
                    int i13 = i8 - i11;
                    int i14 = i7 - i12;
                    int i15 = i13;
                    if (i13 > i14) {
                        i15 = i14;
                    }
                    i9 = i11;
                    while (true) {
                        i6 = i12;
                        i9 = i9;
                        if (i9 >= i15 + i11) {
                            break;
                        }
                        i9++;
                        char c4 = cArr[i9];
                        if (c4 >= 128) {
                            c3 = c4;
                            break;
                        } else {
                            bArr[i12] = (byte) c4;
                            i12++;
                        }
                    }
                }
                if (c3 >= 2048) {
                    if (c3 >= 55296 && c3 <= 57343) {
                        if (c3 > 56319) {
                            this._outPtr = i12;
                            illegalSurrogate(c3);
                        }
                        this._surrogate = c3;
                        i3 = i12;
                        if (i9 >= i8) {
                            break;
                        }
                        i9++;
                        int convertSurrogate = convertSurrogate(cArr[i9]);
                        if (convertSurrogate > 1114111) {
                            this._outPtr = i12;
                            illegalSurrogate(convertSurrogate);
                        }
                        int i16 = i12 + 1;
                        bArr[i12] = (byte) ((convertSurrogate >> 18) | 240);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) (((convertSurrogate >> 12) & 63) | 128);
                        int i18 = i17 + 1;
                        bArr[i17] = (byte) (((convertSurrogate >> 6) & 63) | 128);
                        i6 = i18 + 1;
                        bArr[i18] = (byte) ((convertSurrogate & 63) | 128);
                    } else {
                        int i19 = i12 + 1;
                        bArr[i12] = (byte) ((c3 >> '\f') | 224);
                        int i20 = i19 + 1;
                        bArr[i19] = (byte) (((c3 >> 6) & 63) | 128);
                        bArr[i20] = (byte) ((c3 & '?') | 128);
                        i6 = i20 + 1;
                    }
                } else {
                    int i21 = i12 + 1;
                    bArr[i12] = (byte) ((c3 >> 6) | 192);
                    i6 = i21 + 1;
                    bArr[i21] = (byte) ((c3 & '?') | 128);
                }
            }
            this._outPtr = i3;
        } else if (i2 == 1) {
            write(cArr[i]);
        }
    }
}
