package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzemo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebj.class */
public abstract class zzebj<KeyProtoT extends zzemo, PublicKeyProtoT extends zzemo> extends zzeax<KeyProtoT> {
    private final Class<PublicKeyProtoT> zzibw;

    @SafeVarargs
    public zzebj(Class<KeyProtoT> cls, Class<PublicKeyProtoT> cls2, zzeaz<?, KeyProtoT>... zzeazVarArr) {
        super(cls, zzeazVarArr);
        this.zzibw = cls2;
    }
}
