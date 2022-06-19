package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/daj.class */
public final class daj {

    /* renamed from: a */
    private static final ThreadLocal<SecureRandom> f13901a = new dam();

    /* renamed from: a */
    public static byte[] m10272a(int i) {
        byte[] bArr = new byte[i];
        f13901a.get().nextBytes(bArr);
        return bArr;
    }

    /* renamed from: b */
    public static SecureRandom m10271b() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
