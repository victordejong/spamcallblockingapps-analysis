package com.google.android.gms.measurement.internal;

import android.os.Build;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.z6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/z6.class */
public final class C7937z6 extends AbstractC7804n5 {

    /* renamed from: c */
    private final SSLSocketFactory f35848c;

    public C7937z6(C7858s4 c7858s4) {
        super(c7858s4);
        this.f35848c = Build.VERSION.SDK_INT < 19 ? new C7907w9(HttpsURLConnection.getDefaultSSLSocketFactory()) : null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    /* renamed from: g */
    protected final boolean mo5878g() {
        return false;
    }

    /* renamed from: m */
    public final HttpURLConnection m5877m(URL url) {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            SSLSocketFactory sSLSocketFactory = this.f35848c;
            if (sSLSocketFactory != null && (openConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) openConnection).setSSLSocketFactory(sSLSocketFactory);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            this.f35460a.m6006y();
            httpURLConnection.setConnectTimeout(60000);
            this.f35460a.m6006y();
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain HTTP connection");
    }
}
