package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.p359e.AbstractC13284c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzs.class */
public final class zzs implements TileProvider {
    private final AbstractC13284c zzel;
    private final /* synthetic */ TileOverlayOptions zzem;

    public zzs(TileOverlayOptions tileOverlayOptions) {
        AbstractC13284c abstractC13284c;
        this.zzem = tileOverlayOptions;
        abstractC13284c = tileOverlayOptions.zzei;
        this.zzel = abstractC13284c;
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
