package com.google.android.gms.internal.auth_api_phone;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.internal.auth-api-phone.zzf;
import com.google.android.gms.internal.auth-api-phone.zzh;
import com.google.android.gms.internal.auth-api-phone.zzj;
import com.google.android.gms.internal.auth-api-phone.zzl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzi.class */
public final class zzi extends zzb implements zzj {
    public zzi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
    }

    public final void zza(IStatusCallback iStatusCallback) throws RemoteException {
        Parcel zza = zza();
        zzd.zza(zza, iStatusCallback);
        zza(3, zza);
    }

    public final void zza(zzf zzfVar) throws RemoteException {
        Parcel zza = zza();
        zzd.zza(zza, (IInterface) zzfVar);
        zza(4, zza);
    }

    public final void zza(zzl zzlVar) throws RemoteException {
        Parcel zza = zza();
        zzd.zza(zza, (IInterface) zzlVar);
        zza(1, zza);
    }

    public final void zza(String str, zzh zzhVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzd.zza(zza, (IInterface) zzhVar);
        zza(5, zza);
    }

    public final void zza(String str, zzl zzlVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzd.zza(zza, (IInterface) zzlVar);
        zza(2, zza);
    }
}
