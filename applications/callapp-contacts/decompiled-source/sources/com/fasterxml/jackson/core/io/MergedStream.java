package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/MergedStream.class */
public final class MergedStream extends InputStream {
    private byte[] _b;
    private final IOContext _ctxt;
    private final int _end;
    private final InputStream _in;
    private int _ptr;

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2) {
        this._ctxt = iOContext;
        this._in = inputStream;
        this._b = bArr;
        this._ptr = i;
        this._end = i2;
    }

    private void _free() {
        byte[] bArr = this._b;
        if (bArr != null) {
            this._b = null;
            IOContext iOContext = this._ctxt;
            if (iOContext != null) {
                iOContext.releaseReadIOBuffer(bArr);
            }
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this._b != null ? this._end - this._ptr : this._in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        _free();
        this._in.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            if (this._b == null) {
                this._in.mark(i);
            }
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this._b == null && this._in.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = this._b;
        if (bArr == null) {
            return this._in.read();
        }
        int i = this._ptr;
        int i2 = i + 1;
        this._ptr = i2;
        byte b2 = bArr[i];
        if (i2 >= this._end) {
            _free();
        }
        return b2 & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = this._b;
        if (bArr2 == null) {
            return this._in.read(bArr, i, i2);
        }
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

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            if (this._b == null) {
                this._in.reset();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long skip(long r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            byte[] r0 = r0._b
            if (r0 == 0) goto L_0x0045
            r0 = r6
            int r0 = r0._end
            r9 = r0
            r0 = r6
            int r0 = r0._ptr
            r10 = r0
            r0 = r9
            r1 = r10
            int r0 = r0 - r1
            long r0 = (long) r0
            r11 = r0
            r0 = r11
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x002b
            r0 = r6
            r1 = r10
            r2 = r7
            int r2 = (int) r2
            int r1 = r1 + r2
            r0._ptr = r1
            r0 = r7
            return r0
        L_0x002b:
            r0 = r6
            r0._free()
            r0 = r11
            r1 = 0
            long r0 = r0 + r1
            r13 = r0
            r0 = r7
            r1 = r11
            long r0 = r0 - r1
            r11 = r0
            r0 = r13
            r7 = r0
            r0 = r11
            r13 = r0
            goto L_0x004e
        L_0x0045:
            r0 = 0
            r11 = r0
            r0 = r7
            r13 = r0
            r0 = r11
            r7 = r0
        L_0x004e:
            r0 = r7
            r11 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0065
            r0 = r7
            r1 = r6
            java.io.InputStream r1 = r1._in
            r2 = r13
            long r1 = r1.skip(r2)
            long r0 = r0 + r1
            r11 = r0
        L_0x0065:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.MergedStream.skip(long):long");
    }
}
