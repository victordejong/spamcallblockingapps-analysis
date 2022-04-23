package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehd.class */
public final class zzehd implements zzehe<Cipher> {
    @Override // com.google.android.gms.internal.ads.zzehe
    /* renamed from: a */
    public final /* synthetic */ Cipher mo12559a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
