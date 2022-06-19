package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduh.class */
public final class zzduh extends zzbqe {
    private final String zza;
    private final zzdpx zzb;
    private final zzdqc zzc;

    public zzduh(String str, zzdpx zzdpxVar, zzdqc zzdqcVar) {
        this.zza = str;
        this.zzb = zzdpxVar;
        this.zzc = zzdqcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzA() {
        this.zzb.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzB(Bundle bundle) throws RemoteException {
        this.zzb.zzE(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzC() {
        this.zzb.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzD(zzbif zzbifVar) throws RemoteException {
        this.zzb.zzH(zzbifVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzE(zzbit zzbitVar) throws RemoteException {
        this.zzb.zzI(zzbitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzF(zzbqc zzbqcVar) throws RemoteException {
        this.zzb.zzJ(zzbqcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final boolean zzG() {
        return this.zzb.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final boolean zzH() throws RemoteException {
        return !this.zzc.zzF().isEmpty() && this.zzc.zzk() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final boolean zzI(Bundle bundle) throws RemoteException {
        return this.zzb.zzQ(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final double zze() throws RemoteException {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final Bundle zzf() throws RemoteException {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzbiw zzg() throws RemoteException {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfi)).booleanValue()) {
            return null;
        }
        return this.zzb.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzbiz zzh() throws RemoteException {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzboa zzi() throws RemoteException {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzbof zzj() throws RemoteException {
        return this.zzb.zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzboi zzk() throws RemoteException {
        return this.zzc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final IObjectWrapper zzl() throws RemoteException {
        return this.zzc.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final IObjectWrapper zzm() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzn() throws RemoteException {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzo() throws RemoteException {
        return this.zzc.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzp() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzq() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzr() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzs() throws RemoteException {
        return this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzt() throws RemoteException {
        return this.zzc.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final List<?> zzu() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final List<?> zzv() throws RemoteException {
        return zzH() ? this.zzc.zzF() : Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzw() throws RemoteException {
        this.zzb.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzx() throws RemoteException {
        this.zzb.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzy(zzbij zzbijVar) throws RemoteException {
        this.zzb.zzw(zzbijVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzz(Bundle bundle) throws RemoteException {
        this.zzb.zzz(bundle);
    }
}
