package com.google.android.gms.internal.ads;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnu.class */
public enum dnu {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(dlw.class, dlw.class, dlw.f26941a),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> zziut;
    private final Class<?> zziuu;
    private final Object zziuv;

    dnu(Class cls, Class cls2, Object obj) {
        this.zziut = cls;
        this.zziuu = cls2;
        this.zziuv = obj;
    }

    public final Class<?> zzbkj() {
        return this.zziuu;
    }
}
