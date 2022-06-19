package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/maps/zzag.class */
public abstract class zzag extends zzb implements zzaf {
    public zzag() {
        super("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    public static zzaf zzk(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        return queryLocalInterface instanceof zzaf ? (zzaf) queryLocalInterface : new zzah(iBinder);
    }

    @Override // com.google.android.gms.internal.maps.zzb
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            Tile tile = getTile(parcel.readInt(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            zzc.zzb(parcel2, tile);
            return true;
        }
        return false;
    }
}
