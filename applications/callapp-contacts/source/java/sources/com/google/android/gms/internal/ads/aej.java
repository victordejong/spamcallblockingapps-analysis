package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aej.class */
final class aej extends FilterInputStream {

    /* renamed from: a */
    private final HttpURLConnection f40113a;

    public aej(HttpURLConnection httpURLConnection) {
        super(abi.m18910a(httpURLConnection));
        this.f40113a = httpURLConnection;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f40113a.disconnect();
    }
}
