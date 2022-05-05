package com.fasterxml.jackson.core.p049io;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.fasterxml.jackson.core.io.MergedStream */
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/io/MergedStream.class */
public final class MergedStream extends InputStream {

    /* renamed from: _b */
    public byte[] f3804_b;
    public final IOContext _ctxt;
    public final int _end;
    public final InputStream _in;
    public int _ptr;

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2) {
        this._ctxt = iOContext;
        this._in = inputStream;
        this.f3804_b = bArr;
        this._ptr = i;
        this._end = i2;
    }

    public final void _free() {
        byte[] bArr = this.f3804_b;
        if (bArr != null) {
            this.f3804_b = null;
            IOContext iOContext = this._ctxt;
            if (iOContext != null) {
                iOContext.releaseReadIOBuffer(bArr);
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f3804_b != null ? this._end - this._ptr : this._in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        _free();
        this._in.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        if (this.f3804_b == null) {
            this._in.mark(i);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f3804_b == null && this._in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this.f3804_b;
        if (bArr == null) {
            return this._in.read();
        }
        int i = this._ptr;
        this._ptr = i + 1;
        byte b = bArr[i];
        if (this._ptr >= this._end) {
            _free();
        }
        return b & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f3804_b == null) {
            return this._in.read(bArr, i, i2);
        }
        int i3 = this._end - this._ptr;
        int i4 = i2;
        if (i2 > i3) {
            i4 = i3;
        }
        System.arraycopy(this.f3804_b, this._ptr, bArr, i, i4);
        this._ptr += i4;
        if (this._ptr >= this._end) {
            _free();
        }
        return i4;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (this.f3804_b == null) {
            this._in.reset();
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
    public long skip(long r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            byte[] r0 = r0.f3804_b
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
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p049io.MergedStream.skip(long):long");
    }
}
