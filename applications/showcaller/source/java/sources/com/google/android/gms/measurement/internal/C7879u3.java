package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.u3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/u3.class */
public final class C7879u3 extends AbstractC7702e9 {

    /* renamed from: d */
    private final SSLSocketFactory f35710d;

    public C7879u3(C7819o9 c7819o9) {
        super(c7819o9);
        this.f35710d = Build.VERSION.SDK_INT < 19 ? new C7907w9(HttpsURLConnection.getDefaultSSLSocketFactory()) : null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7702e9
    /* renamed from: i */
    protected final boolean mo6003i() {
        return false;
    }

    /* renamed from: k */
    public final boolean m6002k() {
        m6455h();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f35460a.mo6030a().getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException e) {
                networkInfo = null;
            }
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    /* renamed from: l */
    public final HttpURLConnection m6001l(URL url) {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            SSLSocketFactory sSLSocketFactory = this.f35710d;
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
