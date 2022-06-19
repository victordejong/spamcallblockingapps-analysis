package com.google.android.gms.internal.p359e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;
/* renamed from: com.google.android.gms.internal.e.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/d.class */
public abstract class AbstractBinderC13285d extends BinderC13287f implements AbstractC13284c {
    public AbstractBinderC13285d() {
        super("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    public static AbstractC13284c zzk(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        return queryLocalInterface instanceof AbstractC13284c ? (AbstractC13284c) queryLocalInterface : new C13286e(iBinder);
    }

    @Override // com.google.android.gms.internal.p359e.BinderC13287f
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            Tile tile = getTile(parcel.readInt(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            C13288g.m13487b(parcel2, tile);
            return true;
        }
        return false;
    }
}
