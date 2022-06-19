package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.du */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/du.class */
public final class C13953du extends AbstractC14100je {

    /* renamed from: a */
    final SSLSocketFactory f51421a;

    public C13953du(C14110jo c14110jo) {
        super(c14110jo);
        this.f51421a = Build.VERSION.SDK_INT < 19 ? new C14118jw(HttpsURLConnection.getDefaultSSLSocketFactory()) : null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14100je
    /* renamed from: a */
    protected final boolean mo11531a() {
        return false;
    }

    /* renamed from: b */
    public final boolean m12081b() {
        m11696v();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f51637t.f51523a.getSystemService("connectivity");
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
