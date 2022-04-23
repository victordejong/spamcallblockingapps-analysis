package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1681d;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/RawResourceDataSource.class */
public final class RawResourceDataSource extends AbstractC1681d {

    /* renamed from: e */
    public final Resources f2003e;

    /* renamed from: f */
    public Uri f2004f;

    /* renamed from: g */
    public AssetFileDescriptor f2005g;

    /* renamed from: h */
    public InputStream f2006h;

    /* renamed from: i */
    public long f2007i;

    /* renamed from: j */
    public boolean f2008j;

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
        this.f2003e = context.getResources();
    }

    /* renamed from: b */
    public static Uri m37900b(int i) {
        StringBuilder sb = new StringBuilder(26);
        sb.append("rawresource:///");
        sb.append(i);
        return Uri.parse(sb.toString());
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws RawResourceDataSourceException {
        try {
            Uri uri = iVar.f6883a;
            this.f2004f = uri;
            if (TextUtils.equals("rawresource", uri.getScheme())) {
                try {
                    String lastPathSegment = uri.getLastPathSegment();
                    C1160a.m34522a(lastPathSegment);
                    int parseInt = Integer.parseInt(lastPathSegment);
                    m32391b(iVar);
                    AssetFileDescriptor openRawResourceFd = this.f2003e.openRawResourceFd(parseInt);
                    this.f2005g = openRawResourceFd;
                    if (openRawResourceFd != null) {
                        FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                        this.f2006h = fileInputStream;
                        fileInputStream.skip(openRawResourceFd.getStartOffset());
                        if (fileInputStream.skip(iVar.f6887e) >= iVar.f6887e) {
                            long j = -1;
                            if (iVar.f6888f != -1) {
                                this.f2007i = iVar.f6888f;
                            } else {
                                long length = openRawResourceFd.getLength();
                                if (length != -1) {
                                    j = length - iVar.f6887e;
                                }
                                this.f2007i = j;
                            }
                            this.f2008j = true;
                            m32390c(iVar);
                            return this.f2007i;
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

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws RawResourceDataSourceException {
        this.f2004f = null;
        try {
            try {
                if (this.f2006h != null) {
                    this.f2006h.close();
                }
                this.f2006h = null;
            } catch (IOException e) {
                throw new RawResourceDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f2006h = null;
            try {
                try {
                    if (this.f2005g != null) {
                        this.f2005g.close();
                    }
                    throw th;
                } catch (IOException e2) {
                    throw new RawResourceDataSourceException(e2);
                }
            } finally {
                this.f2005g = null;
                if (this.f2008j) {
                    this.f2008j = false;
                    m32393a();
                }
            }
        }
        try {
            try {
                if (this.f2005g != null) {
                    this.f2005g.close();
                }
                this.f2005g = null;
                if (this.f2008j) {
                    this.f2008j = false;
                    m32393a();
                }
            } catch (IOException e3) {
                throw new RawResourceDataSourceException(e3);
            }
        } finally {
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        return this.f2004f;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f2007i;
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
        InputStream inputStream = this.f2006h;
        C1167d0.m34479a(inputStream);
        int read = inputStream.read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.f2007i;
            if (j2 != -1) {
                this.f2007i = j2 - read;
            }
            m32392a(read);
            return read;
        } else if (this.f2007i == -1) {
            return -1;
        } else {
            throw new RawResourceDataSourceException(new EOFException());
        }
    }
}
