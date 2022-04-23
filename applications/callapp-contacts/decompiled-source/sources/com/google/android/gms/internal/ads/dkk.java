package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.KeyAgreement;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkk.class */
public final class dkk implements dki<KeyAgreement> {
    @Override // com.google.android.gms.internal.ads.dki
    public final /* synthetic */ KeyAgreement a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }
}
