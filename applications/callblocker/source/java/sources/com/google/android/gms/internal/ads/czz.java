package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.KeyAgreement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czz.class */
public final class czz implements czx<KeyAgreement> {
    @Override // com.google.android.gms.internal.ads.czx
    /* renamed from: a */
    public final /* synthetic */ KeyAgreement mo10276a(String str, Provider provider) {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }
}
