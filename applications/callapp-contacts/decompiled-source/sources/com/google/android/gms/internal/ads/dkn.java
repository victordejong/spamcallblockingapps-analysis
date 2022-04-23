package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkn.class */
public final class dkn implements dki<KeyFactory> {
    @Override // com.google.android.gms.internal.ads.dki
    public final /* synthetic */ KeyFactory a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
