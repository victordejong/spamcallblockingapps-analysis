package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.C5722o1;
/* renamed from: com.google.android.gms.ads.internal.overlay.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/r.class */
public final class BinderC5656r extends BinderC5650l {
    public BinderC5656r(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.BinderC5650l, com.google.android.gms.internal.ads.kb0
    /* renamed from: a0 */
    public final void mo13938a0(Bundle bundle) {
        C5722o1.m17990k("AdOverlayParcel is null or does not contain valid overlay type.");
        this.f18369x = 4;
        this.f18350e.finish();
    }
}
