package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeiu.class */
public final class zzeiu {
    private static final ThreadLocal<SecureRandom> zzikz = new zzeit();

    public static SecureRandom zzbfu() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    public static byte[] zzft(int i) {
        byte[] bArr = new byte[i];
        zzikz.get().nextBytes(bArr);
        return bArr;
    }
}
