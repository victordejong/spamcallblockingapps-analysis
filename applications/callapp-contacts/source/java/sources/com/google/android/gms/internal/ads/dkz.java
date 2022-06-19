package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkz.class */
public final class dkz {

    /* renamed from: a */
    private static final ThreadLocal<SecureRandom> f47169a = new dky();

    /* renamed from: a */
    public static /* synthetic */ SecureRandom m16525a() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    /* renamed from: a */
    public static byte[] m16524a(int i) {
        byte[] bArr = new byte[i];
        f47169a.get().nextBytes(bArr);
        return bArr;
    }
}
