package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyv.class */
public abstract class zzyv extends zzgy implements zzyw {
    public zzyv() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    public static zzyw zzi(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        return queryLocalInterface instanceof zzyw ? (zzyw) queryLocalInterface : new zzyy(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((zzvu) zzgx.zza(parcel, zzvu.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
