package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.internal.ads.AbstractC6673kq;
import com.google.android.gms.internal.ads.qa1;
/* renamed from: com.google.android.gms.ads.internal.overlay.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/m.class */
public final class C5651m {
    /* renamed from: a */
    public static final void m18186a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.f18325n != 4 || adOverlayInfoParcel.f18317f != null) {
            Intent intent = new Intent();
            intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
            intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.f18327p.f33857g);
            intent.putExtra("shouldCallOnOverlayOpened", z);
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
            intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
            if (!C6237o.m16776h()) {
                intent.addFlags(524288);
            }
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            C5667s.m18160d();
            C5679c2.m18059p(context, intent);
            return;
        }
        AbstractC6673kq abstractC6673kq = adOverlayInfoParcel.f18316e;
        if (abstractC6673kq != null) {
            abstractC6673kq.mo7877z0();
        }
        qa1 qa1Var = adOverlayInfoParcel.f18314B;
        if (qa1Var != null) {
            qa1Var.mo7917b();
        }
        Activity mo7908g = adOverlayInfoParcel.f18318g.mo7908g();
        zzc zzcVar = adOverlayInfoParcel.f18315d;
        Activity activity = context;
        if (zzcVar != null) {
            activity = context;
            if (zzcVar.f18387m) {
                activity = context;
                if (mo7908g != null) {
                    activity = mo7908g;
                }
            }
        }
        C5667s.m18162b();
        zzc zzcVar2 = adOverlayInfoParcel.f18315d;
        C5639a.m18205b(activity, zzcVar2, adOverlayInfoParcel.f18323l, zzcVar2 != null ? zzcVar2.f18386l : null);
    }
}
