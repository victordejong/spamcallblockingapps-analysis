package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djj.class */
final class djj extends ThreadLocal<Cipher> {
    private static Cipher a() {
        try {
            return dkj.f26896a.a("AES/CTR/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Cipher initialValue() {
        return a();
    }
}
