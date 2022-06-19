package com.google.api.client.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.google.api.client.util.g */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/g.class */
public final class C8707g {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.api.client.util.g$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/g$a.class */
    public static final class C8708a extends FilterInputStream {

        /* renamed from: d */
        private long f38506d;

        /* renamed from: e */
        private long f38507e = -1;

        C8708a(InputStream inputStream, long j) {
            super(inputStream);
            C8731w.m2836d(inputStream);
            C8731w.m2838b(j >= 0, "limit must be non-negative");
            this.f38506d = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.f38506d);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public void mark(int i) {
            synchronized (this) {
                ((FilterInputStream) this).in.mark(i);
                this.f38507e = this.f38506d;
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() {
            if (this.f38506d == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read();
            if (read != -1) {
                this.f38506d--;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            long j = this.f38506d;
            if (j == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
            if (read != -1) {
                this.f38506d -= read;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public void reset() {
            synchronized (this) {
                if (!((FilterInputStream) this).in.markSupported()) {
                    throw new IOException("Mark not supported");
                }
                if (this.f38507e == -1) {
                    throw new IOException("Mark not set");
                }
                ((FilterInputStream) this).in.reset();
                this.f38506d = this.f38507e;
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) {
            long skip = ((FilterInputStream) this).in.skip(Math.min(j, this.f38506d));
            this.f38506d -= skip;
            return skip;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* renamed from: a */
    public static long m2893a(InputStream inputStream, OutputStream outputStream) {
        C8731w.m2836d(inputStream);
        C8731w.m2836d(outputStream);
        byte[] bArr = new byte[4096];
        ?? r0 = 0;
        while (true) {
            char c = r0;
            int read = inputStream.read(bArr);
            if (read == -1) {
                return c;
            }
            outputStream.write(bArr, 0, read);
            r0 = c + read;
        }
    }

    /* renamed from: b */
    public static InputStream m2892b(InputStream inputStream, long j) {
        return new C8708a(inputStream, j);
    }

    /* renamed from: c */
    public static int m2891c(InputStream inputStream, byte[] bArr, int i, int i2) {
        int i3;
        int read;
        C8731w.m2836d(inputStream);
        C8731w.m2836d(bArr);
        if (i2 >= 0) {
            int i4 = 0;
            while (true) {
                i3 = i4;
                if (i3 >= i2 || (read = inputStream.read(bArr, i + i3, i2 - i3)) == -1) {
                    break;
                }
                i4 = i3 + read;
            }
            return i3;
        }
        throw new IndexOutOfBoundsException("len is negative");
    }
}
