package com.google.android.gms.internal.mlkit_translate;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zznn.class */
public enum zznn {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zziy.zza),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzj;

    zznn(Object obj) {
        this.zzj = obj;
    }
}
