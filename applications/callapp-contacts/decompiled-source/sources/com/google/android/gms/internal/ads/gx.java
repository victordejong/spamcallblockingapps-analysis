package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gx.class */
final class gx implements hi<adt> {
    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        if (adtVar2.Q() != null) {
            adtVar2.Q().b();
        }
        zze x = adtVar2.x();
        if (x != null) {
            x.close();
            return;
        }
        zze y = adtVar2.y();
        if (y != null) {
            y.close();
        } else {
            zzd.zzez("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
