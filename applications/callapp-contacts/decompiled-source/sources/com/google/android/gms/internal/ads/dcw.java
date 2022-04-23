package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcw.class */
public abstract class dcw<PrimitiveT, KeyT> {

    /* renamed from: a  reason: collision with root package name */
    final Class<PrimitiveT> f26732a;

    public dcw(Class<PrimitiveT> cls) {
        this.f26732a = cls;
    }

    public abstract PrimitiveT a(KeyT keyt) throws GeneralSecurityException;
}
