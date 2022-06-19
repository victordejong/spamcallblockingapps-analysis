package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcxg;
import com.google.android.gms.internal.ads.zzdal;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewt.class */
public final class zzewt<U extends zzdal<A>, A extends zzcxg> implements zzfcx<U, A> {
    public final zzexn<U> zza;
    public final zzexp zzb;
    public final zzbdg zzc;
    public final String zzd;
    public final Executor zze;
    public final zzbdr zzf;
    public final zzfcm zzg;

    public zzewt(zzexn<U> zzexnVar, zzexp zzexpVar, zzbdg zzbdgVar, String str, Executor executor, zzbdr zzbdrVar, zzfcm zzfcmVar) {
        this.zza = zzexnVar;
        this.zzb = zzexpVar;
        this.zzc = zzbdgVar;
        this.zzd = str;
        this.zze = executor;
        this.zzf = zzbdrVar;
        this.zzg = zzfcmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfcx
    public final Executor zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfcx
    public final zzfcm zzb() {
        return this.zzg;
    }
}
