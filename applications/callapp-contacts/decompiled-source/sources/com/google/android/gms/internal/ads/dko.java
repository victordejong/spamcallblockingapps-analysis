package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dko.class */
public final class dko implements dki<MessageDigest> {
    @Override // com.google.android.gms.internal.ads.dki
    public final /* synthetic */ MessageDigest a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
