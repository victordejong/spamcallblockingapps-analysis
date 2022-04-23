package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.common.util.C1617n;
import com.google.android.gms.internal.ads.hz2;
/* renamed from: com.google.android.gms.ads.internal.overlay.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/o.class */
public final class C1398o {
    /* renamed from: a */
    public static final void m8939a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.l == 4 && adOverlayInfoParcel.d == null) {
            hz2 hz2Var = adOverlayInfoParcel.c;
            if (hz2Var != null) {
                hz2Var.m7209F();
            }
            Activity h = adOverlayInfoParcel.e.h();
            zzc zzcVar = adOverlayInfoParcel.b;
            Activity activity = context;
            if (zzcVar != null) {
                activity = context;
                if (zzcVar.k) {
                    activity = context;
                    if (h != null) {
                        activity = h;
                    }
                }
            }
            C1407r.m8922b();
            zzc zzcVar2 = adOverlayInfoParcel.b;
            C1389a.m8942b(activity, zzcVar2, adOverlayInfoParcel.j, zzcVar2 != null ? zzcVar2.j : null);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.n.e);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
        if (!C1617n.m8210h()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        C1407r.m8920d();
        C1433l1.m8753n(context, intent);
    }
}
