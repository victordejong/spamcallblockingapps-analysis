package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/MarkableInputStream.class */
final class MarkableInputStream extends InputStream {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final int DEFAULT_LIMIT_INCREMENT = 1024;
    private boolean allowExpire;
    private long defaultMark;
    private final InputStream in;
    private long limit;
    private int limitIncrement;
    private long offset;
    private long reset;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MarkableInputStream(InputStream inputStream) {
        this(inputStream, 4096);
    }

    MarkableInputStream(InputStream inputStream, int i) {
        this(inputStream, i, 1024);
    }

    private MarkableInputStream(InputStream inputStream, int i, int i2) {
        this.defaultMark = -1L;
        this.allowExpire = true;
        this.limitIncrement = -1;
        this.in = !inputStream.markSupported() ? new BufferedInputStream(inputStream, i) : inputStream;
        this.limitIncrement = i2;
    }

    private void setLimit(long j) {
        try {
            long j2 = this.reset;
            long j3 = this.offset;
            if (j2 >= j3 || j3 > this.limit) {
                this.reset = j3;
                this.in.mark((int) (j - j3));
            } else {
                this.in.reset();
                this.in.mark((int) (j - this.reset));
                skip(this.reset, this.offset);
            }
            this.limit = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: ".concat(String.valueOf(e)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void skip(long r7, long r9) throws java.io.IOException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0030
            r0 = r6
            java.io.InputStream r0 = r0.in
            r1 = r9
            r2 = r7
            long r1 = r1 - r2
            long r0 = r0.skip(r1)
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0028
            r0 = r6
            int r0 = r0.read()
            r1 = -1
            if (r0 == r1) goto L_0x0030
            r0 = 1
            r13 = r0
        L_0x0028:
            r0 = r7
            r1 = r13
            long r0 = r0 + r1
            r7 = r0
            goto L_0x0000
        L_0x0030:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.MarkableInputStream.skip(long, long):void");
    }

    public final void allowMarksToExpire(boolean z) {
        this.allowExpire = z;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.in.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.defaultMark = savePosition(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.in.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (!this.allowExpire) {
            long j = this.offset;
            long j2 = this.limit;
            if (j + 1 > j2) {
                setLimit(j2 + this.limitIncrement);
            }
        }
        int read = this.in.read();
        if (read != -1) {
            this.offset++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        if (!this.allowExpire) {
            long j = this.offset;
            if (bArr.length + j > this.limit) {
                setLimit(j + bArr.length + this.limitIncrement);
            }
        }
        int read = this.in.read(bArr);
        if (read != -1) {
            this.offset += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.allowExpire) {
            long j = this.offset;
            long j2 = i2;
            if (j + j2 > this.limit) {
                setLimit(j + j2 + this.limitIncrement);
            }
        }
        int read = this.in.read(bArr, i, i2);
        if (read != -1) {
            this.offset += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        reset(this.defaultMark);
    }

    public final void reset(long j) throws IOException {
        if (this.offset > this.limit || j < this.reset) {
            throw new IOException("Cannot reset");
        }
        this.in.reset();
        skip(this.reset, j);
        this.offset = j;
    }

    public final long savePosition(int i) {
        long j = this.offset + i;
        if (this.limit < j) {
            setLimit(j);
        }
        return this.offset;
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        if (!this.allowExpire) {
            long j2 = this.offset;
            if (j2 + j > this.limit) {
                setLimit(j2 + j + this.limitIncrement);
            }
        }
        long skip = this.in.skip(j);
        this.offset += skip;
        return skip;
    }
}
