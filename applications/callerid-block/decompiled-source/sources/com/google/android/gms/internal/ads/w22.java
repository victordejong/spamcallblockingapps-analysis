package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/w22.class */
final class w22 extends ThreadLocal<Cipher> {
    w22() {
    }

    /* renamed from: a */
    protected static final Cipher m5128a() {
        try {
            return z92.f9321e.m4654a("AES/GCM-SIV/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m5128a();
    }
}
