package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzkr.class */
public enum zzkr {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT)),
    DOUBLE(Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)),
    BOOLEAN(false),
    STRING(""),
    BYTE_STRING(zzfx.zzov),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzuq;

    zzkr(Object obj) {
        this.zzuq = obj;
    }
}
