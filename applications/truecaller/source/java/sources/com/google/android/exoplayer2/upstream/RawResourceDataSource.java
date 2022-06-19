package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24698g;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24742n;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/upstream/RawResourceDataSource.class */
public final class RawResourceDataSource extends AbstractC24698g {

    /* renamed from: e */
    public final Resources f5204e;

    /* renamed from: f */
    public Uri f5205f;

    /* renamed from: g */
    public AssetFileDescriptor f5206g;

    /* renamed from: h */
    public InputStream f5207h;

    /* renamed from: i */
    public long f5208i;

    /* renamed from: j */
    public boolean f5209j;

    /* renamed from: com.google.android.exoplayer2.upstream.RawResourceDataSource$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/upstream/RawResourceDataSource$a.class */
    public static class C2023a extends IOException {
        public C2023a(IOException iOException) {
            super(iOException);
        }

        public C2023a(String str) {
            super(str);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f5204e = context.getResources();
    }

    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws C2023a {
        try {
            Uri uri = c24742n.f69328a;
            this.f5205f = uri;
            if (!TextUtils.equals("rawresource", uri.getScheme())) {
                throw new C2023a("URI must use scheme rawresource");
            }
            try {
                String lastPathSegment = uri.getLastPathSegment();
                Objects.requireNonNull(lastPathSegment);
                int parseInt = Integer.parseInt(lastPathSegment);
                m4766f(c24742n);
                AssetFileDescriptor openRawResourceFd = this.f5204e.openRawResourceFd(parseInt);
                this.f5206g = openRawResourceFd;
                if (openRawResourceFd == null) {
                    throw new C2023a("Resource is compressed: " + uri);
                }
                FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                this.f5207h = fileInputStream;
                fileInputStream.skip(openRawResourceFd.getStartOffset());
                if (fileInputStream.skip(c24742n.f69333f) < c24742n.f69333f) {
                    throw new EOFException();
                }
                long j = c24742n.f69334g;
                char c = 65535;
                if (j != -1) {
                    this.f5208i = j;
                } else {
                    long length = openRawResourceFd.getLength();
                    if (length != -1) {
                        c = length - c24742n.f69333f;
                    }
                    this.f5208i = c;
                }
                this.f5209j = true;
                m4765g(c24742n);
                return this.f5208i;
            } catch (NumberFormatException e) {
                throw new C2023a("Resource identifier must be an integer.");
            }
        } catch (IOException e2) {
            throw new C2023a(e2);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws C2023a {
        this.f5205f = null;
        try {
            try {
                InputStream inputStream = this.f5207h;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f5207h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f5206g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f5206g = null;
                        if (!this.f5209j) {
                            return;
                        }
                        this.f5209j = false;
                        m4767e();
                    } catch (IOException e) {
                        throw new C2023a(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new C2023a(e2);
            }
        } catch (Throwable th) {
            this.f5207h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f5206g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new C2023a(e3);
                }
            } finally {
                this.f5206g = null;
                if (this.f5209j) {
                    this.f5209j = false;
                    m4767e();
                }
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f5205f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws C2023a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f5208i;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new C2023a(e);
            }
        }
        InputStream inputStream = this.f5207h;
        int i3 = C24773d0.f69427a;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            if (this.f5208i != -1) {
                throw new C2023a(new EOFException());
            }
            return -1;
        }
        long j2 = this.f5208i;
        if (j2 != -1) {
            this.f5208i = j2 - read;
        }
        m4768d(read);
        return read;
    }
}
