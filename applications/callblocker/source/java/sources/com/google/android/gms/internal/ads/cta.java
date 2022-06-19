package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cta.class */
public final class cta {

    /* renamed from: a */
    private static final CopyOnWriteArrayList<ctb> f13653a = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public static ctb m10702a(String str) {
        Iterator<ctb> it = f13653a.iterator();
        while (it.hasNext()) {
            ctb next = it.next();
            if (next.m10701a(str)) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
