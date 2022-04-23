package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.Provider;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkm.class */
public final class dkm implements dki<KeyPairGenerator> {
    @Override // com.google.android.gms.internal.ads.dki
    public final /* synthetic */ KeyPairGenerator a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
