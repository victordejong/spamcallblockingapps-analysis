package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/util/MarkEnforcingInputStream.class */
public class MarkEnforcingInputStream extends FilterInputStream {
    private static final int END_OF_STREAM = -1;
    private static final int UNSET = Integer.MIN_VALUE;
    private int availableBytes = Integer.MIN_VALUE;

    public MarkEnforcingInputStream(@NonNull InputStream inputStream) {
        super(inputStream);
    }

    private long getBytesToRead(long j) {
        if (this.availableBytes == 0) {
            return -1L;
        }
        return (this.availableBytes == Integer.MIN_VALUE || j <= ((long) this.availableBytes)) ? j : this.availableBytes;
    }

    private void updateAvailableBytesAfterRead(long j) {
        if (this.availableBytes != Integer.MIN_VALUE && j != -1) {
            this.availableBytes = (int) (this.availableBytes - j);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.availableBytes == Integer.MIN_VALUE ? super.available() : Math.min(this.availableBytes, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            super.mark(i);
            this.availableBytes = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (getBytesToRead(1L) == -1) {
            return -1;
        }
        int read = super.read();
        updateAvailableBytesAfterRead(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int bytesToRead = (int) getBytesToRead(i2);
        if (bytesToRead == -1) {
            return -1;
        }
        int read = super.read(bArr, i, bytesToRead);
        updateAvailableBytesAfterRead(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            super.reset();
            this.availableBytes = Integer.MIN_VALUE;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long bytesToRead = getBytesToRead(j);
        if (bytesToRead == -1) {
            return 0L;
        }
        long skip = super.skip(bytesToRead);
        updateAvailableBytesAfterRead(skip);
        return skip;
    }
}
