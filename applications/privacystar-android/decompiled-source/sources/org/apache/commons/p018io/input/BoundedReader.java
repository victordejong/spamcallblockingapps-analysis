package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.Reader;
/* renamed from: org.apache.commons.io.input.BoundedReader */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/BoundedReader.class */
public class BoundedReader extends Reader {
    private static final int INVALID = -1;
    private int charsRead = 0;
    private int markedAt = -1;
    private final int maxCharsFromTargetReader;
    private int readAheadLimit;
    private final Reader target;

    public BoundedReader(Reader reader, int i) throws IOException {
        this.target = reader;
        this.maxCharsFromTargetReader = i;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.target.close();
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        this.readAheadLimit = i - this.charsRead;
        this.markedAt = this.charsRead;
        this.target.mark(i);
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this.charsRead >= this.maxCharsFromTargetReader) {
            return -1;
        }
        if (this.markedAt >= 0 && this.charsRead - this.markedAt >= this.readAheadLimit) {
            return -1;
        }
        this.charsRead++;
        return this.target.read();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            int read = read();
            if (read == -1) {
                return i3;
            }
            cArr[i + i3] = (char) read;
        }
        return i2;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.charsRead = this.markedAt;
        this.target.reset();
    }
}
