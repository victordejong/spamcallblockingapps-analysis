package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbis.class */
public abstract class zzbis extends zzaok implements zzbit {
    public zzbis() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    public static zzbit zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        return queryLocalInterface instanceof zzbit ? (zzbit) queryLocalInterface : new zzbir(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zze((zzbfk) zzaol.zza(parcel, zzbfk.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
