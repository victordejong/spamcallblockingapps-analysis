package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdw.class */
public final class zzcdw implements Callable<zzcdv> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzcdy zzb;

    public zzcdw(zzcdy zzcdyVar, Context context) {
        this.zzb = zzcdyVar;
        this.zza = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ zzcdv call() throws Exception {
        WeakHashMap weakHashMap;
        zzcdv zzcdvVar;
        WeakHashMap weakHashMap2;
        weakHashMap = this.zzb.zza;
        zzcdx zzcdxVar = (zzcdx) weakHashMap.get(this.zza);
        if (zzcdxVar != null) {
            if (zzbmo.zza.zze().longValue() + zzcdxVar.zza >= zzt.zzA().currentTimeMillis()) {
                zzcdvVar = new zzcdu(this.zza, zzcdxVar.zzb).zza();
                weakHashMap2 = this.zzb.zza;
                weakHashMap2.put(this.zza, new zzcdx(this.zzb, zzcdvVar));
                return zzcdvVar;
            }
        }
        zzcdvVar = new zzcdu(this.zza).zza();
        weakHashMap2 = this.zzb.zza;
        weakHashMap2.put(this.zza, new zzcdx(this.zzb, zzcdvVar));
        return zzcdvVar;
    }
}
