package com.google.android.gms.internal.e;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/e.class */
public final class e extends a implements c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    @Override // com.google.android.gms.internal.e.c
    public final Tile getTile(int i, int i2, int i3) throws RemoteException {
        Parcel N_ = N_();
        N_.writeInt(i);
        N_.writeInt(i2);
        N_.writeInt(i3);
        Parcel a2 = a(1, N_);
        Tile tile = (Tile) g.a(a2, Tile.CREATOR);
        a2.recycle();
        return tile;
    }
}
