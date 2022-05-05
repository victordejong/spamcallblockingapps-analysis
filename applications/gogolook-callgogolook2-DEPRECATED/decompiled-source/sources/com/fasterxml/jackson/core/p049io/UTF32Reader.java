package com.fasterxml.jackson.core.p049io;

import androidx.media.AudioAttributesCompat;
import com.fasterxml.jackson.core.base.GeneratorBase;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
/* renamed from: com.fasterxml.jackson.core.io.UTF32Reader */
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/io/UTF32Reader.class */
public class UTF32Reader extends Reader {
    public final boolean _bigEndian;
    public byte[] _buffer;
    public int _byteCount;
    public int _charCount;
    public final IOContext _context;
    public InputStream _in;
    public int _length;
    public final boolean _managedBuffers;
    public int _ptr;
    public char _surrogate = (char) 0;
    public char[] _tmpBuf;

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

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this._in;
        if (inputStream != null) {
            this._in = null;
            freeBuffers();
            inputStream.close();
        }
    }

    public final void freeBuffers() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(bArr);
        }
    }

    public final boolean loadMore(int i) throws IOException {
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
            if (read < 1) {
                this._length = 0;
                if (read >= 0) {
                    reportStrangeStream();
                    throw null;
                } else if (!this._managedBuffers) {
                    return false;
                } else {
                    freeBuffers();
                    return false;
                }
            } else {
                this._length = read;
            }
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
            if (i2 >= 1) {
                this._length += i2;
            } else if (i2 < 0) {
                if (this._managedBuffers) {
                    freeBuffers();
                }
                reportUnexpectedEOF(this._length, 4);
                throw null;
            } else {
                reportStrangeStream();
                throw null;
            }
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (read(this._tmpBuf, 0, 1) < 1) {
            return -1;
        }
        return this._tmpBuf[0];
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this._buffer == null) {
            return -1;
        }
        if (i2 < 1) {
            return i2;
        }
        if (i < 0 || i + i2 > cArr.length) {
            reportBounds(cArr, i, i2);
            throw null;
        }
        int i7 = i2 + i;
        char c = this._surrogate;
        if (c != 0) {
            i3 = i + 1;
            cArr[i] = c;
            this._surrogate = (char) 0;
        } else {
            int i8 = this._length - this._ptr;
            if (i8 < 4 && !loadMore(i8)) {
                return -1;
            }
            i3 = i;
        }
        while (true) {
            if (i3 >= i7) {
                break;
            }
            int i9 = this._ptr;
            if (this._bigEndian) {
                byte[] bArr = this._buffer;
                i5 = (bArr[i9] << 24) | ((bArr[i9 + 1] & 255) << 16) | ((bArr[i9 + 2] & 255) << 8);
                i4 = bArr[i9 + 3] & 255;
            } else {
                byte[] bArr2 = this._buffer;
                i5 = (bArr2[i9] & 255) | ((bArr2[i9 + 1] & 255) << 8) | ((bArr2[i9 + 2] & 255) << 16);
                i4 = bArr2[i9 + 3] << 24;
            }
            int i10 = i4 | i5;
            this._ptr += 4;
            int i11 = i3;
            int i12 = i10;
            if (i10 > 65535) {
                if (i10 <= 1114111) {
                    i11 = i3 + 1;
                    cArr[i3] = (char) ((i6 >> 10) + GeneratorBase.SURR1_FIRST);
                    i12 = ((i10 - 65536) & AudioAttributesCompat.FLAG_ALL) | GeneratorBase.SURR2_FIRST;
                    if (i11 >= i7) {
                        this._surrogate = (char) i12;
                        i3 = i11;
                        break;
                    }
                } else {
                    reportInvalid(i10, i3 - i, "(above " + Integer.toHexString(1114111) + ") ");
                    throw null;
                }
            }
            i3 = i11 + 1;
            cArr[i11] = (char) i12;
            if (this._ptr >= this._length) {
                break;
            }
        }
        int i13 = i3 - i;
        this._charCount += i13;
        return i13;
    }

    public final void reportBounds(char[] cArr, int i, int i2) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + "," + i2 + "), cbuf[" + cArr.length + "]");
    }

    public final void reportInvalid(int i, int i2, String str) throws IOException {
        int i3 = this._byteCount;
        int i4 = this._ptr;
        int i5 = this._charCount;
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (i5 + i2) + ", byte #" + ((i3 + i4) - 1) + ")");
    }

    public final void reportStrangeStream() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    public final void reportUnexpectedEOF(int i, int i2) throws IOException {
        int i3 = this._byteCount;
        int i4 = this._charCount;
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + i2 + ", at char #" + i4 + ", byte #" + (i3 + i) + ")");
    }
}
