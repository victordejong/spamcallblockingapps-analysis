package com.google.android.gms.internal.clearcut;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfq.class */
public enum zzfq {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzbb.zzfi),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzlj;

    zzfq(Object obj) {
        this.zzlj = obj;
    }
}
