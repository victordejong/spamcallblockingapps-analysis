package p193e.p1577m.p1578a.p1596c.p1636q1;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.q1.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/e.class */
public final class C24774e {

    /* renamed from: a */
    public final File f69439a;

    /* renamed from: b */
    public final File f69440b;

    /* renamed from: e.m.a.c.q1.e$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/e$a.class */
    public static final class C24775a extends OutputStream {

        /* renamed from: a */
        public final FileOutputStream f69441a;

        /* renamed from: b */
        public boolean f69442b = false;

        public C24775a(File file) throws FileNotFoundException {
            this.f69441a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f69442b) {
                return;
            }
            this.f69442b = true;
            this.f69441a.flush();
            try {
                this.f69441a.getFD().sync();
            } catch (IOException e) {
                C24789n.m4576a("Failed to sync file descriptor:", e);
            }
            this.f69441a.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f69441a.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.f69441a.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f69441a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.f69441a.write(bArr, i, i2);
        }
    }

    public C24774e(File file) {
        this.f69439a = file;
        this.f69440b = new File(file.getPath() + ".bak");
    }

    /* renamed from: a */
    public boolean m4597a() {
        return this.f69439a.exists() || this.f69440b.exists();
    }

    /* renamed from: b */
    public InputStream m4596b() throws FileNotFoundException {
        if (this.f69440b.exists()) {
            this.f69439a.delete();
            this.f69440b.renameTo(this.f69439a);
        }
        return new FileInputStream(this.f69439a);
    }

    /* renamed from: c */
    public OutputStream m4595c() throws IOException {
        C24775a c24775a;
        if (this.f69439a.exists()) {
            if (this.f69440b.exists()) {
                this.f69439a.delete();
            } else if (!this.f69439a.renameTo(this.f69440b)) {
                StringBuilder m8728C = C22128a.m8728C("Couldn't rename file ");
                m8728C.append(this.f69439a);
                m8728C.append(" to backup file ");
                m8728C.append(this.f69440b);
                m8728C.toString();
            }
        }
        try {
            c24775a = new C24775a(this.f69439a);
        } catch (FileNotFoundException e) {
            File parentFile = this.f69439a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                StringBuilder m8728C2 = C22128a.m8728C("Couldn't create ");
                m8728C2.append(this.f69439a);
                throw new IOException(m8728C2.toString(), e);
            }
            try {
                c24775a = new C24775a(this.f69439a);
            } catch (FileNotFoundException e2) {
                StringBuilder m8728C3 = C22128a.m8728C("Couldn't create ");
                m8728C3.append(this.f69439a);
                throw new IOException(m8728C3.toString(), e2);
            }
        }
        return c24775a;
    }
}
