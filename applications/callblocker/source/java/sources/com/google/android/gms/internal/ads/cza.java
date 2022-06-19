package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cza.class */
final class cza extends ThreadLocal<Cipher> {
    /* renamed from: a */
    private static Cipher m10313a() {
        try {
            return czy.f13884a.m10281a("AES/ECB/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Cipher initialValue() {
        return m10313a();
    }
}
