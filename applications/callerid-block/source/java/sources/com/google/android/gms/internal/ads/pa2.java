package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pa2.class */
public final class pa2 {

    /* renamed from: a */
    private static final ThreadLocal<SecureRandom> f8115a = new oa2();

    /* renamed from: a */
    public static byte[] m6221a(int i) {
        byte[] bArr = new byte[i];
        f8115a.get().nextBytes(bArr);
        return bArr;
    }
}
