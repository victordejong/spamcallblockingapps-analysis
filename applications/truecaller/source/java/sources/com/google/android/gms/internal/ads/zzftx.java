package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzftx.class */
public final class zzftx {
    private static final CopyOnWriteArrayList<zzftw> zza = new CopyOnWriteArrayList<>();

    public static zzftw zza(String str) throws GeneralSecurityException {
        Iterator<zzftw> it = zza.iterator();
        while (it.hasNext()) {
            zzftw next = it.next();
            if (next.zza()) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
