package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzaf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzs.class */
public final class zzs implements TileProvider {
    private final zzaf zzel;
    private final /* synthetic */ TileOverlayOptions zzem;

    public zzs(TileOverlayOptions tileOverlayOptions) {
        zzaf zzafVar;
        this.zzem = tileOverlayOptions;
        zzafVar = tileOverlayOptions.zzei;
        this.zzel = zzafVar;
    }

    @Override // com.google.android.gms.maps.model.TileProvider
    public final Tile getTile(int i, int i2, int i3) {
        try {
            return this.zzel.getTile(i, i2, i3);
        } catch (RemoteException e) {
            return null;
        }
    }
}
