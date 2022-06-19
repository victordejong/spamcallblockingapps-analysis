package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.net.HttpURLConnection;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbg.class */
public final class zzbg extends FilterInputStream {
    private final HttpURLConnection zzcx;

    public zzbg(HttpURLConnection httpURLConnection) {
        super(zzbd.zzb(httpURLConnection));
        this.zzcx = httpURLConnection;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        this.zzcx.disconnect();
    }
}
