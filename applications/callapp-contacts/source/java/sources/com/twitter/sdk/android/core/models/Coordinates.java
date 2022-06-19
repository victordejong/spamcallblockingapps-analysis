package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Coordinates.class */
public class Coordinates {
    public static final int INDEX_LATITUDE = 1;
    public static final int INDEX_LONGITUDE = 0;
    @AbstractC15952b(m7988a = "coordinates")
    public final List<Double> coordinates;
    @AbstractC15952b(m7988a = "type")
    public final String type;

    public Coordinates(Double d, Double d2, String str) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(0, d);
        arrayList.add(1, d2);
        this.coordinates = ModelUtils.getSafeList(arrayList);
        this.type = str;
    }

    public Double getLatitude() {
        return this.coordinates.get(1);
    }

    public Double getLongitude() {
        return this.coordinates.get(0);
    }
}
