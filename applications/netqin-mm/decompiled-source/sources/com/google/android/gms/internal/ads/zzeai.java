package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeai.class */
public abstract class zzeai<PrimitiveT, KeyT> {

    /* renamed from: a */
    public final Class<PrimitiveT> f27967a;

    public zzeai(Class<PrimitiveT> cls) {
        this.f27967a = cls;
    }

    /* renamed from: a */
    public final Class<PrimitiveT> m12946a() {
        return this.f27967a;
    }

    /* renamed from: a */
    public abstract PrimitiveT mo12945a(KeyT keyt) throws GeneralSecurityException;
}
