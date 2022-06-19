package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdua.class */
public final class zzdua extends zzbow {
    private final String zza;
    private final zzdpx zzb;
    private final zzdqc zzc;

    public zzdua(String str, zzdpx zzdpxVar, zzdqc zzdqcVar) {
        this.zza = str;
        this.zzb = zzdpxVar;
        this.zzc = zzdqcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final double zzb() throws RemoteException {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final Bundle zzc() throws RemoteException {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final zzbiz zzd() throws RemoteException {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final zzboa zze() throws RemoteException {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final zzboi zzf() throws RemoteException {
        return this.zzc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final IObjectWrapper zzg() throws RemoteException {
        return this.zzc.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final IObjectWrapper zzh() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final String zzi() throws RemoteException {
        return this.zzc.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final String zzj() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final String zzk() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final String zzl() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final String zzm() throws RemoteException {
        return this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final String zzn() throws RemoteException {
        return this.zzc.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final List<?> zzo() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final void zzp() throws RemoteException {
        this.zzb.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final void zzq(Bundle bundle) throws RemoteException {
        this.zzb.zzz(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final void zzr(Bundle bundle) throws RemoteException {
        this.zzb.zzE(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbox
    public final boolean zzs(Bundle bundle) throws RemoteException {
        return this.zzb.zzQ(bundle);
    }
}
