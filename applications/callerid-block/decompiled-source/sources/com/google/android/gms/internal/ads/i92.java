package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/i92.class */
final class i92 extends ThreadLocal<Cipher> {
    i92() {
    }

    /* renamed from: a */
    protected static final Cipher m7196a() {
        try {
            return z92.f9321e.m4654a("AES/GCM/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m7196a();
    }
}
