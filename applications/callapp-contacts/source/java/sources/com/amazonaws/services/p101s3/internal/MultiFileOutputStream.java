package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AbortedException;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.OnFileDelete;
import com.amazonaws.services.p101s3.UploadObjectObserver;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.Semaphore;
/* renamed from: com.amazonaws.services.s3.internal.MultiFileOutputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/MultiFileOutputStream.class */
public class MultiFileOutputStream extends OutputStream implements OnFileDelete {

    /* renamed from: a */
    private final File f12335a;

    /* renamed from: b */
    private final String f12336b;

    /* renamed from: c */
    private int f12337c;

    /* renamed from: d */
    private long f12338d;

    /* renamed from: e */
    private long f12339e;

    /* renamed from: f */
    private UploadObjectObserver f12340f;

    /* renamed from: g */
    private int f12341g;

    /* renamed from: h */
    private long f12342h;

    /* renamed from: i */
    private FileOutputStream f12343i;

    /* renamed from: j */
    private boolean f12344j;

    /* renamed from: k */
    private Semaphore f12345k;

    public MultiFileOutputStream() {
        this.f12338d = 5242880L;
        this.f12339e = Long.MAX_VALUE;
        this.f12335a = new File(System.getProperty("java.io.tmpdir"));
        this.f12336b = new SimpleDateFormat("yyMMdd-hhmmss").format(new Date()) + "." + UUID.randomUUID();
    }

    public MultiFileOutputStream(File file, String str) {
        this.f12338d = 5242880L;
        this.f12339e = Long.MAX_VALUE;
        if (file == null || !file.isDirectory() || !file.canWrite()) {
            throw new IllegalArgumentException(file + " must be a writable directory");
        } else if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("Please specify a non-empty name prefix");
        } else {
            this.f12335a = file;
            this.f12336b = str;
        }
    }

    /* renamed from: a */
    private File m38432a(int i) {
        File file = this.f12335a;
        return new File(file, this.f12336b + "." + i);
    }

    /* renamed from: b */
    private FileOutputStream m38431b() throws IOException {
        if (!this.f12344j) {
            FileOutputStream fileOutputStream = this.f12343i;
            if (fileOutputStream == null || this.f12341g >= this.f12338d) {
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                    this.f12340f.m38443a(new PartCreationEvent(m38432a(this.f12337c), this.f12337c, false, this));
                }
                this.f12341g = 0;
                this.f12337c++;
                m38430c();
                File m38432a = m38432a(this.f12337c);
                m38432a.deleteOnExit();
                this.f12343i = new FileOutputStream(m38432a);
            }
            return this.f12343i;
        }
        throw new IOException("Output stream is already closed");
    }

    /* renamed from: c */
    private void m38430c() {
        Semaphore semaphore = this.f12345k;
        if (semaphore == null || this.f12339e == Long.MAX_VALUE) {
            return;
        }
        try {
            semaphore.acquire();
        } catch (InterruptedException e) {
            throw new AbortedException(e);
        }
    }

    @Override // com.amazonaws.services.p101s3.OnFileDelete
    /* renamed from: a */
    public final void mo38433a() {
        Semaphore semaphore = this.f12345k;
        if (semaphore != null) {
            semaphore.release();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f12344j) {
            return;
        }
        this.f12344j = true;
        FileOutputStream fileOutputStream = this.f12343i;
        if (fileOutputStream == null) {
            return;
        }
        fileOutputStream.close();
        File m38432a = m38432a(this.f12337c);
        if (m38432a.length() != 0) {
            this.f12340f.m38443a(new PartCreationEvent(m38432a(this.f12337c), this.f12337c, true, this));
        } else if (m38432a.delete()) {
        } else {
            LogFactory.m38584a(getClass()).mo38593b("Ignoring failure to delete empty file ".concat(String.valueOf(m38432a)));
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        FileOutputStream fileOutputStream = this.f12343i;
        if (fileOutputStream != null) {
            fileOutputStream.flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        m38431b().write(i);
        this.f12341g++;
        this.f12342h++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        if (bArr.length == 0) {
            return;
        }
        m38431b().write(bArr);
        this.f12341g += bArr.length;
        this.f12342h += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (bArr.length == 0) {
            return;
        }
        m38431b().write(bArr, i, i2);
        this.f12341g += i2;
        this.f12342h += i2;
    }
}
