package com.google.android.libraries.places.api.net;

import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.api.model.AutocompleteSessionToken;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.internal.zzgi;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/FetchPlaceRequest$Builder.class */
public abstract class FetchPlaceRequest$Builder {
    public FetchPlaceRequest build() {
        zza((List<Place.Field>) zzgi.zza(zza().getPlaceFields()));
        return zza();
    }

    public abstract CancellationToken getCancellationToken();

    public abstract AutocompleteSessionToken getSessionToken();

    public abstract FetchPlaceRequest$Builder setCancellationToken(CancellationToken cancellationToken);

    public abstract FetchPlaceRequest$Builder setSessionToken(AutocompleteSessionToken autocompleteSessionToken);

    public abstract FetchPlaceRequest$Builder zza(String str);

    public abstract FetchPlaceRequest$Builder zza(List<Place.Field> list);

    public abstract FetchPlaceRequest zza();
}
