package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/AssetDataSource.class */
public final class AssetDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f4009a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f4010b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f4011c;

    /* renamed from: d  reason: collision with root package name */
    private long f4012d;
    private boolean e;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException.class */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f4009a = context.getAssets();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws AssetDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f4012d;
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
        int read = ((InputStream) ac.a(this.f4011c)).read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.f4012d;
            if (j2 != -1) {
                this.f4012d = j2 - read;
            }
            a(read);
            return read;
        } else if (this.f4012d == -1) {
            return -1;
        } else {
            throw new AssetDataSourceException(new EOFException());
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws AssetDataSourceException {
        String str;
        try {
            Uri uri = hVar.f4064a;
            this.f4010b = uri;
            String str2 = (String) a.a(uri.getPath());
            if (str2.startsWith("/android_asset/")) {
                str = str2.substring(15);
            } else {
                str = str2;
                if (str2.startsWith("/")) {
                    str = str2.substring(1);
                }
            }
            d();
            InputStream open = this.f4009a.open(str, 1);
            this.f4011c = open;
            if (open.skip(hVar.f) >= hVar.f) {
                if (hVar.g != -1) {
                    this.f4012d = hVar.g;
                } else {
                    long available = this.f4011c.available();
                    this.f4012d = available;
                    if (available == 2147483647L) {
                        this.f4012d = -1L;
                    }
                }
                this.e = true;
                b(hVar);
                return this.f4012d;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f4010b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws AssetDataSourceException {
        this.f4010b = null;
        try {
            try {
                InputStream inputStream = this.f4011c;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f4011c = null;
                if (this.e) {
                    this.e = false;
                    e();
                }
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f4011c = null;
            if (this.e) {
                this.e = false;
                e();
            }
            throw th;
        }
    }
}
