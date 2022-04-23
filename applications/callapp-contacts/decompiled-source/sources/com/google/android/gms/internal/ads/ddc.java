package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddc.class */
public final class ddc {

    /* renamed from: a  reason: collision with root package name */
    private static final CopyOnWriteArrayList<dcy> f26740a = new CopyOnWriteArrayList<>();

    public static dcy a(String str) throws GeneralSecurityException {
        Iterator<dcy> it2 = f26740a.iterator();
        while (it2.hasNext()) {
            dcy next = it2.next();
            if (next.a()) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
