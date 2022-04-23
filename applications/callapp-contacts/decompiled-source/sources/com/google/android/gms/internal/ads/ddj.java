package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dot;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddj.class */
public abstract class ddj<KeyProtoT extends dot, PublicKeyProtoT extends dot> extends dcu<KeyProtoT> {

    /* renamed from: c  reason: collision with root package name */
    private final Class<PublicKeyProtoT> f26749c;

    /* JADX INFO: Access modifiers changed from: protected */
    @SafeVarargs
    public ddj(Class<KeyProtoT> cls, Class<PublicKeyProtoT> cls2, dcw<?, KeyProtoT>... dcwVarArr) {
        super(cls, dcwVarArr);
        this.f26749c = cls2;
    }
}
