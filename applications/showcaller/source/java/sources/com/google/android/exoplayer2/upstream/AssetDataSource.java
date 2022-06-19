package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/AssetDataSource.class */
public final class AssetDataSource extends AbstractC5475g {

    /* renamed from: f */
    private final AssetManager f17669f;

    /* renamed from: g */
    private Uri f17670g;

    /* renamed from: h */
    private InputStream f17671h;

    /* renamed from: i */
    private long f17672i;

    /* renamed from: j */
    private boolean f17673j;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException.class */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f17669f = context.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        String str;
        try {
            Uri uri = c5481l.f17746a;
            this.f17670g = uri;
            String str2 = (String) C5508e.m18911e(uri.getPath());
            if (str2.startsWith("/android_asset/")) {
                str = str2.substring(15);
            } else {
                str = str2;
                if (str2.startsWith("/")) {
                    str = str2.substring(1);
                }
            }
            m19024f(c5481l);
            InputStream open = this.f17669f.open(str, 1);
            this.f17671h = open;
            if (open.skip(c5481l.f17751f) < c5481l.f17751f) {
                throw new EOFException();
            }
            long j = c5481l.f17752g;
            if (j != -1) {
                this.f17672i = j;
            } else {
                long available = this.f17671h.available();
                this.f17672i = available;
                if (available == 2147483647L) {
                    this.f17672i = -1L;
                }
            }
            this.f17673j = true;
            m19023g(c5481l);
            return this.f17672i;
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        return this.f17670g;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        this.f17670g = null;
        try {
            try {
                InputStream inputStream = this.f17671h;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f17671h = null;
                if (!this.f17673j) {
                    return;
                }
                this.f17673j = false;
                m19025e();
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f17671h = null;
            if (this.f17673j) {
                this.f17673j = false;
                m19025e();
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f17672i;
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
        int read = ((InputStream) C5515h0.m18833g(this.f17671h)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f17672i != -1) {
                throw new AssetDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f17672i;
        if (j2 != -1) {
            this.f17672i = j2 - read;
        }
        m19026d(read);
        return read;
    }
}
