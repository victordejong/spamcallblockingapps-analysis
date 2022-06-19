package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource.class */
public final class FileDataSource extends AbstractC5475g {

    /* renamed from: f */
    private RandomAccessFile f17680f;

    /* renamed from: g */
    private Uri f17681g;

    /* renamed from: h */
    private long f17682h;

    /* renamed from: i */
    private boolean f17683i;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException.class */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }

        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException);
        }
    }

    public FileDataSource() {
        super(false);
    }

    /* renamed from: h */
    private static RandomAccessFile m19057h(Uri uri) {
        try {
            return new RandomAccessFile((String) C5508e.m18911e(uri.getPath()), "r");
        } catch (FileNotFoundException e) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        try {
            Uri uri = c5481l.f17746a;
            this.f17681g = uri;
            m19024f(c5481l);
            RandomAccessFile m19057h = m19057h(uri);
            this.f17680f = m19057h;
            m19057h.seek(c5481l.f17751f);
            ?? r0 = c5481l.f17752g;
            char c = r0;
            if (r0 == -1) {
                c = this.f17680f.length() - c5481l.f17751f;
            }
            this.f17682h = c;
            if (c < 0) {
                throw new EOFException();
            }
            this.f17683i = true;
            m19023g(c5481l);
            return this.f17682h;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        return this.f17681g;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        this.f17681g = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f17680f;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f17680f = null;
                if (!this.f17683i) {
                    return;
                }
                this.f17683i = false;
                m19025e();
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f17680f = null;
            if (this.f17683i) {
                this.f17683i = false;
                m19025e();
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.f17682h == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) C5515h0.m18833g(this.f17680f)).read(bArr, i, (int) Math.min(this.f17682h, i2));
            if (read > 0) {
                this.f17682h -= read;
                m19026d(read);
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }
}
