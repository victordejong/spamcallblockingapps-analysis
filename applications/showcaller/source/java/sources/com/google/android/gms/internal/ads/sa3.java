package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sa3.class */
final class sa3 extends ThreadLocal<Cipher> {
    /* renamed from: a */
    protected static final Cipher m11090a() {
        try {
            return nb3.f27065d.m12953b("AES/ECB/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m11090a();
    }
}
