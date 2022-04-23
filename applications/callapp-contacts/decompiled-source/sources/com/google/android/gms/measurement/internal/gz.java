package com.google.android.gms.measurement.internal;

import android.os.Build;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gz.class */
public final class gz extends fn {

    /* renamed from: a  reason: collision with root package name */
    final SSLSocketFactory f29740a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gz(es esVar) {
        super(esVar);
        this.f29740a = Build.VERSION.SDK_INT < 19 ? new jw(HttpsURLConnection.getDefaultSSLSocketFactory()) : null;
    }

    @Override // com.google.android.gms.measurement.internal.fn
    protected final boolean a() {
        return false;
    }
}
