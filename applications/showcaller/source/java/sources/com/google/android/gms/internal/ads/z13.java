package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z13.class */
public final class z13 {

    /* renamed from: a */
    private static final CopyOnWriteArrayList<y13> f32768a = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public static y13 m8625a(String str) {
        Iterator<y13> it = f32768a.iterator();
        while (it.hasNext()) {
            y13 next = it.next();
            if (next.zza()) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
