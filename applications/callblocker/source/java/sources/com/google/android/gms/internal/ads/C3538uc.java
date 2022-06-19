package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.net.HttpURLConnection;
/* renamed from: com.google.android.gms.internal.ads.uc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uc.class */
final class C3538uc extends FilterInputStream {

    /* renamed from: a */
    private final HttpURLConnection f17392a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3538uc(java.net.HttpURLConnection r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.io.InputStream r1 = com.google.android.gms.internal.ads.C3469ro.m7235a(r1)
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f17392a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3538uc.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        this.f17392a.disconnect();
    }
}
