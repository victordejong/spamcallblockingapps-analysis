package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.net.HttpURLConnection;
/* renamed from: com.google.android.gms.internal.ads.eo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eo.class */
final class C1721eo extends FilterInputStream {

    /* renamed from: b */
    private final HttpURLConnection f6430b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    C1721eo(java.net.HttpURLConnection r4) {
        /*
            r3 = this;
            r0 = r4
            java.io.InputStream r0 = r0.getInputStream()     // Catch: IOException -> 0x0008
            r5 = r0
            goto L_0x000e
        L_0x0008:
            r5 = move-exception
            r0 = r4
            java.io.InputStream r0 = r0.getErrorStream()
            r5 = r0
        L_0x000e:
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f6430b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1721eo.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        this.f6430b.disconnect();
    }
}
