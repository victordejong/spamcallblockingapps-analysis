package com.telguarder.features.numberLookup;

import com.google.android.gms.maps.model.LatLng;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/Coordinates.class */
public class Coordinates implements Serializable {
    public double latitude;
    public double longitude;

    public LatLng toLatLng() {
        return new LatLng(this.latitude, this.longitude);
    }
}
