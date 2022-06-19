package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.he */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/he.class */
final class C12603he implements AbstractC12607hi<adt> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            adtVar2.zzkr();
        } else if (!"resume".equals(str)) {
        } else {
            adtVar2.zzks();
        }
    }
}
