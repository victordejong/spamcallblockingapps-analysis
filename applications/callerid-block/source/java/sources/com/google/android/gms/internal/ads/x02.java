package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/x02.class */
public final class x02 {

    /* renamed from: a */
    private static final CopyOnWriteArrayList<w02> f9083a = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public static w02 m4973a(String str) {
        Iterator<w02> it = f9083a.iterator();
        while (it.hasNext()) {
            w02 next = it.next();
            if (next.zza()) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
