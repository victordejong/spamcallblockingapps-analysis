package com.google.android.libraries.places.api.net;

import com.google.android.gms.tasks.Task;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/PlacesClient.class */
public interface PlacesClient {
    Task<FetchPhotoResponse> fetchPhoto(FetchPhotoRequest fetchPhotoRequest);

    Task<FetchPlaceResponse> fetchPlace(FetchPlaceRequest fetchPlaceRequest);

    Task<FindAutocompletePredictionsResponse> findAutocompletePredictions(FindAutocompletePredictionsRequest findAutocompletePredictionsRequest);

    Task<FindCurrentPlaceResponse> findCurrentPlace(FindCurrentPlaceRequest findCurrentPlaceRequest);
}
