package com.google.api.client.p379a;

import com.google.common.base.C15391m;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@Deprecated
/* renamed from: com.google.api.client.a.f */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/f.class */
public final class C15225f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.a.f$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/f$a.class */
    public static final class C15226a extends FilterInputStream {

        /* renamed from: a */
        private long f55066a;

        /* renamed from: b */
        private long f55067b = -1;

        C15226a(InputStream inputStream, long j) {
            super(inputStream);
            C15391m.m8946a(inputStream);
            C15391m.m8942a(j >= 0, "limit must be non-negative");
            this.f55066a = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int available() throws IOException {
            return (int) Math.min(this.in.available(), this.f55066a);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final void mark(int i) {
            synchronized (this) {
                this.in.mark(i);
                this.f55067b = this.f55066a;
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() throws IOException {
            if (this.f55066a == 0) {
                return -1;
            }
            int read = this.in.read();
            if (read != -1) {
                this.f55066a--;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            long j = this.f55066a;
            if (j == 0) {
                return -1;
            }
            int read = this.in.read(bArr, i, (int) Math.min(i2, j));
            if (read != -1) {
                this.f55066a -= read;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final void reset() throws IOException {
            synchronized (this) {
                if (!this.in.markSupported()) {
                    throw new IOException("Mark not supported");
                }
                if (this.f55067b == -1) {
                    throw new IOException("Mark not set");
                }
                this.in.reset();
                this.f55066a = this.f55067b;
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final long skip(long j) throws IOException {
            long skip = this.in.skip(Math.min(j, this.f55066a));
            this.f55066a -= skip;
            return skip;
        }
    }

    private C15225f() {
    }

    /* renamed from: a */
    public static int m9247a(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int read;
        C15391m.m8946a(inputStream);
        C15391m.m8946a(bArr);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* renamed from: a */
    public static long m9248a(InputStream inputStream, OutputStream outputStream) throws IOException {
        C15391m.m8946a(inputStream);
        C15391m.m8946a(outputStream);
        byte[] bArr = new byte[4096];
        ?? r0 = 0;
        while (true) {
            char c = r0;
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                r0 = c + read;
            } else {
                return c;
            }
        }
    }

    /* renamed from: a */
    public static InputStream m9249a(InputStream inputStream, long j) {
        return new C15226a(inputStream, j);
    }
}
