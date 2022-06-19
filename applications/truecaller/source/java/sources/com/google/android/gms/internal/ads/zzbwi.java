package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwi.class */
public final class zzbwi extends zzbvl {
    private final Adapter zza;
    private final zzcck zzb;

    public zzbwi(Adapter adapter, zzcck zzcckVar) {
        this.zza = adapter;
        this.zzb = zzcckVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zze() throws RemoteException {
        zzcck zzcckVar = this.zzb;
        if (zzcckVar != null) {
            zzcckVar.zzl(new ObjectWrapper(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzf() throws RemoteException {
        zzcck zzcckVar = this.zzb;
        if (zzcckVar != null) {
            zzcckVar.zzj(new ObjectWrapper(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzg(int i) throws RemoteException {
        zzcck zzcckVar = this.zzb;
        if (zzcckVar != null) {
            zzcckVar.zzm(new ObjectWrapper(this.zza), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzh() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzi() throws RemoteException {
        zzcck zzcckVar = this.zzb;
        if (zzcckVar != null) {
            zzcckVar.zzh(new ObjectWrapper(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzj() throws RemoteException {
        zzcck zzcckVar = this.zzb;
        if (zzcckVar != null) {
            zzcckVar.zzg(new ObjectWrapper(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzk() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzl(String str, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzm(zzbnb zzbnbVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzn() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzo() throws RemoteException {
        zzcck zzcckVar = this.zzb;
        if (zzcckVar != null) {
            zzcckVar.zzi(new ObjectWrapper(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzp(zzccl zzcclVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzq() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzr(zzccp zzccpVar) throws RemoteException {
        zzcck zzcckVar = this.zzb;
        if (zzcckVar != null) {
            zzcckVar.zzk(new ObjectWrapper(this.zza), new zzccl(zzccpVar.zze(), zzccpVar.zzf()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzs(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzt() throws RemoteException {
        zzcck zzcckVar = this.zzb;
        if (zzcckVar != null) {
            zzcckVar.zzo(new ObjectWrapper(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzu() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzv(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzw(int i, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzx(zzbcz zzbczVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzy(zzbcz zzbczVar) {
    }
}
