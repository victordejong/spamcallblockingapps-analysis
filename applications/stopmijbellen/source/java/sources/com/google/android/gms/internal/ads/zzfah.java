package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdav;
import com.google.android.gms.internal.ads.zzdea;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfah.class */
public final class zzfah<U extends zzdea<A>, A extends zzdav> implements zzfgi<U, A> {
    public final zzfbb<U> zza;
    public final zzfbd zzb;
    public final zzbfd zzc;
    public final String zzd;
    public final Executor zze;
    public final zzbfo zzf;
    public final zzffx zzg;

    public zzfah(zzfbb<U> zzfbbVar, zzfbd zzfbdVar, zzbfd zzbfdVar, String str, Executor executor, zzbfo zzbfoVar, zzffx zzffxVar) {
        this.zza = zzfbbVar;
        this.zzb = zzfbdVar;
        this.zzc = zzbfdVar;
        this.zzd = str;
        this.zze = executor;
        this.zzf = zzbfoVar;
        this.zzg = zzffxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfgi
    public final zzffx zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzfgi
    public final Executor zzb() {
        return this.zze;
    }
}
