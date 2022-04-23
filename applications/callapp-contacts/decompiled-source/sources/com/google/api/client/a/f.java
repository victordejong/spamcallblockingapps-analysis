package com.google.api.client.a;

import com.google.common.base.m;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/f.class */
public final class f {

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/f$a.class */
    static final class a extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private long f31616a;

        /* renamed from: b  reason: collision with root package name */
        private long f31617b = -1;

        a(InputStream inputStream, long j) {
            super(inputStream);
            m.a(inputStream);
            m.a(j >= 0, "limit must be non-negative");
            this.f31616a = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int available() throws IOException {
            return (int) Math.min(this.in.available(), this.f31616a);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final void mark(int i) {
            synchronized (this) {
                this.in.mark(i);
                this.f31617b = this.f31616a;
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() throws IOException {
            if (this.f31616a == 0) {
                return -1;
            }
            int read = this.in.read();
            if (read != -1) {
                this.f31616a--;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            long j = this.f31616a;
            if (j == 0) {
                return -1;
            }
            int read = this.in.read(bArr, i, (int) Math.min(i2, j));
            if (read != -1) {
                this.f31616a -= read;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final void reset() throws IOException {
            synchronized (this) {
                if (!this.in.markSupported()) {
                    throw new IOException("Mark not supported");
                } else if (this.f31617b != -1) {
                    this.in.reset();
                    this.f31616a = this.f31617b;
                } else {
                    throw new IOException("Mark not set");
                }
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final long skip(long j) throws IOException {
            long skip = this.in.skip(Math.min(j, this.f31616a));
            this.f31616a -= skip;
            return skip;
        }
    }

    private f() {
    }

    public static int a(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int read;
        m.a(inputStream);
        m.a(bArr);
        if (i2 >= 0) {
            int i3 = 0;
            while (i3 < i2 && (read = inputStream.read(bArr, i + i3, i2 - i3)) != -1) {
                i3 += read;
            }
            return i3;
        }
        throw new IndexOutOfBoundsException("len is negative");
    }

    public static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        m.a(inputStream);
        m.a(outputStream);
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    public static InputStream a(InputStream inputStream, long j) {
        return new a(inputStream, j);
    }
}
