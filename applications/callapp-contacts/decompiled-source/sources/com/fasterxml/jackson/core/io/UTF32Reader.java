package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.base.GeneratorBase;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/UTF32Reader.class */
public class UTF32Reader extends Reader {
    protected final boolean _bigEndian;
    protected byte[] _buffer;
    protected int _byteCount;
    protected int _charCount;
    protected final IOContext _context;
    protected InputStream _in;
    protected int _length;
    protected final boolean _managedBuffers;
    protected int _ptr;
    protected char _surrogate = (char) 0;
    protected char[] _tmpBuf;

    public UTF32Reader(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2, boolean z) {
        boolean z2 = false;
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i;
        this._length = i2;
        this._bigEndian = z;
        this._managedBuffers = inputStream != null ? true : z2;
    }

    private void freeBuffers() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(bArr);
        }
    }

    private boolean loadMore(int i) throws IOException {
        int i2;
        this._byteCount += this._length - i;
        if (i > 0) {
            int i3 = this._ptr;
            if (i3 > 0) {
                byte[] bArr = this._buffer;
                System.arraycopy(bArr, i3, bArr, 0, i);
                this._ptr = 0;
            }
            this._length = i;
        } else {
            this._ptr = 0;
            InputStream inputStream = this._in;
            int read = inputStream == null ? -1 : inputStream.read(this._buffer);
            if (read <= 0) {
                this._length = 0;
                if (read >= 0) {
                    reportStrangeStream();
                } else if (!this._managedBuffers) {
                    return false;
                } else {
                    freeBuffers();
                    return false;
                }
            }
            this._length = read;
        }
        while (true) {
            int i4 = this._length;
            if (i4 >= 4) {
                return true;
            }
            InputStream inputStream2 = this._in;
            if (inputStream2 == null) {
                i2 = -1;
            } else {
                byte[] bArr2 = this._buffer;
                i2 = inputStream2.read(bArr2, i4, bArr2.length - i4);
            }
            if (i2 <= 0) {
                if (i2 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    reportUnexpectedEOF(this._length, 4);
                }
                reportStrangeStream();
            }
            this._length += i2;
        }
    }

    private void reportBounds(char[] cArr, int i, int i2) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + "," + i2 + "), cbuf[" + cArr.length + "]");
    }

    private void reportInvalid(int i, int i2, String str) throws IOException {
        int i3 = this._byteCount;
        int i4 = this._ptr;
        int i5 = this._charCount;
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (i5 + i2) + ", byte #" + ((i3 + i4) - 1) + ")");
    }

    private void reportStrangeStream() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    private void reportUnexpectedEOF(int i, int i2) throws IOException {
        int i3 = this._byteCount;
        int i4 = this._charCount;
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + i2 + ", at char #" + i4 + ", byte #" + (i3 + i) + ")");
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this._in;
        if (inputStream != null) {
            this._in = null;
            freeBuffers();
            inputStream.close();
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (read(this._tmpBuf, 0, 1) <= 0) {
            return -1;
        }
        return this._tmpBuf[0];
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        if (this._buffer == null) {
            return -1;
        }
        if (i2 <= 0) {
            return i2;
        }
        if (i < 0 || i + i2 > cArr.length) {
            reportBounds(cArr, i, i2);
        }
        int i6 = i2 + i;
        char c2 = this._surrogate;
        if (c2 != 0) {
            i3 = i + 1;
            cArr[i] = c2;
            this._surrogate = (char) 0;
        } else {
            int i7 = this._length - this._ptr;
            if (i7 < 4 && !loadMore(i7)) {
                if (i7 == 0) {
                    return -1;
                }
                reportUnexpectedEOF(this._length - this._ptr, 4);
            }
            i3 = i;
        }
        int i8 = this._length;
        while (true) {
            i3 = i3;
            if (i3 >= i6) {
                break;
            }
            int i9 = this._ptr;
            if (this._bigEndian) {
                byte[] bArr = this._buffer;
                i4 = (bArr[i9] << 8) | (bArr[i9 + 1] & 255);
                i5 = (bArr[i9 + 3] & 255) | ((bArr[i9 + 2] & 255) << 8);
            } else {
                byte[] bArr2 = this._buffer;
                byte b2 = bArr2[i9];
                byte b3 = bArr2[i9 + 1];
                i4 = (bArr2[i9 + 3] << 8) | (bArr2[i9 + 2] & 255);
                i5 = (b2 & 255) | ((b3 & 255) << 8);
            }
            this._ptr = i9 + 4;
            int i10 = i3;
            int i11 = i5;
            if (i4 != 0) {
                int i12 = 65535 & i4;
                int i13 = i5 | ((i12 - 1) << 16);
                if (i12 > 16) {
                    reportInvalid(i13, i3 - i, String.format(" (above 0x%08x)", 1114111));
                }
                int i14 = i3 + 1;
                cArr[i3] = (char) ((i13 >> 10) + GeneratorBase.SURR1_FIRST);
                if (i14 >= i6) {
                    this._surrogate = (char) i13;
                    i3 = i14;
                    break;
                }
                i11 = 56320 | (i13 & 1023);
                i10 = i14;
            }
            i3 = i10 + 1;
            cArr[i10] = (char) i11;
            if (this._ptr > i8 - 4) {
                break;
            }
        }
        int i15 = i3 - i;
        this._charCount += i15;
        return i15;
    }
}
