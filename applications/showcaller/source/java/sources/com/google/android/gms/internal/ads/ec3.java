package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ec3.class */
public final class ec3 {

    /* renamed from: a */
    private static final ThreadLocal<SecureRandom> f22067a = new dc3();

    /* renamed from: a */
    public static byte[] m15524a(int i) {
        byte[] bArr = new byte[i];
        f22067a.get().nextBytes(bArr);
        return bArr;
    }
}
