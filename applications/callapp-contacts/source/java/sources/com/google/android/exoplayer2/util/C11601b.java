package com.google.android.exoplayer2.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.android.exoplayer2.util.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/b.class */
public final class C11601b {

    /* renamed from: a */
    public final File f38663a;

    /* renamed from: b */
    public final File f38664b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.util.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/b$a.class */
    public static final class C11602a extends OutputStream {

        /* renamed from: a */
        private final FileOutputStream f38665a;

        /* renamed from: b */
        private boolean f38666b = false;

        public C11602a(File file) throws FileNotFoundException {
            this.f38665a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f38666b) {
                return;
            }
            this.f38666b = true;
            flush();
            try {
                this.f38665a.getFD().sync();
            } catch (IOException e) {
                C11617n.m19862a("AtomicFile", "Failed to sync file descriptor:", e);
            }
            this.f38665a.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() throws IOException {
            this.f38665a.flush();
        }

        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
            this.f38665a.write(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            this.f38665a.write(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            this.f38665a.write(bArr, i, i2);
        }
    }

    public C11601b(File file) {
        this.f38663a = file;
        this.f38664b = new File(file.getPath() + ".bak");
    }

    /* renamed from: a */
    public final boolean m19913a() {
        return this.f38663a.exists() || this.f38664b.exists();
    }

    /* renamed from: b */
    public final void m19912b() {
        this.f38663a.delete();
        this.f38664b.delete();
    }

    /* renamed from: c */
    public final OutputStream m19911c() throws IOException {
        C11602a c11602a;
        if (this.f38663a.exists()) {
            if (this.f38664b.exists()) {
                this.f38663a.delete();
            } else if (!this.f38663a.renameTo(this.f38664b)) {
                C11617n.m19863a("AtomicFile", "Couldn't rename file " + this.f38663a + " to backup file " + this.f38664b);
            }
        }
        try {
            c11602a = new C11602a(this.f38663a);
        } catch (FileNotFoundException e) {
            File parentFile = this.f38663a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.f38663a, e);
            }
            try {
                c11602a = new C11602a(this.f38663a);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.f38663a, e2);
            }
        }
        return c11602a;
    }
}
