package com.google.android.libraries.places.api.net;

import com.google.android.libraries.places.api.model.Place;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/FetchPlaceResponse.class */
public abstract class FetchPlaceResponse {
    public static FetchPlaceResponse newInstance(Place place) {
        return new zzg(place);
    }

    public abstract Place getPlace();
}
