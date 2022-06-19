package com.google.android.gms.internal.mlkit_common;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzja.class */
public enum zzja {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzep.zza),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzj;

    zzja(Object obj) {
        this.zzj = obj;
    }
}
