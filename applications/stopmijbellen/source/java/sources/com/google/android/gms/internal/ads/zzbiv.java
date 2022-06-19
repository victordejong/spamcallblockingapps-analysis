package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiv.class */
public abstract class zzbiv extends zzaok implements zzbiw {
    public zzbiv() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    public static zzbiw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        return queryLocalInterface instanceof zzbiw ? (zzbiw) queryLocalInterface : new zzbiu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String zze = zze();
            parcel2.writeNoException();
            parcel2.writeString(zze);
            return true;
        } else if (i == 2) {
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<zzbfm> zzg = zzg();
            parcel2.writeNoException();
            parcel2.writeTypedList(zzg);
            return true;
        }
    }
}
