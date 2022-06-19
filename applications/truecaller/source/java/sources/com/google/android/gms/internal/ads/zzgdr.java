package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdr.class */
public final class zzgdr extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ SecureRandom initialValue() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
