package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/RawResourceDataSource.class */
public final class RawResourceDataSource extends AbstractC11562d {

    /* renamed from: a */
    private final Resources f38373a;

    /* renamed from: b */
    private final String f38374b;

    /* renamed from: c */
    private Uri f38375c;

    /* renamed from: d */
    private AssetFileDescriptor f38376d;

    /* renamed from: e */
    private InputStream f38377e;

    /* renamed from: f */
    private long f38378f;

    /* renamed from: g */
    private boolean f38379g;

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
        this.f38373a = context.getResources();
        this.f38374b = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///".concat(String.valueOf(i)));
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f38378f;
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
        int read = ((InputStream) C11599af.m19974a(this.f38377e)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f38378f != -1) {
                throw new RawResourceDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f38378f;
        if (j2 != -1) {
            this.f38378f = j2 - read;
        }
        m20084a(read);
        return read;
    }

    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws RawResourceDataSourceException {
        int parseInt;
        String str;
        Uri uri = c11570j.f38512a;
        this.f38375c = uri;
        if (TextUtils.equals("rawresource", uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) C11593a.m20020b(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                parseInt = Integer.parseInt((String) C11593a.m20020b(uri.getLastPathSegment()));
            } catch (NumberFormatException e) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.");
            }
        } else if (!TextUtils.equals("android.resource", uri.getScheme())) {
            throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource");
        } else {
            String str2 = (String) C11593a.m20020b(uri.getPath());
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
            parseInt = this.f38373a.getIdentifier(sb.toString(), "raw", this.f38374b);
            if (parseInt == 0) {
                throw new RawResourceDataSourceException("Resource not found.");
            }
        }
        m20082d();
        AssetFileDescriptor openRawResourceFd = this.f38373a.openRawResourceFd(parseInt);
        this.f38376d = openRawResourceFd;
        if (openRawResourceFd != null) {
            FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
            this.f38377e = fileInputStream;
            try {
                fileInputStream.skip(openRawResourceFd.getStartOffset());
                if (fileInputStream.skip(c11570j.f38518g) < c11570j.f38518g) {
                    throw new EOFException();
                }
                char c = 65535;
                if (c11570j.f38519h != -1) {
                    c = c11570j.f38519h;
                } else {
                    long length = openRawResourceFd.getLength();
                    if (length != -1) {
                        c = length - c11570j.f38518g;
                    }
                }
                this.f38378f = c;
                this.f38379g = true;
                m20083b(c11570j);
                return this.f38378f;
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            }
        }
        throw new RawResourceDataSourceException("Resource is compressed: ".concat(String.valueOf(uri)));
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38375c;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws RawResourceDataSourceException {
        this.f38375c = null;
        try {
            try {
                InputStream inputStream = this.f38377e;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f38377e = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f38376d;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f38376d = null;
                        if (!this.f38379g) {
                            return;
                        }
                        this.f38379g = false;
                        m20081e();
                    } catch (IOException e) {
                        throw new RawResourceDataSourceException(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.f38377e = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f38376d;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new RawResourceDataSourceException(e3);
                }
            } finally {
                this.f38376d = null;
                if (this.f38379g) {
                    this.f38379g = false;
                    m20081e();
                }
            }
        }
    }
}
