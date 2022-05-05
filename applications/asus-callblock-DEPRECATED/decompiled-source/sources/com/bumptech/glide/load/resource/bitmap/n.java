package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/n.class */
public final class n extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private volatile byte[] f3619a;

    /* renamed from: b  reason: collision with root package name */
    private int f3620b;
    private int c;
    private int d = -1;
    private int e;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/n$a.class */
    public static final class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public n(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("buffer is null or empty");
        }
        this.f3619a = bArr;
    }

    private int a(InputStream inputStream, byte[] bArr) {
        int i;
        byte[] bArr2;
        if (this.d == -1 || this.e - this.d >= this.c) {
            int read = inputStream.read(bArr);
            i = read;
            if (read > 0) {
                this.d = -1;
                this.e = 0;
                this.f3620b = read;
                i = read;
            }
        } else {
            if (this.d == 0 && this.c > bArr.length && this.f3620b == bArr.length) {
                int length = bArr.length * 2;
                int i2 = length;
                if (length > this.c) {
                    i2 = this.c;
                }
                if (Log.isLoggable("BufferedIs", 3)) {
                    Log.d("BufferedIs", "allocate buffer of length: " + i2);
                }
                bArr2 = new byte[i2];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.f3619a = bArr2;
            } else {
                bArr2 = bArr;
                if (this.d > 0) {
                    System.arraycopy(bArr, this.d, bArr, 0, bArr.length - this.d);
                    bArr2 = bArr;
                }
            }
            this.e -= this.d;
            this.d = 0;
            this.f3620b = 0;
            int read2 = inputStream.read(bArr2, this.e, bArr2.length - this.e);
            this.f3620b = read2 <= 0 ? this.e : this.e + read2;
            i = read2;
        }
        return i;
    }

    private static IOException b() {
        throw new IOException("BufferedInputStream is closed");
    }

    public final void a() {
        synchronized (this) {
            this.c = this.f3619a.length;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = this.in;
            if (this.f3619a == null || inputStream == null) {
                throw b();
            }
            i = this.f3620b;
            i2 = this.e;
            available = inputStream.available();
        }
        return available + (i - i2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f3619a = null;
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            this.c = Math.max(this.c, i);
            this.d = this.e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int i = -1;
        synchronized (this) {
            byte[] bArr = this.f3619a;
            InputStream inputStream = this.in;
            if (bArr == null || inputStream == null) {
                throw b();
            } else if (this.e < this.f3620b || a(inputStream, bArr) != -1) {
                byte[] bArr2 = bArr;
                if (bArr != this.f3619a) {
                    byte[] bArr3 = this.f3619a;
                    bArr2 = bArr3;
                    if (bArr3 == null) {
                        throw b();
                    }
                }
                if (this.f3620b - this.e > 0) {
                    int i2 = this.e;
                    this.e = i2 + 1;
                    i = bArr2[i2] & 255;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x014b A[Catch: all -> 0x0011, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000d, B:7:0x0010, B:19:0x0020, B:21:0x002b, B:22:0x002e, B:24:0x0030, B:26:0x003a, B:30:0x004a, B:33:0x0068, B:37:0x0076, B:39:0x0090, B:41:0x0098, B:43:0x00a0, B:51:0x00d3, B:59:0x00f6, B:61:0x00ff, B:64:0x010e, B:65:0x0111, B:67:0x0113, B:71:0x0123, B:75:0x014b, B:79:0x015b), top: B:82:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x001c A[EDGE_INSN: B:83:0x001c->B:15:0x001c ?: BREAK  , SYNTHETIC] */
    @Override // java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.n.read(byte[], int, int):int");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        synchronized (this) {
            if (this.f3619a == null) {
                throw new IOException("Stream is closed");
            } else if (-1 == this.d) {
                throw new a("Mark has been invalidated");
            } else {
                this.e = this.d;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long skip(long r8) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.n.skip(long):long");
    }
}
