package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/util/ExceptionCatchingInputStream.class */
public class ExceptionCatchingInputStream extends InputStream {
    private static final Queue<ExceptionCatchingInputStream> QUEUE = Util.createQueue(0);
    private IOException exception;
    private InputStream wrapped;

    ExceptionCatchingInputStream() {
    }

    static void clearQueue() {
        while (!QUEUE.isEmpty()) {
            QUEUE.remove();
        }
    }

    @NonNull
    public static ExceptionCatchingInputStream obtain(@NonNull InputStream inputStream) {
        ExceptionCatchingInputStream poll;
        synchronized (QUEUE) {
            poll = QUEUE.poll();
        }
        ExceptionCatchingInputStream exceptionCatchingInputStream = poll;
        if (poll == null) {
            exceptionCatchingInputStream = new ExceptionCatchingInputStream();
        }
        exceptionCatchingInputStream.setInputStream(inputStream);
        return exceptionCatchingInputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.wrapped.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.wrapped.close();
    }

    @Nullable
    public IOException getException() {
        return this.exception;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.wrapped.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.wrapped.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        int i;
        try {
            i = this.wrapped.read();
        } catch (IOException e) {
            this.exception = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        int i;
        try {
            i = this.wrapped.read(bArr);
        } catch (IOException e) {
            this.exception = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        try {
            i3 = this.wrapped.read(bArr, i, i2);
        } catch (IOException e) {
            this.exception = e;
            i3 = -1;
        }
        return i3;
    }

    public void release() {
        this.exception = null;
        this.wrapped = null;
        synchronized (QUEUE) {
            QUEUE.offer(this);
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            this.wrapped.reset();
        }
    }

    void setInputStream(@NonNull InputStream inputStream) {
        this.wrapped = inputStream;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        long j2;
        try {
            j2 = this.wrapped.skip(j);
        } catch (IOException e) {
            this.exception = e;
            j2 = 0;
        }
        return j2;
    }
}
