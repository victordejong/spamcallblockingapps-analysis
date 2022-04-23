package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/RawResourceDataSource.class */
public final class RawResourceDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f4042a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f4043b;

    /* renamed from: c  reason: collision with root package name */
    private AssetFileDescriptor f4044c;

    /* renamed from: d  reason: collision with root package name */
    private InputStream f4045d;
    private long e;
    private boolean f;

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
        this.f4042a = context.getResources();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.e;
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
        int read = ((InputStream) ac.a(this.f4045d)).read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.e;
            if (j2 != -1) {
                this.e = j2 - read;
            }
            a(read);
            return read;
        } else if (this.e == -1) {
            return -1;
        } else {
            throw new RawResourceDataSourceException(new EOFException());
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws RawResourceDataSourceException {
        try {
            Uri uri = hVar.f4064a;
            this.f4043b = uri;
            if (TextUtils.equals("rawresource", uri.getScheme())) {
                try {
                    int parseInt = Integer.parseInt((String) a.a(uri.getLastPathSegment()));
                    d();
                    AssetFileDescriptor openRawResourceFd = this.f4042a.openRawResourceFd(parseInt);
                    this.f4044c = openRawResourceFd;
                    if (openRawResourceFd != null) {
                        FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                        this.f4045d = fileInputStream;
                        fileInputStream.skip(openRawResourceFd.getStartOffset());
                        if (fileInputStream.skip(hVar.f) >= hVar.f) {
                            long j = -1;
                            if (hVar.g != -1) {
                                this.e = hVar.g;
                            } else {
                                long length = openRawResourceFd.getLength();
                                if (length != -1) {
                                    j = length - hVar.f;
                                }
                                this.e = j;
                            }
                            this.f = true;
                            b(hVar);
                            return this.e;
                        }
                        throw new EOFException();
                    }
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                    sb.append("Resource is compressed: ");
                    sb.append(valueOf);
                    throw new RawResourceDataSourceException(sb.toString());
                } catch (NumberFormatException e) {
                    throw new RawResourceDataSourceException("Resource identifier must be an integer.");
                }
            } else {
                throw new RawResourceDataSourceException("URI must use scheme rawresource");
            }
        } catch (IOException e2) {
            throw new RawResourceDataSourceException(e2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f4043b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws RawResourceDataSourceException {
        this.f4043b = null;
        try {
            try {
                InputStream inputStream = this.f4045d;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f4045d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f4044c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f4044c = null;
                        if (this.f) {
                            this.f = false;
                            e();
                        }
                    } catch (IOException e) {
                        throw new RawResourceDataSourceException(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.f4045d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f4044c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new RawResourceDataSourceException(e3);
                }
            } finally {
                this.f4044c = null;
                if (this.f) {
                    this.f = false;
                    e();
                }
            }
        }
    }
}
