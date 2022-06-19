package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.gx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gx.class */
final class C12595gx implements AbstractC12607hi<adt> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        if (adtVar2.mo13793Q() != null) {
            adtVar2.mo13793Q().mo15081b();
        }
        zze mo13726x = adtVar2.mo13726x();
        if (mo13726x != null) {
            mo13726x.close();
            return;
        }
        zze mo13725y = adtVar2.mo13725y();
        if (mo13725y != null) {
            mo13725y.close();
        } else {
            zzd.zzez("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
