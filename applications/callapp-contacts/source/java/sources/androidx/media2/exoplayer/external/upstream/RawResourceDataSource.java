package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/RawResourceDataSource.class */
public final class RawResourceDataSource extends AbstractC1966d {

    /* renamed from: a */
    private final Resources f7920a;

    /* renamed from: b */
    private Uri f7921b;

    /* renamed from: c */
    private AssetFileDescriptor f7922c;

    /* renamed from: d */
    private InputStream f7923d;

    /* renamed from: e */
    private long f7924e;

    /* renamed from: f */
    private boolean f7925f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException.class */
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
        this.f7920a = context.getResources();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f7924e;
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
        int read = ((InputStream) C1996ac.m41659a(this.f7923d)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f7924e != -1) {
                throw new RawResourceDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f7924e;
        if (j2 != -1) {
            this.f7924e = j2 - read;
        }
        m41743a(read);
        return read;
    }

    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws RawResourceDataSourceException {
        try {
            Uri uri = c1971h.f7952a;
            this.f7921b = uri;
            if (!TextUtils.equals("rawresource", uri.getScheme())) {
                throw new RawResourceDataSourceException("URI must use scheme rawresource");
            }
            try {
                int parseInt = Integer.parseInt((String) C1993a.m41690a(uri.getLastPathSegment()));
                m41741d();
                AssetFileDescriptor openRawResourceFd = this.f7920a.openRawResourceFd(parseInt);
                this.f7922c = openRawResourceFd;
                if (openRawResourceFd == null) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                    sb.append("Resource is compressed: ");
                    sb.append(valueOf);
                    throw new RawResourceDataSourceException(sb.toString());
                }
                FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                this.f7923d = fileInputStream;
                fileInputStream.skip(openRawResourceFd.getStartOffset());
                if (fileInputStream.skip(c1971h.f7957f) < c1971h.f7957f) {
                    throw new EOFException();
                }
                char c = 65535;
                if (c1971h.f7958g != -1) {
                    this.f7924e = c1971h.f7958g;
                } else {
                    long length = openRawResourceFd.getLength();
                    if (length != -1) {
                        c = length - c1971h.f7957f;
                    }
                    this.f7924e = c;
                }
                this.f7925f = true;
                m41742b(c1971h);
                return this.f7924e;
            } catch (NumberFormatException e) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.");
            }
        } catch (IOException e2) {
            throw new RawResourceDataSourceException(e2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f7921b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws RawResourceDataSourceException {
        this.f7921b = null;
        try {
            try {
                InputStream inputStream = this.f7923d;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f7923d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f7922c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f7922c = null;
                        if (!this.f7925f) {
                            return;
                        }
                        this.f7925f = false;
                        m41740e();
                    } catch (IOException e) {
                        throw new RawResourceDataSourceException(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.f7923d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f7922c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new RawResourceDataSourceException(e3);
                }
            } finally {
                this.f7922c = null;
                if (this.f7925f) {
                    this.f7925f = false;
                    m41740e();
                }
            }
        }
    }
}
