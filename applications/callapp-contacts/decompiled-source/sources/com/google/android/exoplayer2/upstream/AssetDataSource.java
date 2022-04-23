package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/AssetDataSource.class */
public final class AssetDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f22087a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f22088b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f22089c;

    /* renamed from: d  reason: collision with root package name */
    private long f22090d;
    private boolean e;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException.class */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f22087a = context.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws AssetDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f22090d;
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
        int read = ((InputStream) af.a(this.f22089c)).read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.f22090d;
            if (j2 != -1) {
                this.f22090d = j2 - read;
            }
            a(read);
            return read;
        } else if (this.f22090d == -1) {
            return -1;
        } else {
            throw new AssetDataSourceException(new EOFException());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws AssetDataSourceException {
        String str;
        try {
            Uri uri = jVar.f22204a;
            this.f22088b = uri;
            String str2 = (String) a.b(uri.getPath());
            if (str2.startsWith("/android_asset/")) {
                str = str2.substring(15);
            } else {
                str = str2;
                if (str2.startsWith("/")) {
                    str = str2.substring(1);
                }
            }
            d();
            InputStream open = this.f22087a.open(str, 1);
            this.f22089c = open;
            if (open.skip(jVar.g) >= jVar.g) {
                if (jVar.h != -1) {
                    this.f22090d = jVar.h;
                } else {
                    long available = this.f22089c.available();
                    this.f22090d = available;
                    if (available == 2147483647L) {
                        this.f22090d = -1L;
                    }
                }
                this.e = true;
                b(jVar);
                return this.f22090d;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f22088b;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws AssetDataSourceException {
        this.f22088b = null;
        try {
            try {
                InputStream inputStream = this.f22089c;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f22089c = null;
                if (this.e) {
                    this.e = false;
                    e();
                }
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f22089c = null;
            if (this.e) {
                this.e = false;
                e();
            }
            throw th;
        }
    }
}
