package com.google.android.gms.internal.measurement;

import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzip.class */
public enum zzip {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT)),
    DOUBLE(Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)),
    BOOLEAN(false),
    STRING(""),
    BYTE_STRING(zzdu.zza),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzj;

    zzip(Object obj) {
        this.zzj = obj;
    }
}
