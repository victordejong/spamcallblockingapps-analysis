package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatj.class */
public final class zzatj extends zzgw implements zzath {
    public zzatj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final zzatd zza(zzatb zzatbVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatbVar);
        Parcel zza = zza(1, zzdo);
        zzatd zzatdVar = (zzatd) zzgx.zza(zza, zzatd.CREATOR);
        zza.recycle();
        return zzatdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(zzatb zzatbVar, zzati zzatiVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatbVar);
        zzgx.zza(zzdo, zzatiVar);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(zzatq zzatqVar, zzatk zzatkVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatqVar);
        zzgx.zza(zzdo, zzatkVar);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(String str, zzatk zzatkVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzatkVar);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zzb(zzatq zzatqVar, zzatk zzatkVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatqVar);
        zzgx.zza(zzdo, zzatkVar);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zzc(zzatq zzatqVar, zzatk zzatkVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatqVar);
        zzgx.zza(zzdo, zzatkVar);
        zzb(6, zzdo);
    }
}
