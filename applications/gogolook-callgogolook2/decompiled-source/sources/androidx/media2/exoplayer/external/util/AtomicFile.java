package androidx.media2.exoplayer.external.util;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/AtomicFile.class */
public final class AtomicFile {
    public static final String TAG = "AtomicFile";
    public final File backupName;
    public final File baseName;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/AtomicFile$AtomicFileOutputStream.class */
    public static final class AtomicFileOutputStream extends OutputStream {
        public boolean closed = false;
        public final FileOutputStream fileOutputStream;

        public AtomicFileOutputStream(File file) throws FileNotFoundException {
            this.fileOutputStream = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                flush();
                try {
                    this.fileOutputStream.getFD().sync();
                } catch (IOException e) {
                    Log.m37482w(AtomicFile.TAG, "Failed to sync file descriptor:", e);
                }
                this.fileOutputStream.close();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.fileOutputStream.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.fileOutputStream.write(i);
        }

        @Override // java.io.OutputStream
        public void write(@NonNull byte[] bArr) throws IOException {
            this.fileOutputStream.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
            this.fileOutputStream.write(bArr, i, i2);
        }
    }

    public AtomicFile(File file) {
        this.baseName = file;
        this.backupName = new File(String.valueOf(file.getPath()).concat(".bak"));
    }

    private void restoreBackup() {
        if (this.backupName.exists()) {
            this.baseName.delete();
            this.backupName.renameTo(this.baseName);
        }
    }

    public void delete() {
        this.baseName.delete();
        this.backupName.delete();
    }

    public void endWrite(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.backupName.delete();
    }

    public boolean exists() {
        return this.baseName.exists() || this.backupName.exists();
    }

    public InputStream openRead() throws FileNotFoundException {
        restoreBackup();
        return new FileInputStream(this.baseName);
    }

    public OutputStream startWrite() throws IOException {
        AtomicFileOutputStream atomicFileOutputStream;
        if (this.baseName.exists()) {
            if (this.backupName.exists()) {
                this.baseName.delete();
            } else if (!this.baseName.renameTo(this.backupName)) {
                String valueOf = String.valueOf(this.baseName);
                String valueOf2 = String.valueOf(this.backupName);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 37 + String.valueOf(valueOf2).length());
                sb.append("Couldn't rename file ");
                sb.append(valueOf);
                sb.append(" to backup file ");
                sb.append(valueOf2);
                Log.m37483w(TAG, sb.toString());
            }
        }
        try {
            atomicFileOutputStream = new AtomicFileOutputStream(this.baseName);
        } catch (FileNotFoundException e) {
            File parentFile = this.baseName.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                String valueOf3 = String.valueOf(this.baseName);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 26);
                sb2.append("Couldn't create directory ");
                sb2.append(valueOf3);
                throw new IOException(sb2.toString(), e);
            }
            try {
                atomicFileOutputStream = new AtomicFileOutputStream(this.baseName);
            } catch (FileNotFoundException e2) {
                String valueOf4 = String.valueOf(this.baseName);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf4).length() + 16);
                sb3.append("Couldn't create ");
                sb3.append(valueOf4);
                throw new IOException(sb3.toString(), e2);
            }
        }
        return atomicFileOutputStream;
    }
}
