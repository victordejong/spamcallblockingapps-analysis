package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanh.class */
public abstract class zzanh extends zzgy implements zzane {
    public zzanh() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzane zzac(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof zzane ? (zzane) queryLocalInterface : new zzang(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzanj zzdd = zzdd(parcel.readString());
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzdd);
            return true;
        } else if (i == 2) {
            boolean zzde = zzde(parcel.readString());
            parcel2.writeNoException();
            zzgx.writeBoolean(parcel2, zzde);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            zzapk zzdf = zzdf(parcel.readString());
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzdf);
            return true;
        }
    }
}
