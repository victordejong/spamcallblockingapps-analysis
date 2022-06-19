package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduc.class */
public final class zzduc extends zzboy {
    private final String zza;
    private final zzdpx zzb;
    private final zzdqc zzc;

    public zzduc(String str, zzdpx zzdpxVar, zzdqc zzdqcVar) {
        this.zza = str;
        this.zzb = zzdpxVar;
        this.zzc = zzdqcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final Bundle zzb() throws RemoteException {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final zzbiz zzc() throws RemoteException {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final zzboa zzd() throws RemoteException {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final zzboi zze() throws RemoteException {
        return this.zzc.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final IObjectWrapper zzf() throws RemoteException {
        return this.zzc.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final IObjectWrapper zzg() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final String zzh() throws RemoteException {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final String zzi() throws RemoteException {
        return this.zzc.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final String zzj() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final String zzk() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final String zzl() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final List<?> zzm() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final void zzn() throws RemoteException {
        this.zzb.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final void zzo(Bundle bundle) throws RemoteException {
        this.zzb.zzz(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final void zzp(Bundle bundle) throws RemoteException {
        this.zzb.zzE(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzboz
    public final boolean zzq(Bundle bundle) throws RemoteException {
        return this.zzb.zzQ(bundle);
    }
}
