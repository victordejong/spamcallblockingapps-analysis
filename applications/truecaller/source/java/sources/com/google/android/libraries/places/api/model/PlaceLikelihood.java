package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
import com.google.android.libraries.places.internal.zzfz;
import com.google.android.libraries.places.internal.zzgr;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/PlaceLikelihood.class */
public abstract class PlaceLikelihood implements Parcelable {
    public static final double LIKELIHOOD_MAX_VALUE = 1.0d;
    public static final double LIKELIHOOD_MIN_VALUE = 0.0d;

    public static PlaceLikelihood newInstance(Place place, double d) {
        Double valueOf = Double.valueOf((double) LIKELIHOOD_MIN_VALUE);
        Double valueOf2 = Double.valueOf(1.0d);
        if (zzgr.zza(valueOf, valueOf2).zzb(Double.valueOf(d))) {
            return new zzat(place, d);
        }
        throw new IllegalArgumentException(zzfz.zza("Likelihood must not be out-of-range: %s to %s, but was: %s.", valueOf, valueOf2, Double.valueOf(d)));
    }

    public abstract double getLikelihood();

    public abstract Place getPlace();
}
