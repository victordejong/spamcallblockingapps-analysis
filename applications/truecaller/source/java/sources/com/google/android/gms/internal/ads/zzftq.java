package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzftq.class */
public final class zzftq {
    public static zzftp zza(String str) throws GeneralSecurityException {
        if (!zzfum.zzm().containsKey(str)) {
            throw new GeneralSecurityException(str.length() != 0 ? "cannot find key template: ".concat(str) : new String("cannot find key template: "));
        }
        return zzfum.zzm().get(str);
    }
}
