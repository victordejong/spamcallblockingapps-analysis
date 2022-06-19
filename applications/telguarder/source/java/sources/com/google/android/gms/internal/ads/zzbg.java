package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbg.class */
final class zzbg extends FilterInputStream {
    private final HttpURLConnection zzcx;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbg(java.net.HttpURLConnection r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.io.InputStream r1 = com.google.android.gms.internal.ads.zzbd.zzb(r1)
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.zzcx = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbg.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.zzcx.disconnect();
    }
}
