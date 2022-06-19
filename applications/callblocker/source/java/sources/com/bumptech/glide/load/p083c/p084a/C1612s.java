package com.bumptech.glide.load.p083c.p084a;

import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.c.a.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/s.class */
public class C1612s extends FilterInputStream {

    /* renamed from: a */
    private volatile byte[] f5002a;

    /* renamed from: b */
    private int f5003b;

    /* renamed from: c */
    private int f5004c;

    /* renamed from: d */
    private int f5005d;

    /* renamed from: e */
    private int f5006e;

    /* renamed from: f */
    private final AbstractC1673b f5007f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.c.a.s$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/s$a.class */
    public static class C1613a extends IOException {
        C1613a(String str) {
            super(str);
        }
    }

    public C1612s(InputStream inputStream, AbstractC1673b abstractC1673b) {
        this(inputStream, abstractC1673b, 65536);
    }

    C1612s(InputStream inputStream, AbstractC1673b abstractC1673b, int i) {
        super(inputStream);
        this.f5005d = -1;
        this.f5007f = abstractC1673b;
        this.f5002a = (byte[]) abstractC1673b.mo16562a(i, byte[].class);
    }

    /* renamed from: a */
    private int m16737a(InputStream inputStream, byte[] bArr) {
        int i;
        byte[] bArr2;
        if (this.f5005d == -1 || this.f5006e - this.f5005d >= this.f5004c) {
            int read = inputStream.read(bArr);
            i = read;
            if (read > 0) {
                this.f5005d = -1;
                this.f5006e = 0;
                this.f5003b = read;
                i = read;
            }
        } else {
            if (this.f5005d == 0 && this.f5004c > bArr.length && this.f5003b == bArr.length) {
                int length = bArr.length * 2;
                int i2 = length;
                if (length > this.f5004c) {
                    i2 = this.f5004c;
                }
                bArr2 = (byte[]) this.f5007f.mo16562a(i2, byte[].class);
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.f5002a = bArr2;
                this.f5007f.mo16557a((AbstractC1673b) bArr);
            } else {
                bArr2 = bArr;
                if (this.f5005d > 0) {
                    System.arraycopy(bArr, this.f5005d, bArr, 0, bArr.length - this.f5005d);
                    bArr2 = bArr;
                }
            }
            this.f5006e -= this.f5005d;
            this.f5005d = 0;
            this.f5003b = 0;
            int read2 = inputStream.read(bArr2, this.f5006e, bArr2.length - this.f5006e);
            this.f5003b = read2 <= 0 ? this.f5006e : this.f5006e + read2;
            i = read2;
        }
        return i;
    }

    /* renamed from: c */
    private static IOException m16735c() {
        throw new IOException("BufferedInputStream is closed");
    }

    /* renamed from: a */
    public void m16738a() {
        synchronized (this) {
            this.f5004c = this.f5002a.length;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = this.in;
            if (this.f5002a == null || inputStream == null) {
                throw m16735c();
            }
            i = this.f5003b;
            i2 = this.f5006e;
            available = inputStream.available();
        }
        return available + (i - i2);
    }

    /* renamed from: b */
    public void m16736b() {
        synchronized (this) {
            if (this.f5002a != null) {
                this.f5007f.mo16557a((AbstractC1673b) this.f5002a);
                this.f5002a = null;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f5002a != null) {
            this.f5007f.mo16557a((AbstractC1673b) this.f5002a);
            this.f5002a = null;
        }
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.f5004c = Math.max(this.f5004c, i);
            this.f5005d = this.f5006e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i = -1;
        synchronized (this) {
            byte[] bArr = this.f5002a;
            InputStream inputStream = this.in;
            if (bArr == null || inputStream == null) {
                throw m16735c();
            }
            if (this.f5006e < this.f5003b || m16737a(inputStream, bArr) != -1) {
                byte[] bArr2 = bArr;
                if (bArr != this.f5002a) {
                    byte[] bArr3 = this.f5002a;
                    bArr2 = bArr3;
                    if (bArr3 == null) {
                        throw m16735c();
                    }
                }
                if (this.f5003b - this.f5006e > 0) {
                    int i2 = this.f5006e;
                    this.f5006e = i2 + 1;
                    i = bArr2[i2] & 255;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0158 A[Catch: all -> 0x0014, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x0010, B:7:0x0013, B:19:0x0023, B:21:0x002e, B:22:0x0031, B:24:0x0033, B:26:0x003d, B:30:0x004d, B:33:0x006b, B:37:0x0079, B:39:0x0092, B:41:0x009a, B:43:0x00a2, B:50:0x00d2, B:57:0x00f3, B:59:0x00fc, B:62:0x010b, B:63:0x010e, B:65:0x0110, B:69:0x0121, B:74:0x014a, B:75:0x0158), top: B:79:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0145 A[SYNTHETIC] */
    @Override // java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(byte[] r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p083c.p084a.C1612s.read(byte[], int, int):int");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        synchronized (this) {
            if (this.f5002a == null) {
                throw new IOException("Stream is closed");
            }
            if (-1 == this.f5005d) {
                throw new C1613a("Mark has been invalidated, pos: " + this.f5006e + " markLimit: " + this.f5004c);
            }
            this.f5006e = this.f5005d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        char skip;
        synchronized (this) {
            if (j < 1) {
                skip = 0;
            } else {
                byte[] bArr = this.f5002a;
                if (bArr == null) {
                    throw m16735c();
                }
                InputStream inputStream = this.in;
                if (inputStream == null) {
                    throw m16735c();
                }
                if (this.f5003b - this.f5006e >= j) {
                    this.f5006e = (int) (this.f5006e + j);
                    skip = j;
                } else {
                    ?? r0 = this.f5003b - this.f5006e;
                    this.f5006e = this.f5003b;
                    if (this.f5005d == -1 || j > this.f5004c) {
                        skip = r0 + inputStream.skip(j - r0);
                    } else if (m16737a(inputStream, bArr) == -1) {
                        skip = r0;
                    } else if (this.f5003b - this.f5006e >= j - r0) {
                        this.f5006e = (int) ((this.f5006e + j) - r0);
                        skip = j;
                    } else {
                        skip = (r0 + this.f5003b) - this.f5006e;
                        this.f5006e = this.f5003b;
                    }
                }
            }
        }
        return skip;
    }
}
