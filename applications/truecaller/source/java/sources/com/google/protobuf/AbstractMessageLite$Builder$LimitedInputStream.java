package com.google.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream.class */
public final class AbstractMessageLite$Builder$LimitedInputStream extends FilterInputStream {
    private int limit;

    public AbstractMessageLite$Builder$LimitedInputStream(InputStream inputStream, int i) {
        super(inputStream);
        this.limit = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return Math.min(super.available(), this.limit);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.limit <= 0) {
            return -1;
        }
        int read = super.read();
        if (read >= 0) {
            this.limit--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.limit;
        if (i3 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, Math.min(i2, i3));
        if (read >= 0) {
            this.limit -= read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(Math.min(j, this.limit));
        if (skip >= 0) {
            this.limit = (int) (this.limit - skip);
        }
        return skip;
    }
}
