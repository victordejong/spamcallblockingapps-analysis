package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dc3.class */
final class dc3 extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ SecureRandom initialValue() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
