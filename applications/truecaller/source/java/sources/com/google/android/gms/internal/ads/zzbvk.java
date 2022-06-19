package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvk.class */
public final class zzbvk extends zzadj implements zzbvm {
    public zzbvk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zze() throws RemoteException {
        zzbj(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzf() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzg(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbj(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzh() throws RemoteException {
        zzbj(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzi() throws RemoteException {
        zzbj(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzj() throws RemoteException {
        zzbj(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzk() throws RemoteException {
        zzbj(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzl(String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbj(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzm(zzbnb zzbnbVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbnbVar);
        zza.writeString(str);
        zzbj(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzn() throws RemoteException {
        zzbj(11, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzo() throws RemoteException {
        zzbj(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzp(zzccl zzcclVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzq() throws RemoteException {
        zzbj(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzr(zzccp zzccpVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzccpVar);
        zzbj(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzs(int i) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzt() throws RemoteException {
        zzbj(18, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzu() throws RemoteException {
        zzbj(20, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzv(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbj(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzw(int i, String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeString(str);
        zzbj(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzx(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzy(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(24, zza);
    }
}
