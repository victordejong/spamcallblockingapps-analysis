package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqk.class */
public final class zzdqk extends zzbmv {
    private final String zza;
    private final zzdmh zzb;
    private final zzdmm zzc;

    public zzdqk(String str, zzdmh zzdmhVar, zzdmm zzdmmVar) {
        this.zza = str;
        this.zzb = zzdmhVar;
        this.zzc = zzdmmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final IObjectWrapper zzb() throws RemoteException {
        return new ObjectWrapper(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final String zzc() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final List<?> zzd() throws RemoteException {
        return this.zzc.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final String zze() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final zzbmh zzf() throws RemoteException {
        return this.zzc.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final String zzg() throws RemoteException {
        return this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final double zzh() throws RemoteException {
        return this.zzc.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final String zzi() throws RemoteException {
        return this.zzc.zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final String zzj() throws RemoteException {
        return this.zzc.zzL();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final Bundle zzk() throws RemoteException {
        return this.zzc.zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final void zzl() throws RemoteException {
        this.zzb.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final zzbhc zzm() throws RemoteException {
        return this.zzc.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final void zzn(Bundle bundle) throws RemoteException {
        this.zzb.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final boolean zzo(Bundle bundle) throws RemoteException {
        return this.zzb.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final void zzp(Bundle bundle) throws RemoteException {
        this.zzb.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final zzblz zzq() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final IObjectWrapper zzr() throws RemoteException {
        return this.zzc.zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final String zzs() throws RemoteException {
        return this.zza;
    }
}
