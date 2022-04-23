package com.google.android.gms.ads.instream;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.o;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/instream/InstreamAdView.class */
public final class InstreamAdView extends FrameLayout {
    public InstreamAdView(Context context) {
        super(context);
        o.a(context, "Context cannot be null");
    }

    public InstreamAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InstreamAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public final void setInstreamAd(InstreamAd instreamAd) {
        if (instreamAd != null) {
            instreamAd.zza(this);
        }
    }
}
