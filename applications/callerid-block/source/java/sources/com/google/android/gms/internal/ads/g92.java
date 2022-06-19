package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/g92.class */
final class g92 extends ThreadLocal<Cipher> {
    g92() {
    }

    /* renamed from: a */
    protected static final Cipher m7409a() {
        try {
            return z92.f9321e.m4654a("AES/CTR/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m7409a();
    }
}
