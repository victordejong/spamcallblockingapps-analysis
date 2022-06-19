package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtx.class */
public final class zzbtx {
    private final Object zza = new Object();
    private final Object zzb = new Object();
    private zzbug zzc;
    private zzbug zzd;

    private static final Context zzc(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final zzbug zza(Context context, zzcgz zzcgzVar) {
        zzbug zzbugVar;
        synchronized (this.zzb) {
            if (this.zzd == null) {
                this.zzd = new zzbug(zzc(context), zzcgzVar, zzblg.zzb.zze());
            }
            zzbugVar = this.zzd;
        }
        return zzbugVar;
    }

    public final zzbug zzb(Context context, zzcgz zzcgzVar) {
        zzbug zzbugVar;
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = new zzbug(zzc(context), zzcgzVar, (String) zzbet.zzc().zzc(zzbjl.zza));
            }
            zzbugVar = this.zzc;
        }
        return zzbugVar;
    }
}
