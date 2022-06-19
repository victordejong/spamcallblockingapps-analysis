package com.google.android.gms.maps.model;

import com.google.android.gms.internal.maps.zzag;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzt.class */
final class zzt extends zzag {
    private final /* synthetic */ TileProvider zzen;

    public zzt(TileOverlayOptions tileOverlayOptions, TileProvider tileProvider) {
        this.zzen = tileProvider;
    }

    @Override // com.google.android.gms.internal.maps.zzaf
    public final Tile getTile(int i, int i2, int i3) {
        return this.zzen.getTile(i, i2, i3);
    }
}
