package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfju.class */
public final class zzfju extends zzaoj implements zzfjw {
    public zzfju(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.zzfjw
    public final IObjectWrapper zze(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeString("");
        zza.writeString("javascript");
        zza.writeString(str4);
        zza.writeString("Google");
        zza.writeString(str6);
        zza.writeString(str7);
        zza.writeString(str8);
        return C0033h.m8887j(zzbs(11, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzfjw
    public final IObjectWrapper zzf(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeString("");
        zza.writeString("javascript");
        zza.writeString(str4);
        zza.writeString(str5);
        zza.writeString(str6);
        zza.writeString(str7);
        zza.writeString(str8);
        return C0033h.m8887j(zzbs(10, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzfjw
    public final String zzg() throws RemoteException {
        Parcel zzbs = zzbs(6, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzfjw
    public final void zzh(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, iObjectWrapper2);
        zzbt(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfjw
    public final void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfjw
    public final void zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, iObjectWrapper2);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfjw
    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfjw
    public final boolean zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        Parcel zzbs = zzbs(2, zza);
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
