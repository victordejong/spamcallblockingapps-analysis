package com.google.android.gms.maps.model;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/TileProvider.class */
public interface TileProvider {
    public static final Tile NO_TILE = new Tile(-1, -1, null);

    Tile getTile(int i, int i2, int i3);
}
