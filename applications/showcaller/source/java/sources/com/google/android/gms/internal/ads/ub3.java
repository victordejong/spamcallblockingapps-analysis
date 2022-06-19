package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Signature;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ub3.class */
public final class ub3 implements vb3<Signature> {
    @Override // com.google.android.gms.internal.ads.vb3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Signature mo10046a(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
