package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsv.class */
public final class zzdsv extends zzgw implements zzdst {
    public zzdsv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final String getVersion() throws RemoteException {
        Parcel zza = zza(6, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final IObjectWrapper zza(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str2);
        zzdo.writeString(str3);
        zzdo.writeString(str4);
        zzdo.writeString(str5);
        Parcel zza = zza(9, zzdo);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final IObjectWrapper zza(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str2);
        zzdo.writeString(str3);
        zzdo.writeString(str4);
        zzdo.writeString(str5);
        zzdo.writeString(str6);
        zzdo.writeString(str7);
        zzdo.writeString(str8);
        Parcel zza = zza(10, zzdo);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final void zzab(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final void zzac(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final boolean zzav(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        Parcel zza = zza(2, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final IObjectWrapper zzb(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str2);
        zzdo.writeString(str3);
        zzdo.writeString(str4);
        zzdo.writeString(str5);
        zzdo.writeString(str6);
        zzdo.writeString(str7);
        zzdo.writeString(str8);
        Parcel zza = zza(11, zzdo);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, iObjectWrapper2);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final void zzd(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, iObjectWrapper2);
        zzb(8, zzdo);
    }
}
