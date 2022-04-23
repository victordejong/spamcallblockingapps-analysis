package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
/* renamed from: org.apache.commons.io.input.CharSequenceInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/CharSequenceInputStream.class */
public class CharSequenceInputStream extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private static final int NO_MARK = -1;
    private final ByteBuffer bbuf;
    private final CharBuffer cbuf;
    private final CharsetEncoder encoder;
    private int mark_bbuf;
    private int mark_cbuf;

    public CharSequenceInputStream(CharSequence charSequence, String str) {
        this(charSequence, str, 2048);
    }

    public CharSequenceInputStream(CharSequence charSequence, String str, int i) {
        this(charSequence, Charset.forName(str), i);
    }

    public CharSequenceInputStream(CharSequence charSequence, Charset charset) {
        this(charSequence, charset, 2048);
    }

    public CharSequenceInputStream(CharSequence charSequence, Charset charset, int i) {
        this.encoder = charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        float maxBytesPerChar = this.encoder.maxBytesPerChar();
        if (i < maxBytesPerChar) {
            throw new IllegalArgumentException("Buffer size " + i + " is less than maxBytesPerChar " + maxBytesPerChar);
        }
        this.bbuf = ByteBuffer.allocate(i);
        this.bbuf.flip();
        this.cbuf = CharBuffer.wrap(charSequence);
        this.mark_cbuf = -1;
        this.mark_bbuf = -1;
    }

    private void fillBuffer() throws CharacterCodingException {
        this.bbuf.compact();
        CoderResult encode = this.encoder.encode(this.cbuf, this.bbuf, true);
        if (encode.isError()) {
            encode.throwException();
        }
        this.bbuf.flip();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.bbuf.remaining() + this.cbuf.remaining();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.mark_cbuf = this.cbuf.position();
            this.mark_bbuf = this.bbuf.position();
            this.cbuf.mark();
            this.bbuf.mark();
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (!this.bbuf.hasRemaining()) {
            fillBuffer();
            if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining()) {
                return -1;
            }
        }
        return this.bbuf.get() & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            throw new NullPointerException("Byte array is null");
        } else if (i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException("Array Size=" + bArr.length + ", offset=" + i + ", length=" + i2);
        } else if (i2 == 0) {
            return 0;
        } else {
            int i3 = 0;
            int i4 = i;
            int i5 = i2;
            if (!this.bbuf.hasRemaining()) {
                i3 = 0;
                i4 = i;
                i5 = i2;
                if (!this.cbuf.hasRemaining()) {
                    return -1;
                }
            }
            while (i5 > 0) {
                if (!this.bbuf.hasRemaining()) {
                    fillBuffer();
                    if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining()) {
                        break;
                    }
                } else {
                    int min = Math.min(this.bbuf.remaining(), i5);
                    this.bbuf.get(bArr, i4, min);
                    i4 += min;
                    i5 -= min;
                    i3 += min;
                }
            }
            int i6 = i3;
            if (i3 == 0) {
                i6 = i3;
                if (!this.cbuf.hasRemaining()) {
                    i6 = -1;
                }
            }
            return i6;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            if (this.mark_cbuf != -1) {
                if (this.cbuf.position() != 0) {
                    this.encoder.reset();
                    this.cbuf.rewind();
                    this.bbuf.rewind();
                    this.bbuf.limit(0);
                    while (this.cbuf.position() < this.mark_cbuf) {
                        this.bbuf.rewind();
                        this.bbuf.limit(0);
                        fillBuffer();
                    }
                }
                if (this.cbuf.position() != this.mark_cbuf) {
                    throw new IllegalStateException("Unexpected CharBuffer postion: actual=" + this.cbuf.position() + " expected=" + this.mark_cbuf);
                }
                this.bbuf.position(this.mark_bbuf);
                this.mark_cbuf = -1;
                this.mark_bbuf = -1;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long skip(long r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            r0 = r6
            r10 = r0
            r0 = r8
            r6 = r0
        L_0x0007:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0027
            r0 = r5
            int r0 = r0.available()
            if (r0 <= 0) goto L_0x0027
            r0 = r5
            int r0 = r0.read()
            r0 = r10
            r1 = 1
            long r0 = r0 - r1
            r10 = r0
            r0 = r6
            r1 = 1
            long r0 = r0 + r1
            r6 = r0
            goto L_0x0007
        L_0x0027:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.input.CharSequenceInputStream.skip(long):long");
    }
}
