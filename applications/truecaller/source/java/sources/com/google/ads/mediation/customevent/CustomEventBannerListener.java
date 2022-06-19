package com.google.ads.mediation.customevent;

import android.view.View;
import androidx.annotation.RecentlyNonNull;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventBannerListener.class */
public interface CustomEventBannerListener extends CustomEventListener {
    void onClick();

    void onReceivedAd(@RecentlyNonNull View view);
}
