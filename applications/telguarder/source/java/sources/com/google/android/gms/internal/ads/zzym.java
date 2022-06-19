package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzym.class */
public abstract class zzym extends zzgy implements zzyj {
    public zzym() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    public static zzyj zzf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
        return queryLocalInterface instanceof zzyj ? (zzyj) queryLocalInterface : new zzyl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onAdMuted();
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
