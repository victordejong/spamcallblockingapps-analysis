package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffw.class */
public final class zzffw extends zzadj implements zzffy {
    public zzffw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final boolean zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        Parcel zzbi = zzbi(2, zza);
        boolean zza2 = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final void zzg(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, iObjectWrapper2);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final String zzh() throws RemoteException {
        Parcel zzbi = zzbi(6, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final void zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, iObjectWrapper2);
        zzbj(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final IObjectWrapper zzk(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeString("");
        zza.writeString("javascript");
        zza.writeString(str4);
        zza.writeString(str5);
        zza.writeString(str6);
        zza.writeString(str7);
        zza.writeString(str8);
        return C22128a.m8608j1(zzbi(10, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final IObjectWrapper zzl(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeString("");
        zza.writeString("javascript");
        zza.writeString(str4);
        zza.writeString("Google");
        zza.writeString(str6);
        zza.writeString(str7);
        zza.writeString(str8);
        return C22128a.m8608j1(zzbi(11, zza));
    }
}
