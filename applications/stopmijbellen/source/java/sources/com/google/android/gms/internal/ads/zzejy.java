package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejy.class */
final class zzejy implements zzdob {
    private final zzfdn zza;
    private final zzbzo zzb;
    private final boolean zzc;
    private zzdfj zzd = null;

    public zzejy(zzfdn zzfdnVar, zzbzo zzbzoVar, boolean z) {
        this.zza = zzfdnVar;
        this.zzb = zzbzoVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    public final void zza(boolean z, Context context, zzdfe zzdfeVar) throws zzdoa {
        try {
            if (!(this.zzc ? this.zzb.zzr(ObjectWrapper.wrap(context)) : this.zzb.zzq(ObjectWrapper.wrap(context)))) {
                throw new zzdoa("Adapter failed to show.");
            }
            if (this.zzd == null) {
                return;
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbg)).booleanValue() || this.zza.zzV != 2) {
                return;
            }
            this.zzd.zza();
        } catch (Throwable th) {
            throw new zzdoa(th);
        }
    }

    public final void zzb(zzdfj zzdfjVar) {
        this.zzd = zzdfjVar;
    }
}
