package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/RepeatableFileInputStream.class */
public class RepeatableFileInputStream extends SdkInputStream {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6815a = LogFactory.a("RepeatableFIS");

    /* renamed from: b  reason: collision with root package name */
    private final File f6816b;

    /* renamed from: c  reason: collision with root package name */
    private FileInputStream f6817c;

    /* renamed from: d  reason: collision with root package name */
    private long f6818d = 0;
    private long e = 0;

    public RepeatableFileInputStream(File file) throws FileNotFoundException {
        this.f6817c = null;
        if (file != null) {
            this.f6817c = new FileInputStream(file);
            this.f6816b = file;
            return;
        }
        throw new IllegalArgumentException("File cannot be null");
    }

    @Override // com.amazonaws.internal.SdkInputStream
    public final InputStream a() {
        return this.f6817c;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        b();
        return this.f6817c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6817c.close();
        b();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        b();
        this.e += this.f6818d;
        this.f6818d = 0L;
        Log log = f6815a;
        if (log.a()) {
            log.b("Input stream marked at " + this.e + " bytes");
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        b();
        int read = this.f6817c.read();
        if (read == -1) {
            return -1;
        }
        this.f6818d++;
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        b();
        int read = this.f6817c.read(bArr, i, i2);
        this.f6818d += read;
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f6817c.close();
        b();
        this.f6817c = new FileInputStream(this.f6816b);
        long j = this.e;
        while (j > 0) {
            j -= this.f6817c.skip(j);
        }
        Log log = f6815a;
        if (log.a()) {
            log.b("Reset to mark point " + this.e + " after returning " + this.f6818d + " bytes");
        }
        this.f6818d = 0L;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        b();
        long skip = this.f6817c.skip(j);
        this.f6818d += skip;
        return skip;
    }
}
