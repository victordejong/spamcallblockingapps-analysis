package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Signature;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeim.class */
public final class zzeim implements zzeid<Signature> {
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ Signature zza(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
