package com.google.android.exoplayer2.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final File f22279a;

    /* renamed from: b  reason: collision with root package name */
    public final File f22280b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/b$a.class */
    static final class a extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final FileOutputStream f22281a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f22282b = false;

        public a(File file) throws FileNotFoundException {
            this.f22281a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (!this.f22282b) {
                this.f22282b = true;
                flush();
                try {
                    this.f22281a.getFD().sync();
                } catch (IOException e) {
                    n.a("AtomicFile", "Failed to sync file descriptor:", e);
                }
                this.f22281a.close();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() throws IOException {
            this.f22281a.flush();
        }

        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
            this.f22281a.write(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            this.f22281a.write(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            this.f22281a.write(bArr, i, i2);
        }
    }

    public b(File file) {
        this.f22279a = file;
        this.f22280b = new File(file.getPath() + ".bak");
    }

    public final boolean a() {
        return this.f22279a.exists() || this.f22280b.exists();
    }

    public final void b() {
        this.f22279a.delete();
        this.f22280b.delete();
    }

    public final OutputStream c() throws IOException {
        a aVar;
        if (this.f22279a.exists()) {
            if (this.f22280b.exists()) {
                this.f22279a.delete();
            } else if (!this.f22279a.renameTo(this.f22280b)) {
                n.a("AtomicFile", "Couldn't rename file " + this.f22279a + " to backup file " + this.f22280b);
            }
        }
        try {
            aVar = new a(this.f22279a);
        } catch (FileNotFoundException e) {
            File parentFile = this.f22279a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.f22279a, e);
            }
            try {
                aVar = new a(this.f22279a);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.f22279a, e2);
            }
        }
        return aVar;
    }
}
