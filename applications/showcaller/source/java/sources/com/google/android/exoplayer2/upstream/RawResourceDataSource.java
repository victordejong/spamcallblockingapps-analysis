package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/RawResourceDataSource.class */
public final class RawResourceDataSource extends AbstractC5475g {

    /* renamed from: f */
    private final Resources f17708f;

    /* renamed from: g */
    private Uri f17709g;

    /* renamed from: h */
    private AssetFileDescriptor f17710h;

    /* renamed from: i */
    private InputStream f17711i;

    /* renamed from: j */
    private long f17712j;

    /* renamed from: k */
    private boolean f17713k;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException.class */
    public static class RawResourceDataSourceException extends IOException {
        public RawResourceDataSourceException(IOException iOException) {
            super(iOException);
        }

        public RawResourceDataSourceException(String str) {
            super(str);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f17708f = context.getResources();
    }

    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        try {
            Uri uri = c5481l.f17746a;
            this.f17709g = uri;
            if (!TextUtils.equals("rawresource", uri.getScheme())) {
                throw new RawResourceDataSourceException("URI must use scheme rawresource");
            }
            try {
                int parseInt = Integer.parseInt((String) C5508e.m18911e(uri.getLastPathSegment()));
                m19024f(c5481l);
                AssetFileDescriptor openRawResourceFd = this.f17708f.openRawResourceFd(parseInt);
                this.f17710h = openRawResourceFd;
                if (openRawResourceFd == null) {
                    throw new RawResourceDataSourceException("Resource is compressed: " + uri);
                }
                FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                this.f17711i = fileInputStream;
                fileInputStream.skip(openRawResourceFd.getStartOffset());
                if (fileInputStream.skip(c5481l.f17751f) < c5481l.f17751f) {
                    throw new EOFException();
                }
                long j = c5481l.f17752g;
                char c = 65535;
                if (j != -1) {
                    this.f17712j = j;
                } else {
                    long length = openRawResourceFd.getLength();
                    if (length != -1) {
                        c = length - c5481l.f17751f;
                    }
                    this.f17712j = c;
                }
                this.f17713k = true;
                m19023g(c5481l);
                return this.f17712j;
            } catch (NumberFormatException e) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.");
            }
        } catch (IOException e2) {
            throw new RawResourceDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        return this.f17709g;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        this.f17709g = null;
        try {
            try {
                InputStream inputStream = this.f17711i;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f17711i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f17710h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f17710h = null;
                        if (!this.f17713k) {
                            return;
                        }
                        this.f17713k = false;
                        m19025e();
                    } catch (IOException e) {
                        throw new RawResourceDataSourceException(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.f17711i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f17710h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new RawResourceDataSourceException(e3);
                }
            } finally {
                this.f17710h = null;
                if (this.f17713k) {
                    this.f17713k = false;
                    m19025e();
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f17712j;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new RawResourceDataSourceException(e);
            }
        }
        int read = ((InputStream) C5515h0.m18833g(this.f17711i)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f17712j != -1) {
                throw new RawResourceDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f17712j;
        if (j2 != -1) {
            this.f17712j = j2 - read;
        }
        m19026d(read);
        return read;
    }
}
