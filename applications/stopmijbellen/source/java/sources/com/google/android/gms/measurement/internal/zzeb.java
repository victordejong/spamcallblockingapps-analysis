package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzbm;
import com.google.android.gms.internal.measurement.zzbo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeb.class */
public final class zzeb extends zzbm implements zzed {
    public zzeb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzd(zzas zzasVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzasVar);
        zzbo.zzd(zza, zzpVar);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zze(zzkq zzkqVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzkqVar);
        zzbo.zzd(zza, zzpVar);
        zzc(2, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzf(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzpVar);
        zzc(4, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzg(zzas zzasVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzh(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzpVar);
        zzc(6, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final List<zzkq> zzi(zzp zzpVar, boolean z) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzpVar);
        zzbo.zzb(zza, z);
        Parcel zzC = zzC(7, zza);
        ArrayList createTypedArrayList = zzC.createTypedArrayList(zzkq.CREATOR);
        zzC.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final byte[] zzj(zzas zzasVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzasVar);
        zza.writeString(str);
        Parcel zzC = zzC(9, zza);
        byte[] createByteArray = zzC.createByteArray();
        zzC.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzk(long j, String str, String str2, String str3) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zzc(10, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final String zzl(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzpVar);
        Parcel zzC = zzC(11, zza);
        String readString = zzC.readString();
        zzC.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzm(zzaa zzaaVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzaaVar);
        zzbo.zzd(zza, zzpVar);
        zzc(12, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzn(zzaa zzaaVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final List<zzkq> zzo(String str, String str2, boolean z, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbo.zzb(zza, z);
        zzbo.zzd(zza, zzpVar);
        Parcel zzC = zzC(14, zza);
        ArrayList createTypedArrayList = zzC.createTypedArrayList(zzkq.CREATOR);
        zzC.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final List<zzkq> zzp(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zza.writeString(str2);
        zza.writeString(str3);
        zzbo.zzb(zza, z);
        Parcel zzC = zzC(15, zza);
        ArrayList createTypedArrayList = zzC.createTypedArrayList(zzkq.CREATOR);
        zzC.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final List<zzaa> zzq(String str, String str2, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbo.zzd(zza, zzpVar);
        Parcel zzC = zzC(16, zza);
        ArrayList createTypedArrayList = zzC.createTypedArrayList(zzaa.CREATOR);
        zzC.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final List<zzaa> zzr(String str, String str2, String str3) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zza.writeString(str2);
        zza.writeString(str3);
        Parcel zzC = zzC(17, zza);
        ArrayList createTypedArrayList = zzC.createTypedArrayList(zzaa.CREATOR);
        zzC.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzs(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzpVar);
        zzc(18, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzt(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, bundle);
        zzbo.zzd(zza, zzpVar);
        zzc(19, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzed
    public final void zzu(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zzbo.zzd(zza, zzpVar);
        zzc(20, zza);
    }
}
