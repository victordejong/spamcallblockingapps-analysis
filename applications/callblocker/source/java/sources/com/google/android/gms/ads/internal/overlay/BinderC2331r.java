package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.internal.ads.C3556uu;
/* renamed from: com.google.android.gms.ads.internal.overlay.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/r.class */
public final class BinderC2331r extends BinderC2316c {
    public BinderC2331r(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.BinderC2316c, com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7376a(Bundle bundle) {
        C3556uu.m7052a("AdOverlayParcel is null or does not contain valid overlay type.");
        this.f6693d = 3;
        this.f6690a.finish();
    }
}
