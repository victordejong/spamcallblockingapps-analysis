package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyj.class */
public final class zzbyj extends zzbxm {
    private final Adapter zza;
    private final zzcer zzb;

    public zzbyj(Adapter adapter, zzcer zzcerVar) {
        this.zza = adapter;
        this.zzb = zzcerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zze() throws RemoteException {
        zzcer zzcerVar = this.zzb;
        if (zzcerVar != null) {
            zzcerVar.zze(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzf() throws RemoteException {
        zzcer zzcerVar = this.zzb;
        if (zzcerVar != null) {
            zzcerVar.zzf(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzg(int i) throws RemoteException {
        zzcer zzcerVar = this.zzb;
        if (zzcerVar != null) {
            zzcerVar.zzg(ObjectWrapper.wrap(this.zza), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzh(zzbew zzbewVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzi(int i, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzj(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzk(zzbew zzbewVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzm() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzn() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzo() throws RemoteException {
        zzcer zzcerVar = this.zzb;
        if (zzcerVar != null) {
            zzcerVar.zzi(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzp() throws RemoteException {
        zzcer zzcerVar = this.zzb;
        if (zzcerVar != null) {
            zzcerVar.zzj(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzq(String str, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzr(zzbpc zzbpcVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzs(zzces zzcesVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzt(zzcew zzcewVar) throws RemoteException {
        zzcer zzcerVar = this.zzb;
        if (zzcerVar != null) {
            zzcerVar.zzm(ObjectWrapper.wrap(this.zza), new zzces(zzcewVar.zzf(), zzcewVar.zze()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzu() throws RemoteException {
        zzcer zzcerVar = this.zzb;
        if (zzcerVar != null) {
            zzcerVar.zzn(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzv() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzw() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzx() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzy() throws RemoteException {
        zzcer zzcerVar = this.zzb;
        if (zzcerVar != null) {
            zzcerVar.zzo(ObjectWrapper.wrap(this.zza));
        }
    }
}
