package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/AssetDataSource.class */
public final class AssetDataSource extends AbstractC1966d {

    /* renamed from: a */
    private final AssetManager f7874a;

    /* renamed from: b */
    private Uri f7875b;

    /* renamed from: c */
    private InputStream f7876c;

    /* renamed from: d */
    private long f7877d;

    /* renamed from: e */
    private boolean f7878e;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException.class */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f7874a = context.getAssets();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws AssetDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f7877d;
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
        int read = ((InputStream) C1996ac.m41659a(this.f7876c)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f7877d != -1) {
                throw new AssetDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f7877d;
        if (j2 != -1) {
            this.f7877d = j2 - read;
        }
        m41743a(read);
        return read;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws AssetDataSourceException {
        String str;
        try {
            Uri uri = c1971h.f7952a;
            this.f7875b = uri;
            String str2 = (String) C1993a.m41690a(uri.getPath());
            if (str2.startsWith("/android_asset/")) {
                str = str2.substring(15);
            } else {
                str = str2;
                if (str2.startsWith("/")) {
                    str = str2.substring(1);
                }
            }
            m41741d();
            InputStream open = this.f7874a.open(str, 1);
            this.f7876c = open;
            if (open.skip(c1971h.f7957f) < c1971h.f7957f) {
                throw new EOFException();
            }
            if (c1971h.f7958g != -1) {
                this.f7877d = c1971h.f7958g;
            } else {
                long available = this.f7876c.available();
                this.f7877d = available;
                if (available == 2147483647L) {
                    this.f7877d = -1L;
                }
            }
            this.f7878e = true;
            m41742b(c1971h);
            return this.f7877d;
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f7875b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws AssetDataSourceException {
        this.f7875b = null;
        try {
            try {
                InputStream inputStream = this.f7876c;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f7876c = null;
                if (!this.f7878e) {
                    return;
                }
                this.f7878e = false;
                m41740e();
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f7876c = null;
            if (this.f7878e) {
                this.f7878e = false;
                m41740e();
            }
            throw th;
        }
    }
}
