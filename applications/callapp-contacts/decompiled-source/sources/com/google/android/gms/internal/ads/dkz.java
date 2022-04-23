package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkz.class */
public final class dkz {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<SecureRandom> f26911a = new dky();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ SecureRandom a() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    public static byte[] a(int i) {
        byte[] bArr = new byte[i];
        f26911a.get().nextBytes(bArr);
        return bArr;
    }
}
