package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Signature;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dag.class */
public final class dag implements czx<Signature> {
    @Override // com.google.android.gms.internal.ads.czx
    /* renamed from: a */
    public final /* synthetic */ Signature mo10276a(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
