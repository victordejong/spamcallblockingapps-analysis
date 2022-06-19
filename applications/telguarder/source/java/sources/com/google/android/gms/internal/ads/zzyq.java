package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyq.class */
public abstract class zzyq extends zzgy implements zzyn {
    public zzyq() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    public static zzyn zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return queryLocalInterface instanceof zzyn ? (zzyn) queryLocalInterface : new zzyp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String description = getDescription();
            parcel2.writeNoException();
            parcel2.writeString(description);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            String zzre = zzre();
            parcel2.writeNoException();
            parcel2.writeString(zzre);
            return true;
        }
    }
}
