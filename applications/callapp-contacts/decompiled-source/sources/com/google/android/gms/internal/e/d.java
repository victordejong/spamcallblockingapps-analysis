package com.google.android.gms.internal.e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/d.class */
public abstract class d extends f implements c {
    public d() {
        super("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    public static c zzk(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        return queryLocalInterface instanceof c ? (c) queryLocalInterface : new e(iBinder);
    }

    @Override // com.google.android.gms.internal.e.f
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        Tile tile = getTile(parcel.readInt(), parcel.readInt(), parcel.readInt());
        parcel2.writeNoException();
        g.b(parcel2, tile);
        return true;
    }
}
