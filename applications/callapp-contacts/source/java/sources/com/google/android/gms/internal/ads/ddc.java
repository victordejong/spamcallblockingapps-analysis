package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddc.class */
public final class ddc {

    /* renamed from: a */
    private static final CopyOnWriteArrayList<dcy> f46968a = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public static dcy m16853a(String str) throws GeneralSecurityException {
        Iterator<dcy> it2 = f46968a.iterator();
        while (it2.hasNext()) {
            dcy next = it2.next();
            if (next.m16855a()) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
