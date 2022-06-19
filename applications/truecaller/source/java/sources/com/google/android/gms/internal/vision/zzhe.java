package com.google.android.gms.internal.vision;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* JADX WARN: Init of enum zzxj can be incorrect */
/* JADX WARN: Init of enum zzxq can be incorrect */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzhe.class */
public enum zzhe {
    VOID(Void.class, Void.class, null),
    INT(r0, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzfh.class, zzfh.class, zzfh.zzrx),
    ENUM(r0, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> zzxs;
    private final Class<?> zzxt;
    private final Object zzxu;

    static {
        Class cls = Integer.TYPE;
    }

    zzhe(Class cls, Class cls2, Object obj) {
        this.zzxs = cls;
        this.zzxt = cls2;
        this.zzxu = obj;
    }

    public final Class<?> zzgv() {
        return this.zzxt;
    }
}
