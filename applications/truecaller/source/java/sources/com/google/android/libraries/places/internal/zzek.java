package com.google.android.libraries.places.internal;

import com.google.android.gms.tasks.Task;
import com.google.android.libraries.places.api.model.AutocompletePrediction;
import com.google.android.libraries.places.api.net.FetchPlaceResponse;
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsResponse;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzek.class */
public interface zzek {
    Task<FetchPlaceResponse> zza(AutocompletePrediction autocompletePrediction);

    Task<FindAutocompletePredictionsResponse> zza(String str);

    void zza();
}
