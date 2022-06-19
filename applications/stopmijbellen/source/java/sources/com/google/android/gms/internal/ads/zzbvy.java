package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvy.class */
public final class zzbvy {
    private final Object zza = new Object();
    private final Object zzb = new Object();
    @GuardedBy("lockClient")
    private zzbwh zzc;
    @GuardedBy("lockService")
    private zzbwh zzd;

    private static final Context zzc(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final zzbwh zza(Context context, zzcjf zzcjfVar) {
        zzbwh zzbwhVar;
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = new zzbwh(zzc(context), zzcjfVar, (String) zzbgq.zzc().zzb(zzblj.zza));
            }
            zzbwhVar = this.zzc;
        }
        return zzbwhVar;
    }

    public final zzbwh zzb(Context context, zzcjf zzcjfVar) {
        zzbwh zzbwhVar;
        synchronized (this.zzb) {
            if (this.zzd == null) {
                this.zzd = new zzbwh(zzc(context), zzcjfVar, zzbnf.zzb.zze());
            }
            zzbwhVar = this.zzd;
        }
        return zzbwhVar;
    }
}
