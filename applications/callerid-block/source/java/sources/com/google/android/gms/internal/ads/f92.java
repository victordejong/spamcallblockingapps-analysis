package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/f92.class */
final class f92 extends ThreadLocal<Cipher> {
    f92() {
    }

    /* renamed from: a */
    protected static final Cipher m7558a() {
        try {
            return z92.f9321e.m4654a("AES/ECB/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m7558a();
    }
}
