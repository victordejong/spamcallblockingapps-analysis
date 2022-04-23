package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.e.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzs.class */
public final class zzs implements TileProvider {
    private final c zzel;
    private final /* synthetic */ TileOverlayOptions zzem;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(TileOverlayOptions tileOverlayOptions) {
        c cVar;
        this.zzem = tileOverlayOptions;
        cVar = tileOverlayOptions.zzei;
        this.zzel = cVar;
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
