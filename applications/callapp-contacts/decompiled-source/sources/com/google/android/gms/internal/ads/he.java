package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/he.class */
final class he implements hi<adt> {
    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            adtVar2.zzkr();
        } else if ("resume".equals(str)) {
            adtVar2.zzks();
        }
    }
}
