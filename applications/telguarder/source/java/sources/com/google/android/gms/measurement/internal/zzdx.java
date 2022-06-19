package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzc;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzdx.class */
public final class zzdx extends zza implements zzdz {
    public zzdx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzd(zzas zzasVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzasVar);
        zzc.zzd(zza, zzpVar);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zze(zzkg zzkgVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzkgVar);
        zzc.zzd(zza, zzpVar);
        zzc(2, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzf(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzpVar);
        zzc(4, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzg(zzas zzasVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzh(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzpVar);
        zzc(6, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final List<zzkg> zzi(zzp zzpVar, boolean z) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzpVar);
        zzc.zzb(zza, z);
        Parcel zzz = zzz(7, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzkg.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final byte[] zzj(zzas zzasVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzasVar);
        zza.writeString(str);
        Parcel zzz = zzz(9, zza);
        byte[] createByteArray = zzz.createByteArray();
        zzz.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzk(long j, String str, String str2, String str3) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zzc(10, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final String zzl(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzpVar);
        Parcel zzz = zzz(11, zza);
        String readString = zzz.readString();
        zzz.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzm(zzaa zzaaVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzaaVar);
        zzc.zzd(zza, zzpVar);
        zzc(12, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzn(zzaa zzaaVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final List<zzkg> zzo(String str, String str2, boolean z, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzb(zza, z);
        zzc.zzd(zza, zzpVar);
        Parcel zzz = zzz(14, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzkg.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final List<zzkg> zzp(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zza.writeString(str2);
        zza.writeString(str3);
        zzc.zzb(zza, z);
        Parcel zzz = zzz(15, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzkg.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final List<zzaa> zzq(String str, String str2, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzd(zza, zzpVar);
        Parcel zzz = zzz(16, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzaa.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final List<zzaa> zzr(String str, String str2, String str3) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zza.writeString(str2);
        zza.writeString(str3);
        Parcel zzz = zzz(17, zza);
        ArrayList createTypedArrayList = zzz.createTypedArrayList(zzaa.CREATOR);
        zzz.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzs(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzpVar);
        zzc(18, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzt(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zzc.zzd(zza, zzpVar);
        zzc(19, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzdz
    public final void zzu(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzpVar);
        zzc(20, zza);
    }
}
