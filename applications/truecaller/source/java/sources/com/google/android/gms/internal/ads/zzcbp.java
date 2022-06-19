package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbp.class */
public final class zzcbp implements Callable<zzcbo> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzcbr zzb;

    public zzcbp(zzcbr zzcbrVar, Context context) {
        this.zzb = zzcbrVar;
        this.zza = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ zzcbo call() throws Exception {
        WeakHashMap weakHashMap;
        zzcbo zzcboVar;
        WeakHashMap weakHashMap2;
        weakHashMap = this.zzb.zza;
        zzcbq zzcbqVar = (zzcbq) weakHashMap.get(this.zza);
        if (zzcbqVar != null) {
            if (zzbkq.zza.zze().longValue() + zzcbqVar.zza >= zzt.zzj().mo38787c()) {
                zzcboVar = new zzcbn(this.zza, zzcbqVar.zzb).zza();
                weakHashMap2 = this.zzb.zza;
                weakHashMap2.put(this.zza, new zzcbq(this.zzb, zzcboVar));
                return zzcboVar;
            }
        }
        zzcboVar = new zzcbn(this.zza).zza();
        weakHashMap2 = this.zzb.zza;
        weakHashMap2.put(this.zza, new zzcbq(this.zzb, zzcboVar));
        return zzcboVar;
    }
}
