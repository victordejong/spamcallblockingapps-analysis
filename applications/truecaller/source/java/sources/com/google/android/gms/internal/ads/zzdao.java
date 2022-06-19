package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdao.class */
public final class zzdao {
    private final Context zza;
    private final zzfar zzb;
    private final Bundle zzc;
    private final zzfam zzd;

    public /* synthetic */ zzdao(zzdam zzdamVar, zzdan zzdanVar) {
        Context context;
        zzfar zzfarVar;
        Bundle bundle;
        zzfam zzfamVar;
        context = zzdamVar.zza;
        this.zza = context;
        zzfarVar = zzdamVar.zzb;
        this.zzb = zzfarVar;
        bundle = zzdamVar.zzc;
        this.zzc = bundle;
        zzfamVar = zzdamVar.zzd;
        this.zzd = zzfamVar;
    }

    public final zzdam zza() {
        zzdam zzdamVar = new zzdam();
        zzdamVar.zze(this.zza);
        zzdamVar.zzf(this.zzb);
        zzdamVar.zzg(this.zzc);
        return zzdamVar;
    }

    public final zzfar zzb() {
        return this.zzb;
    }

    public final zzfam zzc() {
        return this.zzd;
    }

    public final Bundle zzd() {
        return this.zzc;
    }

    public final Context zze(Context context) {
        return this.zza;
    }
}
