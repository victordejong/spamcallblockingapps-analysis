package com.google.android.gms.measurement.internal;

import android.os.Build;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.gz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gz.class */
public final class C14040gz extends AbstractC14001fn {

    /* renamed from: a */
    final SSLSocketFactory f51761a;

    public C14040gz(C13979es c13979es) {
        super(c13979es);
        this.f51761a = Build.VERSION.SDK_INT < 19 ? new C14118jw(HttpsURLConnection.getDefaultSSLSocketFactory()) : null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    /* renamed from: a */
    protected final boolean mo11519a() {
        return false;
    }
}
