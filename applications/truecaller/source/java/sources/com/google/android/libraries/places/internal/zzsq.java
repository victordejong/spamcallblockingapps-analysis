package com.google.android.libraries.places.internal;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* JADX WARN: Init of enum zzb can be incorrect */
/* JADX WARN: Init of enum zzi can be incorrect */
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzsq.class */
public enum zzsq {
    VOID(Void.class, Void.class, null),
    INT(r0, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzrb.class, zzrb.class, zzrb.zza),
    ENUM(r0, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> zzk;
    private final Class<?> zzl;
    private final Object zzm;

    static {
        Class cls = Integer.TYPE;
    }

    zzsq(Class cls, Class cls2, Object obj) {
        this.zzk = cls;
        this.zzl = cls2;
        this.zzm = obj;
    }

    public final Class<?> zza() {
        return this.zzl;
    }
}
