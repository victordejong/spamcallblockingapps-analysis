package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dam.class */
final class dam extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ SecureRandom initialValue() {
        SecureRandom m10271b;
        m10271b = daj.m10271b();
        return m10271b;
    }
}
