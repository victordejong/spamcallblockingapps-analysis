package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSource.class */
public final class FileDataSource extends AbstractC1966d {

    /* renamed from: a */
    private RandomAccessFile f7886a;

    /* renamed from: b */
    private Uri f7887b;

    /* renamed from: c */
    private long f7888c;

    /* renamed from: d */
    private boolean f7889d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException.class */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        super(false);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f7888c == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) C1996ac.m41659a(this.f7886a)).read(bArr, i, (int) Math.min(this.f7888c, i2));
            if (read > 0) {
                this.f7888c -= read;
                m41743a(read);
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws FileDataSourceException {
        try {
            Uri uri = c1971h.f7952a;
            this.f7887b = uri;
            m41741d();
            RandomAccessFile randomAccessFile = new RandomAccessFile((String) C1993a.m41690a(uri.getPath()), "r");
            this.f7886a = randomAccessFile;
            randomAccessFile.seek(c1971h.f7957f);
            char length = c1971h.f7958g == -1 ? randomAccessFile.length() - c1971h.f7957f : c1971h.f7958g;
            this.f7888c = length;
            if (length < 0) {
                throw new EOFException();
            }
            this.f7889d = true;
            m41742b(c1971h);
            return this.f7888c;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f7887b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws FileDataSourceException {
        this.f7887b = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f7886a;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f7886a = null;
                if (!this.f7889d) {
                    return;
                }
                this.f7889d = false;
                m41740e();
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f7886a = null;
            if (this.f7889d) {
                this.f7889d = false;
                m41740e();
            }
            throw th;
        }
    }
}
