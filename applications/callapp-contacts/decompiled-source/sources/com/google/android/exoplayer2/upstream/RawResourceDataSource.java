package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/RawResourceDataSource.class */
public final class RawResourceDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f22121a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22122b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f22123c;

    /* renamed from: d  reason: collision with root package name */
    private AssetFileDescriptor f22124d;
    private InputStream e;
    private long f;
    private boolean g;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException.class */
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
        this.f22121a = context.getResources();
        this.f22122b = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///".concat(String.valueOf(i)));
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f;
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
        int read = ((InputStream) af.a(this.e)).read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.f;
            if (j2 != -1) {
                this.f = j2 - read;
            }
            a(read);
            return read;
        } else if (this.f == -1) {
            return -1;
        } else {
            throw new RawResourceDataSourceException(new EOFException());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws RawResourceDataSourceException {
        int parseInt;
        String str;
        Uri uri = jVar.f22204a;
        this.f22123c = uri;
        if (TextUtils.equals("rawresource", uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) a.b(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                parseInt = Integer.parseInt((String) a.b(uri.getLastPathSegment()));
            } catch (NumberFormatException e) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.");
            }
        } else if (TextUtils.equals("android.resource", uri.getScheme())) {
            String str2 = (String) a.b(uri.getPath());
            String str3 = str2;
            if (str2.startsWith("/")) {
                str3 = str2.substring(1);
            }
            String host = uri.getHost();
            StringBuilder sb = new StringBuilder();
            if (TextUtils.isEmpty(host)) {
                str = "";
            } else {
                str = host + ":";
            }
            sb.append(str);
            sb.append(str3);
            parseInt = this.f22121a.getIdentifier(sb.toString(), "raw", this.f22122b);
            if (parseInt == 0) {
                throw new RawResourceDataSourceException("Resource not found.");
            }
        } else {
            throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource");
        }
        d();
        AssetFileDescriptor openRawResourceFd = this.f22121a.openRawResourceFd(parseInt);
        this.f22124d = openRawResourceFd;
        if (openRawResourceFd != null) {
            FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
            this.e = fileInputStream;
            try {
                fileInputStream.skip(openRawResourceFd.getStartOffset());
                if (fileInputStream.skip(jVar.g) >= jVar.g) {
                    long j = -1;
                    if (jVar.h != -1) {
                        j = jVar.h;
                    } else {
                        long length = openRawResourceFd.getLength();
                        if (length != -1) {
                            j = length - jVar.g;
                        }
                    }
                    this.f = j;
                    this.g = true;
                    b(jVar);
                    return this.f;
                }
                throw new EOFException();
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            }
        } else {
            throw new RawResourceDataSourceException("Resource is compressed: ".concat(String.valueOf(uri)));
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f22123c;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws RawResourceDataSourceException {
        this.f22123c = null;
        try {
            try {
                InputStream inputStream = this.e;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.e = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f22124d;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f22124d = null;
                        if (this.g) {
                            this.g = false;
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
            this.e = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f22124d;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new RawResourceDataSourceException(e3);
                }
            } finally {
                this.f22124d = null;
                if (this.g) {
                    this.g = false;
                    e();
                }
            }
        }
    }
}
