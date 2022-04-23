package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.util.af;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource.class */
public final class FileDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f22096a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f22097b;

    /* renamed from: c  reason: collision with root package name */
    private long f22098c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f22099d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException.class */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }

        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource$a.class */
    public static final class a implements h.a {

        /* renamed from: a  reason: collision with root package name */
        private v f22100a;

        @Override // com.google.android.exoplayer2.upstream.h.a
        public final /* synthetic */ h createDataSource() {
            FileDataSource fileDataSource = new FileDataSource();
            v vVar = this.f22100a;
            if (vVar != null) {
                fileDataSource.a(vVar);
            }
            return fileDataSource;
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile a(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) com.google.android.exoplayer2.util.a.b(uri.getPath()), "r");
        } catch (FileNotFoundException e) {
            if (!TextUtils.isEmpty(uri.getQuery()) || !TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e);
            }
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f22098c == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) af.a(this.f22096a)).read(bArr, i, (int) Math.min(this.f22098c, i2));
            if (read > 0) {
                this.f22098c -= read;
                a(read);
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws FileDataSourceException {
        try {
            Uri uri = jVar.f22204a;
            this.f22097b = uri;
            d();
            RandomAccessFile a2 = a(uri);
            this.f22096a = a2;
            a2.seek(jVar.g);
            long length = jVar.h == -1 ? this.f22096a.length() - jVar.g : jVar.h;
            this.f22098c = length;
            if (length >= 0) {
                this.f22099d = true;
                b(jVar);
                return this.f22098c;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f22097b;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws FileDataSourceException {
        this.f22097b = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f22096a;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f22096a = null;
                if (this.f22099d) {
                    this.f22099d = false;
                    e();
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f22096a = null;
            if (this.f22099d) {
                this.f22099d = false;
                e();
            }
            throw th;
        }
    }
}
