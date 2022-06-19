package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s13.class */
public final class s13 {
    /* renamed from: a */
    public static r13 m11179a(String str) {
        if (!p23.m12447m().containsKey(str)) {
            throw new GeneralSecurityException(str.length() != 0 ? "cannot find key template: ".concat(str) : new String("cannot find key template: "));
        }
        return p23.m12447m().get(str);
    }
}
