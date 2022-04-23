package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzux;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzl.class */
public final class zzl {
    /* renamed from: a */
    public static void m18002a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.f22739k == 4 && adOverlayInfoParcel.f22731c == null) {
            zzux zzuxVar = adOverlayInfoParcel.f22730b;
            if (zzuxVar != null) {
                zzuxVar.onAdClicked();
            }
            zzp.m17971a();
            zza.m18019a(context, adOverlayInfoParcel.f22729a, adOverlayInfoParcel.f22737i);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.f22741m.f24762d);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.m18021a(intent, adOverlayInfoParcel);
        if (!PlatformVersion.m17060h()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        zzp.m17969c();
        zzayu.m16143a(context, intent);
    }
}
