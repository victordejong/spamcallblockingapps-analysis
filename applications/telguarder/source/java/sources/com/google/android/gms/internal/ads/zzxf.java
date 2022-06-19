package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxf.class */
public final class zzxf extends zzgw implements zzxd {
    public zzxf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(2, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final boolean isLoading() throws RemoteException {
        Parcel zza = zza(3, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zza(zzvl zzvlVar, int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvlVar);
        zzdo.writeInt(i);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zzb(zzvl zzvlVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvlVar);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String zzkh() throws RemoteException {
        Parcel zza = zza(4, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
