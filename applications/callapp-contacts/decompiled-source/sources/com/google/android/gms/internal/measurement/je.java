package com.google.android.gms.internal.measurement;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/je.class */
public enum je {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(fm.f29017b),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzj;

    je(Object obj) {
        this.zzj = obj;
    }
}
