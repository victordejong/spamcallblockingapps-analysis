package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Cipher;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkl.class */
public final class dkl implements dki<Cipher> {
    @Override // com.google.android.gms.internal.ads.dki
    public final /* synthetic */ Cipher a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
