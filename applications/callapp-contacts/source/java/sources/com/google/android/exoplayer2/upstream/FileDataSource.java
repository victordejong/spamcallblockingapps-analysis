package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource.class */
public final class FileDataSource extends AbstractC11562d {

    /* renamed from: a */
    private RandomAccessFile f38337a;

    /* renamed from: b */
    private Uri f38338b;

    /* renamed from: c */
    private long f38339c;

    /* renamed from: d */
    private boolean f38340d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException.class */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }

        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.FileDataSource$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource$a.class */
    public static final class C11521a implements AbstractC11567h.AbstractC11568a {

        /* renamed from: a */
        private AbstractC11590v f38341a;

        @Override // com.google.android.exoplayer2.upstream.AbstractC11567h.AbstractC11568a
        public final /* synthetic */ AbstractC11567h createDataSource() {
            FileDataSource fileDataSource = new FileDataSource();
            AbstractC11590v abstractC11590v = this.f38341a;
            if (abstractC11590v != null) {
                fileDataSource.mo20034a(abstractC11590v);
            }
            return fileDataSource;
        }
    }

    public FileDataSource() {
        super(false);
    }

    /* renamed from: a */
    private static RandomAccessFile m20212a(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) C11593a.m20020b(uri.getPath()), "r");
        } catch (FileNotFoundException e) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f38339c == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) C11599af.m19974a(this.f38337a)).read(bArr, i, (int) Math.min(this.f38339c, i2));
            if (read > 0) {
                this.f38339c -= read;
                m20084a(read);
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws FileDataSourceException {
        try {
            Uri uri = c11570j.f38512a;
            this.f38338b = uri;
            m20082d();
            RandomAccessFile m20212a = m20212a(uri);
            this.f38337a = m20212a;
            m20212a.seek(c11570j.f38518g);
            char length = c11570j.f38519h == -1 ? this.f38337a.length() - c11570j.f38518g : c11570j.f38519h;
            this.f38339c = length;
            if (length < 0) {
                throw new EOFException();
            }
            this.f38340d = true;
            m20083b(c11570j);
            return this.f38339c;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38338b;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws FileDataSourceException {
        this.f38338b = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f38337a;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f38337a = null;
                if (!this.f38340d) {
                    return;
                }
                this.f38340d = false;
                m20081e();
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f38337a = null;
            if (this.f38340d) {
                this.f38340d = false;
                m20081e();
            }
            throw th;
        }
    }
}
