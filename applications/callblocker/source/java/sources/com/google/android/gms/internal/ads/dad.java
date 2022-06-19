package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dad.class */
public final class dad implements czx<MessageDigest> {
    @Override // com.google.android.gms.internal.ads.czx
    /* renamed from: a */
    public final /* synthetic */ MessageDigest mo10276a(String str, Provider provider) {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
