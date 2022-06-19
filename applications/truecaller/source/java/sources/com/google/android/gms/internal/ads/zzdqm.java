package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqm.class */
public final class zzdqm extends zzbmx {
    private final String zza;
    private final zzdmh zzb;
    private final zzdmm zzc;

    public zzdqm(String str, zzdmh zzdmhVar, zzdmm zzdmmVar) {
        this.zza = str;
        this.zzb = zzdmhVar;
        this.zzc = zzdmmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final IObjectWrapper zzb() throws RemoteException {
        return new ObjectWrapper(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final String zzc() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final List<?> zzd() throws RemoteException {
        return this.zzc.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final String zze() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final zzbmh zzf() throws RemoteException {
        return this.zzc.zzP();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final String zzg() throws RemoteException {
        return this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final String zzh() throws RemoteException {
        return this.zzc.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final Bundle zzi() throws RemoteException {
        return this.zzc.zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zzj() throws RemoteException {
        this.zzb.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final zzbhc zzk() throws RemoteException {
        return this.zzc.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zzl(Bundle bundle) throws RemoteException {
        this.zzb.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final boolean zzm(Bundle bundle) throws RemoteException {
        return this.zzb.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zzn(Bundle bundle) throws RemoteException {
        this.zzb.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final zzblz zzo() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final IObjectWrapper zzp() throws RemoteException {
        return this.zzc.zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final String zzq() throws RemoteException {
        return this.zza;
    }
}
