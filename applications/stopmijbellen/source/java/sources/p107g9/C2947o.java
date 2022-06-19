package p107g9;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: g9.o */
/* loaded from: classes2-dex2jar.jar:g9/o.class */
public final class C2947o extends InputStream {

    /* renamed from: a */
    public final InputStream f9907a;

    /* renamed from: b */
    public long f9908b;

    /* renamed from: c */
    public long f9909c;

    /* renamed from: d */
    public long f9910d;

    /* renamed from: e */
    public long f9911e = -1;

    /* renamed from: f */
    public boolean f9912f = true;

    /* renamed from: g */
    public int f9913g;

    public C2947o(InputStream inputStream) {
        this.f9913g = -1;
        this.f9907a = !inputStream.markSupported() ? new BufferedInputStream(inputStream, 4096) : inputStream;
        this.f9913g = 1024;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f9907a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f9907a.close();
    }

    /* renamed from: d */
    public void m2827d(long j) throws IOException {
        if (this.f9908b > this.f9910d || j < this.f9909c) {
            throw new IOException("Cannot reset");
        }
        this.f9907a.reset();
        m2825l(this.f9909c, j);
        this.f9908b = j;
    }

    /* renamed from: k */
    public final void m2826k(long j) {
        try {
            long j2 = this.f9909c;
            long j3 = this.f9908b;
            if (j2 >= j3 || j3 > this.f9910d) {
                this.f9909c = j3;
                this.f9907a.mark((int) (j - j3));
            } else {
                this.f9907a.reset();
                this.f9907a.mark((int) (j - this.f9909c));
                m2825l(this.f9909c, this.f9908b);
            }
            this.f9910d = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r7 = r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2825l(long r7, long r9) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L33
            r0 = r6
            java.io.InputStream r0 = r0.f9907a
            r1 = r9
            r2 = r7
            long r1 = r1 - r2
            long r0 = r0.skip(r1)
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L2b
            r0 = r6
            int r0 = r0.read()
            r1 = -1
            if (r0 != r1) goto L28
            goto L33
        L28:
            r0 = 1
            r13 = r0
        L2b:
            r0 = r7
            r1 = r13
            long r0 = r0 + r1
            r7 = r0
            goto L0
        L33:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p107g9.C2947o.m2825l(long, long):void");
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        long j = this.f9908b + i;
        if (this.f9910d < j) {
            m2826k(j);
        }
        this.f9911e = this.f9908b;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f9907a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f9912f) {
            long j = this.f9908b;
            long j2 = this.f9910d;
            if (j + 1 > j2) {
                m2826k(j2 + this.f9913g);
            }
        }
        int read = this.f9907a.read();
        if (read != -1) {
            this.f9908b++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (!this.f9912f) {
            long j = this.f9908b;
            if (bArr.length + j > this.f9910d) {
                m2826k(j + bArr.length + this.f9913g);
            }
        }
        int read = this.f9907a.read(bArr);
        if (read != -1) {
            this.f9908b += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f9912f) {
            long j = this.f9908b;
            long j2 = i2;
            if (j + j2 > this.f9910d) {
                m2826k(j + j2 + this.f9913g);
            }
        }
        int read = this.f9907a.read(bArr, i, i2);
        if (read != -1) {
            this.f9908b += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        m2827d(this.f9911e);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (!this.f9912f) {
            long j2 = this.f9908b;
            if (j2 + j > this.f9910d) {
                m2826k(j2 + j + this.f9913g);
            }
        }
        long skip = this.f9907a.skip(j);
        this.f9908b += skip;
        return skip;
    }
}
