package com.fasterxml.jackson.core.p309io;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.fasterxml.jackson.core.io.MergedStream */
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/MergedStream.class */
public final class MergedStream extends InputStream {

    /* renamed from: _b */
    private byte[] f34288_b;
    private final IOContext _ctxt;
    private final int _end;
    private final InputStream _in;
    private int _ptr;

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2) {
        this._ctxt = iOContext;
        this._in = inputStream;
        this.f34288_b = bArr;
        this._ptr = i;
        this._end = i2;
    }

    private void _free() {
        byte[] bArr = this.f34288_b;
        if (bArr != null) {
            this.f34288_b = null;
            IOContext iOContext = this._ctxt;
            if (iOContext == null) {
                return;
            }
            iOContext.releaseReadIOBuffer(bArr);
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f34288_b != null ? this._end - this._ptr : this._in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        _free();
        this._in.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            if (this.f34288_b == null) {
                this._in.mark(i);
            }
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f34288_b == null && this._in.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = this.f34288_b;
        if (bArr != null) {
            int i = this._ptr;
            int i2 = i + 1;
            this._ptr = i2;
            byte b = bArr[i];
            if (i2 >= this._end) {
                _free();
            }
            return b & 255;
        }
        return this._in.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = this.f34288_b;
        if (bArr2 != null) {
            int i3 = this._end;
            int i4 = this._ptr;
            int i5 = i3 - i4;
            int i6 = i2;
            if (i2 > i5) {
                i6 = i5;
            }
            System.arraycopy(bArr2, i4, bArr, i, i6);
            int i7 = this._ptr + i6;
            this._ptr = i7;
            if (i7 >= this._end) {
                _free();
            }
            return i6;
        }
        return this._in.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            if (this.f34288_b == null) {
                this._in.reset();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        char c;
        char c2;
        if (this.f34288_b != null) {
            int i = this._end;
            int i2 = this._ptr;
            long j2 = i - i2;
            if (j2 > j) {
                this._ptr = i2 + ((int) j);
                return j;
            }
            _free();
            ?? r0 = j2 + 0;
            ?? r02 = j - j2;
            c2 = r0;
            c = r02;
        } else {
            c = j;
            c2 = 0;
        }
        char c3 = c2;
        if (c > 0) {
            c3 = c2 + this._in.skip(c);
        }
        return c3;
    }
}
