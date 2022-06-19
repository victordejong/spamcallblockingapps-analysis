package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.KeyAgreement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeif.class */
public final class zzeif implements zzeid<KeyAgreement> {
    @Override // com.google.android.gms.internal.ads.zzeid
    public final /* synthetic */ KeyAgreement zza(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }
}
