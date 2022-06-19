package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnz.class */
public abstract class zzbnz extends zzaok implements zzboa {
    public zzbnz() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    public static zzboa zzj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return queryLocalInterface instanceof zzboa ? (zzboa) queryLocalInterface : new zzbny(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            String zzg = zzg();
            parcel2.writeNoException();
            parcel2.writeString(zzg);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<zzboi> zzh = zzh();
            parcel2.writeNoException();
            parcel2.writeList(zzh);
            return true;
        }
    }
}
