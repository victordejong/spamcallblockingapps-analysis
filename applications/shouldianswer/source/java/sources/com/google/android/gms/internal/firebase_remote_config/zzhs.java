package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhs.class */
public enum zzhs {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzfx.class, zzfx.class, zzfx.zzov),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> zzuo;
    private final Class<?> zzup;
    private final Object zzuq;

    zzhs(Class cls, Class cls2, Object obj) {
        this.zzuo = cls;
        this.zzup = cls2;
        this.zzuq = obj;
    }

    public final Class<?> zzho() {
        return this.zzup;
    }
}
