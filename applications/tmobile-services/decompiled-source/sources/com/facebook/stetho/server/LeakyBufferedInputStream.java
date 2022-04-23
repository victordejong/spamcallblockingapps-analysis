package com.facebook.stetho.server;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/LeakyBufferedInputStream.class */
public class LeakyBufferedInputStream extends BufferedInputStream {
    private boolean mLeaked;
    private boolean mMarked;

    public LeakyBufferedInputStream(InputStream inputStream, int i) {
        super(inputStream, i);
    }

    private byte[] clearBufferLocked() {
        int i = ((BufferedInputStream) this).count - ((BufferedInputStream) this).pos;
        byte[] bArr = new byte[i];
        System.arraycopy(((BufferedInputStream) this).buf, ((BufferedInputStream) this).pos, bArr, 0, i);
        ((BufferedInputStream) this).pos = 0;
        ((BufferedInputStream) this).count = 0;
        return bArr;
    }

    private void throwIfLeaked() {
        if (this.mLeaked) {
            throw new IllegalStateException();
        }
    }

    private void throwIfMarked() {
        if (this.mMarked) {
            throw new IllegalStateException();
        }
    }

    public InputStream leakBufferAndStream() {
        CompositeInputStream compositeInputStream;
        synchronized (this) {
            throwIfLeaked();
            throwIfMarked();
            this.mLeaked = true;
            compositeInputStream = new CompositeInputStream(new InputStream[]{new ByteArrayInputStream(clearBufferLocked()), ((BufferedInputStream) this).in});
        }
        return compositeInputStream;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            throwIfLeaked();
            this.mMarked = true;
            super.mark(i);
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            throwIfLeaked();
            this.mMarked = false;
            super.reset();
        }
    }
}
