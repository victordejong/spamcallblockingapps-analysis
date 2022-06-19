package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Signature;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkr.class */
public final class dkr implements dki<Signature> {
    @Override // com.google.android.gms.internal.ads.dki
    /* renamed from: a */
    public final /* synthetic */ Signature mo16535a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
