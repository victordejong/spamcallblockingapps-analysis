package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvu.class */
public final class zzfvu extends ThreadLocal<Cipher> {
    public static final Cipher zza() {
        try {
            return zzgdb.zza.zzb("AES/GCM-SIV/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Cipher initialValue() {
        return zza();
    }
}
