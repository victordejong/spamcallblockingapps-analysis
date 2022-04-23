package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehf.class */
public final class zzehf implements zzehe<KeyFactory> {
    @Override // com.google.android.gms.internal.ads.zzehe
    /* renamed from: a */
    public final /* synthetic */ KeyFactory mo12559a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
