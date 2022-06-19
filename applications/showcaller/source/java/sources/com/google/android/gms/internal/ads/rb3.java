package com.google.android.gms.internal.ads;

import java.security.KeyPairGenerator;
import java.security.Provider;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rb3.class */
public final class rb3 implements vb3<KeyPairGenerator> {
    @Override // com.google.android.gms.internal.ads.vb3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ KeyPairGenerator mo10046a(String str, Provider provider) {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
