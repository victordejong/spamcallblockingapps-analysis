package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Signature;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghw.class */
public final class zzghw implements zzghx<Signature> {
    @Override // com.google.android.gms.internal.ads.zzghx
    public final /* bridge */ /* synthetic */ Signature zza(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
