package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeij.class */
public final class zzeij implements zzeid<MessageDigest> {
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ MessageDigest zza(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
