package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSource.class */
public final class FileDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f4018a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f4019b;

    /* renamed from: c  reason: collision with root package name */
    private long f4020c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4021d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException.class */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        super(false);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f4020c == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) ac.a(this.f4018a)).read(bArr, i, (int) Math.min(this.f4020c, i2));
            if (read > 0) {
                this.f4020c -= read;
                a(read);
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws FileDataSourceException {
        try {
            Uri uri = hVar.f4064a;
            this.f4019b = uri;
            d();
            RandomAccessFile randomAccessFile = new RandomAccessFile((String) a.a(uri.getPath()), "r");
            this.f4018a = randomAccessFile;
            randomAccessFile.seek(hVar.f);
            long length = hVar.g == -1 ? randomAccessFile.length() - hVar.f : hVar.g;
            this.f4020c = length;
            if (length >= 0) {
                this.f4021d = true;
                b(hVar);
                return this.f4020c;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f4019b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws FileDataSourceException {
        this.f4019b = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f4018a;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f4018a = null;
                if (this.f4021d) {
                    this.f4021d = false;
                    e();
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f4018a = null;
            if (this.f4021d) {
                this.f4021d = false;
                e();
            }
            throw th;
        }
    }
}
