package com.google.android.gms.internal.ads;

import java.security.KeyPairGenerator;
import java.security.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dab.class */
public final class dab implements czx<KeyPairGenerator> {
    @Override // com.google.android.gms.internal.ads.czx
    /* renamed from: a */
    public final /* synthetic */ KeyPairGenerator mo10276a(String str, Provider provider) {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
