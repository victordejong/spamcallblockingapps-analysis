package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzded.class */
public final class zzded {
    private final Context zza;
    private final zzfef zzb;
    private final Bundle zzc;
    private final zzfea zzd;

    public /* synthetic */ zzded(zzdeb zzdebVar, zzdec zzdecVar) {
        Context context;
        zzfef zzfefVar;
        Bundle bundle;
        zzfea zzfeaVar;
        context = zzdebVar.zza;
        this.zza = context;
        zzfefVar = zzdebVar.zzb;
        this.zzb = zzfefVar;
        bundle = zzdebVar.zzc;
        this.zzc = bundle;
        zzfeaVar = zzdebVar.zzd;
        this.zzd = zzfeaVar;
    }

    public final Context zza(Context context) {
        return this.zza;
    }

    public final Bundle zzb() {
        return this.zzc;
    }

    public final zzdeb zzc() {
        zzdeb zzdebVar = new zzdeb();
        zzdebVar.zzc(this.zza);
        zzdebVar.zzf(this.zzb);
        zzdebVar.zzd(this.zzc);
        return zzdebVar;
    }

    public final zzfea zzd() {
        return this.zzd;
    }

    public final zzfef zze() {
        return this.zzb;
    }
}
