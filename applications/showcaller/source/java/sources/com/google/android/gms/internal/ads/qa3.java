package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qa3.class */
final class qa3 extends ThreadLocal<Cipher> {
    /* renamed from: a */
    protected static final Cipher m11998a() {
        try {
            return nb3.f27065d.m12953b("AES/CTR/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m11998a();
    }
}
