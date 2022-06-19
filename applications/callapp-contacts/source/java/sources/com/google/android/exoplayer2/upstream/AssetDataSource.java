package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/AssetDataSource.class */
public final class AssetDataSource extends AbstractC11562d {

    /* renamed from: a */
    private final AssetManager f38325a;

    /* renamed from: b */
    private Uri f38326b;

    /* renamed from: c */
    private InputStream f38327c;

    /* renamed from: d */
    private long f38328d;

    /* renamed from: e */
    private boolean f38329e;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException.class */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f38325a = context.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws AssetDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f38328d;
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
        int read = ((InputStream) C11599af.m19974a(this.f38327c)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f38328d != -1) {
                throw new AssetDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f38328d;
        if (j2 != -1) {
            this.f38328d = j2 - read;
        }
        m20084a(read);
        return read;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws AssetDataSourceException {
        String str;
        try {
            Uri uri = c11570j.f38512a;
            this.f38326b = uri;
            String str2 = (String) C11593a.m20020b(uri.getPath());
            if (str2.startsWith("/android_asset/")) {
                str = str2.substring(15);
            } else {
                str = str2;
                if (str2.startsWith("/")) {
                    str = str2.substring(1);
                }
            }
            m20082d();
            InputStream open = this.f38325a.open(str, 1);
            this.f38327c = open;
            if (open.skip(c11570j.f38518g) < c11570j.f38518g) {
                throw new EOFException();
            }
            if (c11570j.f38519h != -1) {
                this.f38328d = c11570j.f38519h;
            } else {
                long available = this.f38327c.available();
                this.f38328d = available;
                if (available == 2147483647L) {
                    this.f38328d = -1L;
                }
            }
            this.f38329e = true;
            m20083b(c11570j);
            return this.f38328d;
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38326b;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws AssetDataSourceException {
        this.f38326b = null;
        try {
            try {
                InputStream inputStream = this.f38327c;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f38327c = null;
                if (!this.f38329e) {
                    return;
                }
                this.f38329e = false;
                m20081e();
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f38327c = null;
            if (this.f38329e) {
                this.f38329e = false;
                m20081e();
            }
            throw th;
        }
    }
}
