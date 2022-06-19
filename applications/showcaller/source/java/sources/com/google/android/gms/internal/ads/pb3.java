package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.KeyAgreement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pb3.class */
public final class pb3 implements vb3<KeyAgreement> {
    @Override // com.google.android.gms.internal.ads.vb3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ KeyAgreement mo10046a(String str, Provider provider) {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }
}
