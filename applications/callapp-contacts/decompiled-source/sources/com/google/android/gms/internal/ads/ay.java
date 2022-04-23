package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ay.class */
public final class ay {
    public static bg a(bi biVar) {
        if (biVar == null) {
            return null;
        }
        return biVar.a(zzr.zzlc().b());
    }

    public static boolean a(bi biVar, bg bgVar, String... strArr) {
        if (biVar == null || bgVar == null || !biVar.f24486a || bgVar == null) {
            return false;
        }
        return biVar.a(bgVar, zzr.zzlc().b(), strArr);
    }
}
