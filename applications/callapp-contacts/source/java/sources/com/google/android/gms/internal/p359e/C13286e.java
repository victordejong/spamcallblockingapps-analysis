package com.google.android.gms.internal.p359e;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;
/* renamed from: com.google.android.gms.internal.e.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/e.class */
public final class C13286e extends C13282a implements AbstractC13284c {
    public C13286e(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13284c
    public final Tile getTile(int i, int i2, int i3) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeInt(i);
        m13502N_.writeInt(i2);
        m13502N_.writeInt(i3);
        Parcel m13501a = m13501a(1, m13502N_);
        Tile tile = (Tile) C13288g.m13490a(m13501a, Tile.CREATOR);
        m13501a.recycle();
        return tile;
    }
}
