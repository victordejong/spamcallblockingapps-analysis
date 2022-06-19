package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyl.class */
public final class zzfyl {
    private static final CopyOnWriteArrayList<zzfyk> zza = new CopyOnWriteArrayList<>();

    public static zzfyk zza(String str) throws GeneralSecurityException {
        Iterator<zzfyk> it2 = zza.iterator();
        while (it2.hasNext()) {
            zzfyk next = it2.next();
            if (next.zza()) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
