package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeao.class */
public final class zzeao implements zzdzy {
    private final long zza;
    private final String zzb;
    private final zzead zzc;
    private final zzfde zzd;

    public zzeao(long j, Context context, zzead zzeadVar, zzcqm zzcqmVar, String str) {
        this.zza = j;
        this.zzb = str;
        this.zzc = zzeadVar;
        zzfdg zzx = zzcqmVar.zzx();
        zzx.zzb(context);
        zzx.zza(str);
        this.zzd = zzx.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdzy
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzdzy
    public final void zzb(zzbfd zzbfdVar) {
        try {
            this.zzd.zzf(zzbfdVar, new zzeam(this));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzy
    public final void zzc() {
        try {
            this.zzd.zzk(new zzean(this));
            this.zzd.zzm(ObjectWrapper.wrap(null));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }
}
