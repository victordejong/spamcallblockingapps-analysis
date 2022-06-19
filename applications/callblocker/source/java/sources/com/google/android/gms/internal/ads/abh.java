package com.google.android.gms.internal.ads;

import java.io.Closeable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abh.class */
public class abh extends dhd implements Closeable {

    /* renamed from: f */
    private static dhl f7746f = dhl.m9456a(abh.class);

    public abh(dhf dhfVar, aci aciVar) {
        mo9467a(dhfVar, dhfVar.mo9463a(), aciVar);
    }

    @Override // com.google.android.gms.internal.ads.dhd, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f14351b.close();
    }

    @Override // com.google.android.gms.internal.ads.dhd
    public String toString() {
        String obj = this.f14351b.toString();
        return new StringBuilder(String.valueOf(obj).length() + 7).append("model(").append(obj).append(")").toString();
    }
}
