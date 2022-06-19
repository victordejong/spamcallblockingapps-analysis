package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgif.class */
final class zzgif extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ SecureRandom initialValue() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
