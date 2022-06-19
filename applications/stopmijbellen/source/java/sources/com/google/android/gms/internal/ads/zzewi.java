package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewi.class */
public final class zzewi implements zzevn<zzewj> {
    private final Executor zza;
    private final String zzb;
    private final PackageInfo zzc;
    private final zzcic zzd;

    public zzewi(zzcic zzcicVar, Executor executor, String str, PackageInfo packageInfo, int i, byte[] bArr) {
        this.zzd = zzcicVar;
        this.zza = executor;
        this.zzb = str;
        this.zzc = packageInfo;
    }

    public final /* synthetic */ zzfxa zza(Throwable th) throws Exception {
        return zzfwq.zzi(new zzewj(this.zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzewj> zzb() {
        return zzfwq.zzg(zzfwq.zzm(zzfwq.zzi(this.zzb), zzewg.zza, this.zza), Throwable.class, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzewh
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzewi.this.zza((Throwable) obj);
            }
        }, this.zza);
    }
}
