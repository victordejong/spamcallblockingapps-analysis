package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1681d;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/AssetDataSource.class */
public final class AssetDataSource extends AbstractC1681d {

    /* renamed from: e */
    public final AssetManager f1967e;

    /* renamed from: f */
    public Uri f1968f;

    /* renamed from: g */
    public InputStream f1969g;

    /* renamed from: h */
    public long f1970h;

    /* renamed from: i */
    public boolean f1971i;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException.class */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f1967e = context.getAssets();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws AssetDataSourceException {
        String str;
        try {
            Uri uri = iVar.f6883a;
            this.f1968f = uri;
            String path = uri.getPath();
            C1160a.m34522a(path);
            String str2 = path;
            if (str2.startsWith("/android_asset/")) {
                str = str2.substring(15);
            } else {
                str = str2;
                if (str2.startsWith("/")) {
                    str = str2.substring(1);
                }
            }
            m32391b(iVar);
            InputStream open = this.f1967e.open(str, 1);
            this.f1969g = open;
            if (open.skip(iVar.f6887e) >= iVar.f6887e) {
                if (iVar.f6888f != -1) {
                    this.f1970h = iVar.f6888f;
                } else {
                    long available = this.f1969g.available();
                    this.f1970h = available;
                    if (available == 2147483647L) {
                        this.f1970h = -1L;
                    }
                }
                this.f1971i = true;
                m32390c(iVar);
                return this.f1970h;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws AssetDataSourceException {
        this.f1968f = null;
        try {
            try {
                if (this.f1969g != null) {
                    this.f1969g.close();
                }
                this.f1969g = null;
                if (this.f1971i) {
                    this.f1971i = false;
                    m32393a();
                }
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f1969g = null;
            if (this.f1971i) {
                this.f1971i = false;
                m32393a();
            }
            throw th;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        return this.f1968f;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws AssetDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f1970h;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        }
        InputStream inputStream = this.f1969g;
        C1167d0.m34479a(inputStream);
        int read = inputStream.read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.f1970h;
            if (j2 != -1) {
                this.f1970h = j2 - read;
            }
            m32392a(read);
            return read;
        } else if (this.f1970h == -1) {
            return -1;
        } else {
            throw new AssetDataSourceException(new EOFException());
        }
    }
}
