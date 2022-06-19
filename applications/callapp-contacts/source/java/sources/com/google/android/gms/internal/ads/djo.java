package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djo.class */
final class djo extends ThreadLocal<Cipher> {
    /* renamed from: a */
    private static Cipher m16566a() {
        try {
            return dkj.f47146a.m16538a("AES/CTR/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Cipher initialValue() {
        return m16566a();
    }
}
