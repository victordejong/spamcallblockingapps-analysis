package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzia.class */
public final class zzia extends zzgr {

    /* renamed from: c */
    private final SSLSocketFactory f9477c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzia(zzfv zzfvVar) {
        super(zzfvVar);
        this.f9477c = Build.VERSION.SDK_INT < 19 ? new zzky() : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: u */
    public static byte[] m11240u(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream inputStream2 = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream2.read(bArr);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            inputStream = inputStream2;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (inputStream2 != null) {
                inputStream2.close();
            }
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    /* renamed from: q */
    protected final boolean mo10948q() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: s */
    public final HttpURLConnection m11242s(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            SSLSocketFactory sSLSocketFactory = this.f9477c;
            if (sSLSocketFactory != null && (openConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) openConnection).setSSLSocketFactory(sSLSocketFactory);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(60000);
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain HTTP connection");
    }

    /* renamed from: v */
    public final boolean m11239v() {
        NetworkInfo networkInfo;
        m11310n();
        try {
            networkInfo = ((ConnectivityManager) mo11075f().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }
}
