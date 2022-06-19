package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzggv.class */
final class zzggv extends ThreadLocal<Cipher> {
    public static final Cipher zza() {
        try {
            return zzghp.zza.zza("AES/ECB/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Cipher initialValue() {
        return zza();
    }
}
