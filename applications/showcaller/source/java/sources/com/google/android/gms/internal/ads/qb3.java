package com.google.android.gms.internal.ads;

import java.security.KeyFactory;
import java.security.Provider;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qb3.class */
public final class qb3 implements vb3<KeyFactory> {
    @Override // com.google.android.gms.internal.ads.vb3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ KeyFactory mo10046a(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
