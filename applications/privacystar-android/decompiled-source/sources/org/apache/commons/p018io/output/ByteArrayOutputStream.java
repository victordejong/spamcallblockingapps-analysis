package org.apache.commons.p018io.output;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.p018io.input.ClosedInputStream;
/* renamed from: org.apache.commons.io.output.ByteArrayOutputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/ByteArrayOutputStream.class */
public class ByteArrayOutputStream extends OutputStream {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private final List<byte[]> buffers;
    private int count;
    private byte[] currentBuffer;
    private int currentBufferIndex;
    private int filledBufferSum;
    private boolean reuseBuffers;

    public ByteArrayOutputStream() {
        this(1024);
    }

    public ByteArrayOutputStream(int i) {
        this.buffers = new ArrayList();
        this.reuseBuffers = true;
        if (i < 0) {
            throw new IllegalArgumentException("Negative initial size: " + i);
        }
        synchronized (this) {
            needNewBuffer(i);
        }
    }

    private void needNewBuffer(int i) {
        if (this.currentBufferIndex < this.buffers.size() - 1) {
            this.filledBufferSum += this.currentBuffer.length;
            this.currentBufferIndex++;
            this.currentBuffer = this.buffers.get(this.currentBufferIndex);
            return;
        }
        if (this.currentBuffer == null) {
            this.filledBufferSum = 0;
        } else {
            i = Math.max(this.currentBuffer.length << 1, i - this.filledBufferSum);
            this.filledBufferSum += this.currentBuffer.length;
        }
        this.currentBufferIndex++;
        this.currentBuffer = new byte[i];
        this.buffers.add(this.currentBuffer);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) throws IOException {
        return toBufferedInputStream(inputStream, 1024);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i);
        byteArrayOutputStream.write(inputStream);
        return byteArrayOutputStream.toInputStream();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public void reset() {
        synchronized (this) {
            this.count = 0;
            this.filledBufferSum = 0;
            this.currentBufferIndex = 0;
            if (this.reuseBuffers) {
                this.currentBuffer = this.buffers.get(this.currentBufferIndex);
            } else {
                this.currentBuffer = null;
                int length = this.buffers.get(0).length;
                this.buffers.clear();
                needNewBuffer(length);
                this.reuseBuffers = true;
            }
        }
    }

    public int size() {
        int i;
        synchronized (this) {
            i = this.count;
        }
        return i;
    }

    public byte[] toByteArray() {
        synchronized (this) {
            int i = this.count;
            if (i == 0) {
                return EMPTY_BYTE_ARRAY;
            }
            byte[] bArr = new byte[i];
            int i2 = 0;
            for (byte[] bArr2 : this.buffers) {
                int min = Math.min(bArr2.length, i);
                System.arraycopy(bArr2, 0, bArr, i2, min);
                i2 += min;
                int i3 = i - min;
                i = i3;
                if (i3 == 0) {
                    break;
                }
            }
            return bArr;
        }
    }

    public InputStream toInputStream() {
        int i;
        synchronized (this) {
            int i2 = this.count;
            if (i2 == 0) {
                return new ClosedInputStream();
            }
            ArrayList arrayList = new ArrayList(this.buffers.size());
            Iterator<byte[]> it = this.buffers.iterator();
            do {
                if (!it.hasNext()) {
                    break;
                }
                byte[] next = it.next();
                int min = Math.min(next.length, i2);
                arrayList.add(new ByteArrayInputStream(next, 0, min));
                i = i2 - min;
                i2 = i;
            } while (i != 0);
            this.reuseBuffers = false;
            return new SequenceInputStream(Collections.enumeration(arrayList));
        }
    }

    @Deprecated
    public String toString() {
        return new String(toByteArray(), Charset.defaultCharset());
    }

    public String toString(String str) throws UnsupportedEncodingException {
        return new String(toByteArray(), str);
    }

    public String toString(Charset charset) {
        return new String(toByteArray(), charset);
    }

    public int write(InputStream inputStream) throws IOException {
        int i;
        synchronized (this) {
            int i2 = this.count - this.filledBufferSum;
            int read = inputStream.read(this.currentBuffer, i2, this.currentBuffer.length - i2);
            i = 0;
            while (read != -1) {
                i += read;
                int i3 = i2 + read;
                this.count += read;
                i2 = i3;
                if (i3 == this.currentBuffer.length) {
                    needNewBuffer(this.currentBuffer.length);
                    i2 = 0;
                }
                read = inputStream.read(this.currentBuffer, i2, this.currentBuffer.length - i2);
            }
        }
        return i;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        synchronized (this) {
            int i2 = this.count - this.filledBufferSum;
            int i3 = i2;
            if (i2 == this.currentBuffer.length) {
                needNewBuffer(this.count + 1);
                i3 = 0;
            }
            this.currentBuffer[i3] = (byte) i;
            this.count++;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        } else if (i2 != 0) {
            synchronized (this) {
                int i4 = this.count + i2;
                int i5 = this.count - this.filledBufferSum;
                while (i2 > 0) {
                    int min = Math.min(i2, this.currentBuffer.length - i5);
                    System.arraycopy(bArr, i3 - i2, this.currentBuffer, i5, min);
                    int i6 = i2 - min;
                    i2 = i6;
                    if (i6 > 0) {
                        needNewBuffer(i4);
                        i5 = 0;
                        i2 = i6;
                    }
                }
                this.count = i4;
            }
        }
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        int i;
        synchronized (this) {
            int i2 = this.count;
            Iterator<byte[]> it = this.buffers.iterator();
            do {
                if (!it.hasNext()) {
                    break;
                }
                byte[] next = it.next();
                int min = Math.min(next.length, i2);
                outputStream.write(next, 0, min);
                i = i2 - min;
                i2 = i;
            } while (i != 0);
        }
    }
}
