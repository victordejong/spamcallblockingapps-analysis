package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dot;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddj.class */
public abstract class ddj<KeyProtoT extends dot, PublicKeyProtoT extends dot> extends dcu<KeyProtoT> {

    /* renamed from: c */
    private final Class<PublicKeyProtoT> f46978c;

    @SafeVarargs
    public ddj(Class<KeyProtoT> cls, Class<PublicKeyProtoT> cls2, dcw<?, KeyProtoT>... dcwVarArr) {
        super(cls, dcwVarArr);
        this.f46978c = cls2;
    }
}
