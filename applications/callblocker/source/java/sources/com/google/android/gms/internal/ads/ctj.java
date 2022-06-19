package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.deg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ctj.class */
public abstract class ctj<KeyProtoT extends deg, PublicKeyProtoT extends deg> extends csx<KeyProtoT> {

    /* renamed from: a */
    private final Class<PublicKeyProtoT> f13671a;

    @SafeVarargs
    public ctj(Class<KeyProtoT> cls, Class<PublicKeyProtoT> cls2, csz<?, KeyProtoT>... cszVarArr) {
        super(cls, cszVarArr);
        this.f13671a = cls2;
    }
}
