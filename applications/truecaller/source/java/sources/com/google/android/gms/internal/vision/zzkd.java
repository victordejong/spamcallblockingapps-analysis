package com.google.android.gms.internal.vision;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzkd.class */
public enum zzkd {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzfh.zzrx),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzxu;

    zzkd(Object obj) {
        this.zzxu = obj;
    }
}
