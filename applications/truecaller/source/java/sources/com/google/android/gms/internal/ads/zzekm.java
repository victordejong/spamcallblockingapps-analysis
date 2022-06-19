package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekm.class */
public final class zzekm extends zzbff {
    private final zzelt zza;

    public zzekm(Context context, zzcoj zzcojVar, zzfap zzfapVar, zzdmx zzdmxVar, zzbfa zzbfaVar) {
        zzelv zzelvVar = new zzelv(zzdmxVar, zzcojVar.zzd());
        zzelvVar.zza(zzbfaVar);
        this.zza = new zzelt(new zzemf(zzcojVar, context, zzelvVar, zzfapVar), zzfapVar.zzx());
    }

    @Override // com.google.android.gms.internal.ads.zzbfg
    public final void zze(zzbdg zzbdgVar) throws RemoteException {
        this.zza.zzc(zzbdgVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbfg
    public final String zzf() {
        String zzd;
        synchronized (this) {
            zzd = this.zza.zzd();
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbfg
    public final boolean zzg() throws RemoteException {
        boolean zzb;
        synchronized (this) {
            zzb = this.zza.zzb();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfg
    public final String zzh() {
        String zze;
        synchronized (this) {
            zze = this.zza.zze();
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbfg
    public final void zzi(zzbdg zzbdgVar, int i) throws RemoteException {
        synchronized (this) {
            this.zza.zzc(zzbdgVar, i);
        }
    }
}
