package com.google.android.libraries.places.api.net;

import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.api.model.AutocompleteSessionToken;
import com.google.android.libraries.places.api.model.LocationBias;
import com.google.android.libraries.places.api.model.LocationRestriction;
import com.google.android.libraries.places.api.model.TypeFilter;
import com.google.android.libraries.places.internal.zzgi;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder.class */
public abstract class FindAutocompletePredictionsRequest$Builder {
    public FindAutocompletePredictionsRequest build() {
        setCountries((List<String>) zzgi.zza(getCountries()));
        return zza();
    }

    public abstract CancellationToken getCancellationToken();

    public abstract List<String> getCountries();

    public abstract LocationBias getLocationBias();

    public abstract LocationRestriction getLocationRestriction();

    public abstract LatLng getOrigin();

    public abstract String getQuery();

    public abstract AutocompleteSessionToken getSessionToken();

    public abstract TypeFilter getTypeFilter();

    public abstract FindAutocompletePredictionsRequest$Builder setCancellationToken(CancellationToken cancellationToken);

    public abstract FindAutocompletePredictionsRequest$Builder setCountries(List<String> list);

    public FindAutocompletePredictionsRequest$Builder setCountries(String... strArr) {
        return setCountries((List<String>) zzgi.zza(strArr));
    }

    public FindAutocompletePredictionsRequest$Builder setCountry(String str) {
        setCountries(str == null ? zzgi.zza() : zzgi.zza(str));
        return this;
    }

    public abstract FindAutocompletePredictionsRequest$Builder setLocationBias(LocationBias locationBias);

    public abstract FindAutocompletePredictionsRequest$Builder setLocationRestriction(LocationRestriction locationRestriction);

    public abstract FindAutocompletePredictionsRequest$Builder setOrigin(LatLng latLng);

    public abstract FindAutocompletePredictionsRequest$Builder setQuery(String str);

    public abstract FindAutocompletePredictionsRequest$Builder setSessionToken(AutocompleteSessionToken autocompleteSessionToken);

    public abstract FindAutocompletePredictionsRequest$Builder setTypeFilter(TypeFilter typeFilter);

    public abstract FindAutocompletePredictionsRequest zza();
}
