package com.google.android.gms.internal.ads;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgjf.class */
public enum zzgjf {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzgex.zzb),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzj;

    zzgjf(Object obj) {
        this.zzj = obj;
    }
}
