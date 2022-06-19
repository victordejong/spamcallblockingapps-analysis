package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxl.class */
public final class zzbxl extends zzaoj implements zzbxn {
    public zzbxl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zze() throws RemoteException {
        zzbt(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzf() throws RemoteException {
        zzbt(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzg(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzh(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzi(int i, String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeString(str);
        zzbt(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzj(int i) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzk(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(24, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzl(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbt(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzm() throws RemoteException {
        zzbt(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzn() throws RemoteException {
        zzbt(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzo() throws RemoteException {
        zzbt(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzp() throws RemoteException {
        zzbt(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzq(String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbt(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzr(zzbpc zzbpcVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbpcVar);
        zza.writeString(str);
        zzbt(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzs(zzces zzcesVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzt(zzcew zzcewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzcewVar);
        zzbt(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzu() throws RemoteException {
        zzbt(18, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzv() throws RemoteException {
        zzbt(11, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzw() throws RemoteException {
        zzbt(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzx() throws RemoteException {
        zzbt(20, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzy() throws RemoteException {
        zzbt(13, zza());
    }
}
