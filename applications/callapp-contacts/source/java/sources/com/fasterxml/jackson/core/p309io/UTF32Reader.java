package com.fasterxml.jackson.core.p309io;

import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
/* renamed from: com.fasterxml.jackson.core.io.UTF32Reader */
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
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i;
        this._length = i2;
        this._bigEndian = z;
        this._managedBuffers = inputStream != null;
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
                if (read < 0) {
                    if (!this._managedBuffers) {
                        return false;
                    }
                    freeBuffers();
                    return false;
                }
                reportStrangeStream();
            }
            this._length = read;
        }
        while (true) {
            int i4 = this._length;
            if (i4 < 4) {
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
            } else {
                return true;
            }
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

    /* JADX WARN: Code restructure failed: missing block: B:44:0x01a7, code lost:
        r14 = r12;
     */
    @Override // java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(char[] r10, int r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p309io.UTF32Reader.read(char[], int, int):int");
    }
}
