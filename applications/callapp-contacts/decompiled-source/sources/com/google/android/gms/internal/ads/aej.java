package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aej.class */
final class aej extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f23194a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aej(HttpURLConnection httpURLConnection) {
        super(abi.a(httpURLConnection));
        this.f23194a = httpURLConnection;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f23194a.disconnect();
    }
}
