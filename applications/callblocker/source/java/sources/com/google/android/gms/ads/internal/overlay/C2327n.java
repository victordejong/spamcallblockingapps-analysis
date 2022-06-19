package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.C2716m;
import com.google.android.gms.internal.ads.C3567ve;
/* renamed from: com.google.android.gms.ads.internal.overlay.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/n.class */
public final class C2327n {
    /* renamed from: a */
    public static void m14751a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.f6683k == 4 && adOverlayInfoParcel.f6675c == null) {
            if (adOverlayInfoParcel.f6674b != null) {
                adOverlayInfoParcel.f6674b.mo8200e();
            }
            C2341q.m14746a();
            C2315b.m14768a(context, adOverlayInfoParcel.f6673a, adOverlayInfoParcel.f6681i);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.f6685m.f17639d);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.m14770a(intent, adOverlayInfoParcel);
        if (!C2716m.m13835h()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        C2341q.m14744c();
        C3567ve.m7007a(context, intent);
    }
}
