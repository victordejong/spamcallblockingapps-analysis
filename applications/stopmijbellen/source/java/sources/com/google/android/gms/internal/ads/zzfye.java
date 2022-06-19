package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfye.class */
public final class zzfye {
    public static zzfyd zza(String str) throws GeneralSecurityException {
        if (!zzfza.zzj().containsKey(str)) {
            throw new GeneralSecurityException(str.length() != 0 ? "cannot find key template: ".concat(str) : new String("cannot find key template: "));
        }
        return zzfza.zzj().get(str);
    }
}
