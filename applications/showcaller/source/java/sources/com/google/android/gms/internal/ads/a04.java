package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.net.HttpURLConnection;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a04.class */
final class a04 extends FilterInputStream {

    /* renamed from: d */
    private final HttpURLConnection f19790d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a04(java.net.HttpURLConnection r4) {
        /*
            r3 = this;
            r0 = r4
            java.io.InputStream r0 = r0.getInputStream()     // Catch: java.io.IOException -> L8
            r5 = r0
            goto Le
        L8:
            r5 = move-exception
            r0 = r4
            java.io.InputStream r0 = r0.getErrorStream()
            r5 = r0
        Le:
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f19790d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.a04.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        this.f19790d.disconnect();
    }
}
