package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/du.class */
public final class du extends je {

    /* renamed from: a  reason: collision with root package name */
    final SSLSocketFactory f29520a;

    public du(jo joVar) {
        super(joVar);
        this.f29520a = Build.VERSION.SDK_INT < 19 ? new jw(HttpsURLConnection.getDefaultSSLSocketFactory()) : null;
    }

    @Override // com.google.android.gms.measurement.internal.je
    protected final boolean a() {
        return false;
    }

    public final boolean b() {
        v();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.t.f29583a.getSystemService("connectivity");
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
}
