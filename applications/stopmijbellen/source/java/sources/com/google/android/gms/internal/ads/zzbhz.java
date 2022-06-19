package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhz.class */
public final class zzbhz extends zzaoj implements zzbib {
    public zzbhz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final float zze() throws RemoteException {
        Parcel zzbs = zzbs(7, zza());
        float readFloat = zzbs.readFloat();
        zzbs.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final String zzf() throws RemoteException {
        Parcel zzbs = zzbs(9, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final List<zzbtn> zzg() throws RemoteException {
        Parcel zzbs = zzbs(13, zza());
        ArrayList createTypedArrayList = zzbs.createTypedArrayList(zzbtn.CREATOR);
        zzbs.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzh(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbt(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzi() throws RemoteException {
        zzbt(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzj() throws RemoteException {
        zzbt(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzk(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzl(zzbin zzbinVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbinVar);
        zzbt(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzm(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzn(zzbxh zzbxhVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbxhVar);
        zzbt(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzo(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzc(zza, z);
        zzbt(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzp(float f) throws RemoteException {
        Parcel zza = zza();
        zza.writeFloat(f);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzq(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzr(zzbtu zzbtuVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbtuVar);
        zzbt(12, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzs(zzbkk zzbkkVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbkkVar);
        zzbt(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final boolean zzt() throws RemoteException {
        Parcel zzbs = zzbs(8, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
