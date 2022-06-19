package com.millennialmedia.mediation;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.millennialmedia.InlineAd;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventBanner.class */
public interface CustomEventBanner extends CustomEvent {

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventBanner$CustomEventBannerListener.class */
    public interface CustomEventBannerListener {
        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onExpanded();

        void onRequestFailed(ErrorCode errorCode);

        void onRequestSucceeded(View view);
    }

    void destroy();

    void onPause();

    void onResume();

    void requestBanner(Context context, CustomEventBannerListener customEventBannerListener, InlineAd.AdSize adSize, Bundle bundle);
}
