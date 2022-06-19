package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghv.class */
public final class zzghv implements zzghx<MessageDigest> {
    @Override // com.google.android.gms.internal.ads.zzghx
    public final /* bridge */ /* synthetic */ MessageDigest zza(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
