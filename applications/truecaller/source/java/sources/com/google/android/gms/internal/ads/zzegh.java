package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegh.class */
public final class zzegh implements zzdkn {
    private final zzezz zza;
    private final zzbxn zzb;
    private final boolean zzc;
    private zzdbu zzd = null;

    public zzegh(zzezz zzezzVar, zzbxn zzbxnVar, boolean z) {
        this.zza = zzezzVar;
        this.zzb = zzbxnVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final void zza(boolean z, Context context, zzdbp zzdbpVar) throws zzdkm {
        try {
            if (!(this.zzc ? this.zzb.zzm(new ObjectWrapper(context)) : this.zzb.zzk(new ObjectWrapper(context)))) {
                throw new zzdkm("Adapter failed to show.");
            }
            if (this.zzd == null) {
                return;
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzba)).booleanValue() || this.zza.zzU != 2) {
                return;
            }
            this.zzd.zza();
        } catch (Throwable th) {
            throw new zzdkm(th);
        }
    }

    public final void zzb(zzdbu zzdbuVar) {
        this.zzd = zzdbuVar;
    }
}
