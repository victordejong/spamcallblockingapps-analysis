package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
import p131c.p161d.p170b.p224d.p252g.p253a.l60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehs.class */
public final class zzehs {

    /* renamed from: a */
    public static final ThreadLocal<SecureRandom> f28040a = new l60();

    /* renamed from: a */
    public static SecureRandom m12551a() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    /* renamed from: a */
    public static byte[] m12550a(int i) {
        byte[] bArr = new byte[i];
        f28040a.get().nextBytes(bArr);
        return bArr;
    }
}
