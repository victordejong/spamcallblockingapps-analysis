package com.google.android.gms.internal.clearcut;

import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfq.class */
public enum zzfq {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT)),
    DOUBLE(Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)),
    BOOLEAN(false),
    STRING(""),
    BYTE_STRING(zzbb.zzfi),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzlj;

    zzfq(Object obj) {
        this.zzlj = obj;
    }
}
