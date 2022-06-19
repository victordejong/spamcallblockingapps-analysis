package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbq.class */
public class zzbq extends zzepl implements Closeable {
    private static zzept zzdc = zzept.zzn(zzbq.class);

    public zzbq(zzepn zzepnVar, zzbn zzbnVar) throws IOException {
        zza(zzepnVar, zzepnVar.size(), zzbnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzepl, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zzjbd.close();
    }

    @Override // com.google.android.gms.internal.ads.zzepl
    public String toString() {
        String obj = this.zzjbd.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
