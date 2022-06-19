package com.amazonaws.services.p101s3.internal;

import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.internal.RepeatableFileInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/RepeatableFileInputStream.class */
public class RepeatableFileInputStream extends SdkInputStream {

    /* renamed from: a */
    private static final Log f12356a = LogFactory.m38583a("RepeatableFIS");

    /* renamed from: b */
    private final File f12357b;

    /* renamed from: c */
    private FileInputStream f12358c;

    /* renamed from: d */
    private long f12359d = 0;

    /* renamed from: e */
    private long f12360e = 0;

    public RepeatableFileInputStream(File file) throws FileNotFoundException {
        this.f12358c = null;
        if (file != null) {
            this.f12358c = new FileInputStream(file);
            this.f12357b = file;
            return;
        }
        throw new IllegalArgumentException("File cannot be null");
    }

    @Override // com.amazonaws.internal.SdkInputStream
    /* renamed from: a */
    public final InputStream mo38389a() {
        return this.f12358c;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        m38604b();
        return this.f12358c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12358c.close();
        m38604b();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        m38604b();
        this.f12360e += this.f12359d;
        this.f12359d = 0L;
        Log log = f12356a;
        if (log.mo38597a()) {
            log.mo38593b("Input stream marked at " + this.f12360e + " bytes");
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        m38604b();
        int read = this.f12358c.read();
        if (read != -1) {
            this.f12359d++;
            return read;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        m38604b();
        int read = this.f12358c.read(bArr, i, i2);
        this.f12359d += read;
        return read;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v5 */
    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f12358c.close();
        m38604b();
        this.f12358c = new FileInputStream(this.f12357b);
        ?? r0 = this.f12360e;
        while (true) {
            char c = r0;
            if (c <= 0) {
                break;
            }
            r0 = c - this.f12358c.skip(c);
        }
        Log log = f12356a;
        if (log.mo38597a()) {
            log.mo38593b("Reset to mark point " + this.f12360e + " after returning " + this.f12359d + " bytes");
        }
        this.f12359d = 0L;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        m38604b();
        long skip = this.f12358c.skip(j);
        this.f12359d += skip;
        return skip;
    }
}
