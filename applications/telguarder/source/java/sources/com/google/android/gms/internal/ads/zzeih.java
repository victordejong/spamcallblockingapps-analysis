package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.Provider;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeih.class */
public final class zzeih implements zzeid<KeyPairGenerator> {
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ KeyPairGenerator zza(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
