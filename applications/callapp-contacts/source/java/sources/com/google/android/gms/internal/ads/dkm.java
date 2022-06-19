package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.Provider;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkm.class */
public final class dkm implements dki<KeyPairGenerator> {
    @Override // com.google.android.gms.internal.ads.dki
    /* renamed from: a */
    public final /* synthetic */ KeyPairGenerator mo16535a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
