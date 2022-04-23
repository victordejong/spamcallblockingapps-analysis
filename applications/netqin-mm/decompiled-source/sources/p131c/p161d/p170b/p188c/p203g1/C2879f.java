package p131c.p161d.p170b.p188c.p203g1;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: c.d.b.c.g1.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/f.class */
public final class C2879f {

    /* renamed from: a */
    public final File f10466a;

    /* renamed from: b */
    public final File f10467b;

    /* renamed from: c.d.b.c.g1.f$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/g1/f$a.class */
    public static final class C2880a extends OutputStream {

        /* renamed from: a */
        public final FileOutputStream f10468a;

        /* renamed from: b */
        public boolean f10469b = false;

        public C2880a(File file) throws FileNotFoundException {
            this.f10468a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f10469b) {
                this.f10469b = true;
                flush();
                try {
                    this.f10468a.getFD().sync();
                } catch (IOException e) {
                    C2894o.m28596b("AtomicFile", "Failed to sync file descriptor:", e);
                }
                this.f10468a.close();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f10468a.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.f10468a.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f10468a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.f10468a.write(bArr, i, i2);
        }
    }

    public C2879f(File file) {
        this.f10466a = file;
        this.f10467b = new File(file.getPath() + ".bak");
    }

    /* renamed from: a */
    public void m28720a() {
        this.f10466a.delete();
        this.f10467b.delete();
    }

    /* renamed from: a */
    public void m28719a(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.f10467b.delete();
    }

    /* renamed from: b */
    public boolean m28718b() {
        return this.f10466a.exists() || this.f10467b.exists();
    }

    /* renamed from: c */
    public InputStream m28717c() throws FileNotFoundException {
        m28716d();
        return new FileInputStream(this.f10466a);
    }

    /* renamed from: d */
    public final void m28716d() {
        if (this.f10467b.exists()) {
            this.f10466a.delete();
            this.f10467b.renameTo(this.f10466a);
        }
    }

    /* renamed from: e */
    public OutputStream m28715e() throws IOException {
        C2880a aVar;
        if (this.f10466a.exists()) {
            if (this.f10467b.exists()) {
                this.f10466a.delete();
            } else if (!this.f10466a.renameTo(this.f10467b)) {
                C2894o.m28594d("AtomicFile", "Couldn't rename file " + this.f10466a + " to backup file " + this.f10467b);
            }
        }
        try {
            aVar = new C2880a(this.f10466a);
        } catch (FileNotFoundException e) {
            File parentFile = this.f10466a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.f10466a, e);
            }
            try {
                aVar = new C2880a(this.f10466a);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.f10466a, e2);
            }
        }
        return aVar;
    }
}
