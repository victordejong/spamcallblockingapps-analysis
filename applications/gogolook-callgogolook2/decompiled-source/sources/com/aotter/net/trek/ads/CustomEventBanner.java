package com.aotter.net.trek.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/CustomEventBanner.class */
public abstract class CustomEventBanner {

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/CustomEventBanner$CustomEventBannerListener.class */
    public interface CustomEventBannerListener {
        void onBannerClicked();

        void onBannerCollapsed();

        void onBannerExpanded();

        void onBannerFailed();

        void onBannerLoaded(View view);

        void onLeaveApplication();
    }

    /* renamed from: a */
    public abstract void m36581a();

    /* renamed from: a */
    public abstract void m36580a(Context context, CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2);
}
