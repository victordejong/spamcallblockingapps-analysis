package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oa2.class */
final class oa2 extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ SecureRandom initialValue() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
