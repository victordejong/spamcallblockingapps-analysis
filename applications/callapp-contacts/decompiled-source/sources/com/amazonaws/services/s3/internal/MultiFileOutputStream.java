package com.amazonaws.services.s3.internal;

import com.amazonaws.AbortedException;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.OnFileDelete;
import com.amazonaws.services.s3.UploadObjectObserver;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.Semaphore;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/MultiFileOutputStream.class */
public class MultiFileOutputStream extends OutputStream implements OnFileDelete {

    /* renamed from: a  reason: collision with root package name */
    private final File f6801a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6802b;

    /* renamed from: c  reason: collision with root package name */
    private int f6803c;

    /* renamed from: d  reason: collision with root package name */
    private long f6804d;
    private long e;
    private UploadObjectObserver f;
    private int g;
    private long h;
    private FileOutputStream i;
    private boolean j;
    private Semaphore k;

    public MultiFileOutputStream() {
        this.f6804d = 5242880L;
        this.e = Long.MAX_VALUE;
        this.f6801a = new File(System.getProperty("java.io.tmpdir"));
        this.f6802b = new SimpleDateFormat("yyMMdd-hhmmss").format(new Date()) + "." + UUID.randomUUID();
    }

    public MultiFileOutputStream(File file, String str) {
        this.f6804d = 5242880L;
        this.e = Long.MAX_VALUE;
        if (file == null || !file.isDirectory() || !file.canWrite()) {
            throw new IllegalArgumentException(file + " must be a writable directory");
        } else if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("Please specify a non-empty name prefix");
        } else {
            this.f6801a = file;
            this.f6802b = str;
        }
    }

    private File a(int i) {
        File file = this.f6801a;
        return new File(file, this.f6802b + "." + i);
    }

    private FileOutputStream b() throws IOException {
        if (!this.j) {
            FileOutputStream fileOutputStream = this.i;
            if (fileOutputStream == null || this.g >= this.f6804d) {
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                    this.f.a(new PartCreationEvent(a(this.f6803c), this.f6803c, false, this));
                }
                this.g = 0;
                this.f6803c++;
                c();
                File a2 = a(this.f6803c);
                a2.deleteOnExit();
                this.i = new FileOutputStream(a2);
            }
            return this.i;
        }
        throw new IOException("Output stream is already closed");
    }

    private void c() {
        Semaphore semaphore = this.k;
        if (semaphore != null && this.e != Long.MAX_VALUE) {
            try {
                semaphore.acquire();
            } catch (InterruptedException e) {
                throw new AbortedException(e);
            }
        }
    }

    @Override // com.amazonaws.services.s3.OnFileDelete
    public final void a() {
        Semaphore semaphore = this.k;
        if (semaphore != null) {
            semaphore.release();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.j) {
            this.j = true;
            FileOutputStream fileOutputStream = this.i;
            if (fileOutputStream != null) {
                fileOutputStream.close();
                File a2 = a(this.f6803c);
                if (a2.length() != 0) {
                    this.f.a(new PartCreationEvent(a(this.f6803c), this.f6803c, true, this));
                } else if (!a2.delete()) {
                    LogFactory.a(getClass()).b("Ignoring failure to delete empty file ".concat(String.valueOf(a2)));
                }
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        FileOutputStream fileOutputStream = this.i;
        if (fileOutputStream != null) {
            fileOutputStream.flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        b().write(i);
        this.g++;
        this.h++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        if (bArr.length != 0) {
            b().write(bArr);
            this.g += bArr.length;
            this.h += bArr.length;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (bArr.length != 0) {
            b().write(bArr, i, i2);
            this.g += i2;
            this.h += i2;
        }
    }
}
