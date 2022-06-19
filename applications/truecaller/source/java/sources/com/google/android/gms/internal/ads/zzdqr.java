package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqr.class */
public final class zzdqr extends zzbod {
    private final String zza;
    private final zzdmh zzb;
    private final zzdmm zzc;

    public zzdqr(String str, zzdmh zzdmhVar, zzdmm zzdmmVar) {
        this.zza = str;
        this.zzb = zzdmhVar;
        this.zzc = zzdmmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final boolean zzA() throws RemoteException {
        return !this.zzc.zzC().isEmpty() && this.zzc.zzD() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzB(zzbgm zzbgmVar) throws RemoteException {
        this.zzb.zzx(zzbgmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzC(zzbgi zzbgiVar) throws RemoteException {
        this.zzb.zzy(zzbgiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzD() {
        this.zzb.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzE() {
        this.zzb.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzbme zzF() throws RemoteException {
        return this.zzb.zzJ().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final boolean zzG() {
        return this.zzb.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzbgz zzH() throws RemoteException {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfb)).booleanValue()) {
            return null;
        }
        return this.zzb.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzI(zzbgw zzbgwVar) throws RemoteException {
        this.zzb.zzK(zzbgwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zze() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final List<?> zzf() throws RemoteException {
        return this.zzc.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzg() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzbmh zzh() throws RemoteException {
        return this.zzc.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzi() throws RemoteException {
        return this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzj() throws RemoteException {
        return this.zzc.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final double zzk() throws RemoteException {
        return this.zzc.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzl() throws RemoteException {
        return this.zzc.zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzm() throws RemoteException {
        return this.zzc.zzL();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzbhc zzn() throws RemoteException {
        return this.zzc.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzo() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzp() throws RemoteException {
        this.zzb.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzblz zzq() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzr(Bundle bundle) throws RemoteException {
        this.zzb.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final boolean zzs(Bundle bundle) throws RemoteException {
        return this.zzb.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzt(Bundle bundle) throws RemoteException {
        this.zzb.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final IObjectWrapper zzu() throws RemoteException {
        return new ObjectWrapper(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final IObjectWrapper zzv() throws RemoteException {
        return this.zzc.zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final Bundle zzw() throws RemoteException {
        return this.zzc.zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzx(zzbob zzbobVar) throws RemoteException {
        this.zzb.zzv(zzbobVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzy() throws RemoteException {
        this.zzb.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final List<?> zzz() throws RemoteException {
        return zzA() ? this.zzc.zzC() : Collections.emptyList();
    }
}
