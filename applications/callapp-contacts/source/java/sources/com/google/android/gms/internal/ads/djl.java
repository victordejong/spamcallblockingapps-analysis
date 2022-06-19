package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djl.class */
final class djl extends ThreadLocal<Cipher> {
    /* renamed from: a */
    private static Cipher m16570a() {
        try {
            return dkj.f47146a.m16538a("AES/ECB/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Cipher initialValue() {
        return m16570a();
    }
}
