package com.google.android.libraries.places.api.net;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.android.libraries.places.internal.zzgi;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/FindCurrentPlaceResponse.class */
public abstract class FindCurrentPlaceResponse {
    public static FindCurrentPlaceResponse newInstance(List<PlaceLikelihood> list) {
        return new zzo(zzgi.zza(list));
    }

    public abstract List<PlaceLikelihood> getPlaceLikelihoods();
}
