package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgc.class */
public final class zzbgc extends zzadj implements zzbge {
    public zzbgc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zze() throws RemoteException {
        zzbj(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzf(float f) throws RemoteException {
        Parcel zza = zza();
        zza.writeFloat(f);
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzg(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzh(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzb(zza, z);
        zzbj(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzi(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzj(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final float zzk() throws RemoteException {
        Parcel zzbi = zzbi(7, zza());
        float readFloat = zzbi.readFloat();
        zzbi.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final boolean zzl() throws RemoteException {
        Parcel zzbi = zzbi(8, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final String zzm() throws RemoteException {
        Parcel zzbi = zzbi(9, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzn(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbj(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzo(zzbvg zzbvgVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbvgVar);
        zzbj(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzp(zzbrs zzbrsVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbrsVar);
        zzbj(12, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final List<zzbrl> zzq() throws RemoteException {
        Parcel zzbi = zzbi(13, zza());
        ArrayList createTypedArrayList = zzbi.createTypedArrayList(zzbrl.CREATOR);
        zzbi.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzr(zzbim zzbimVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbimVar);
        zzbj(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzs() throws RemoteException {
        zzbj(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzt(zzbgq zzbgqVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgqVar);
        zzbj(16, zza);
    }
}
