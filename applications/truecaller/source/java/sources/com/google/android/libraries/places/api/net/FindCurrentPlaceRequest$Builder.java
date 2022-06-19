package com.google.android.libraries.places.api.net;

import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.internal.zzgi;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder.class */
public abstract class FindCurrentPlaceRequest$Builder {
    public FindCurrentPlaceRequest build() {
        zza(zzgi.zza(zza().getPlaceFields()));
        return zza();
    }

    public abstract CancellationToken getCancellationToken();

    public abstract FindCurrentPlaceRequest$Builder setCancellationToken(CancellationToken cancellationToken);

    public abstract FindCurrentPlaceRequest$Builder zza(List<Place.Field> list);

    public abstract FindCurrentPlaceRequest zza();
}
