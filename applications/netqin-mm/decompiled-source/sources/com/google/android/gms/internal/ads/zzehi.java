package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehi.class */
public final class zzehi implements zzehe<KeyPairGenerator> {
    @Override // com.google.android.gms.internal.ads.zzehe
    /* renamed from: a */
    public final /* synthetic */ KeyPairGenerator mo12559a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
