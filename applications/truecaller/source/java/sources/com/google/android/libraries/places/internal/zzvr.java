package com.google.android.libraries.places.internal;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzvr.class */
public enum zzvr {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzrb.zza),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzj;

    zzvr(Object obj) {
        this.zzj = obj;
    }
}
