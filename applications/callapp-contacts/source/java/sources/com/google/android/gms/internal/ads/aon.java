package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aon.class */
public class aon extends drr implements Closeable {

    /* renamed from: f */
    private static drz f42529f = drz.m15790a(aon.class);

    public aon(drt drtVar, alm almVar) throws IOException {
        mo15801a(drtVar, drtVar.mo15797a(), almVar);
    }

    @Override // com.google.android.gms.internal.ads.drr, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f47479b.close();
    }

    @Override // com.google.android.gms.internal.ads.drr
    public String toString() {
        String obj = this.f47479b.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
