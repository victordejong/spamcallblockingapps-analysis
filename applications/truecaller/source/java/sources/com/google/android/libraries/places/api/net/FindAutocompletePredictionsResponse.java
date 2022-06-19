package com.google.android.libraries.places.api.net;

import com.google.android.libraries.places.api.model.AutocompletePrediction;
import com.google.android.libraries.places.internal.zzgi;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse.class */
public abstract class FindAutocompletePredictionsResponse {
    public static FindAutocompletePredictionsResponse newInstance(List<AutocompletePrediction> list) {
        return new zzk(zzgi.zza(list));
    }

    public abstract List<AutocompletePrediction> getAutocompletePredictions();
}
