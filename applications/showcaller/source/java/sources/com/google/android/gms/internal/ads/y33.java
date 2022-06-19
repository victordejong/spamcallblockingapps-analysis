package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y33.class */
final class y33 extends ThreadLocal<Cipher> {
    /* renamed from: a */
    protected static final Cipher m8964a() {
        try {
            return nb3.f27065d.m12953b("AES/GCM-SIV/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m8964a();
    }
}
