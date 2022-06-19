package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeaz.class */
public abstract class zzeaz<PrimitiveT, KeyT> {
    private final Class<PrimitiveT> zzibj;

    public zzeaz(Class<PrimitiveT> cls) {
        this.zzibj = cls;
    }

    public abstract PrimitiveT zzah(KeyT keyt) throws GeneralSecurityException;

    public final Class<PrimitiveT> zzbai() {
        return this.zzibj;
    }
}
