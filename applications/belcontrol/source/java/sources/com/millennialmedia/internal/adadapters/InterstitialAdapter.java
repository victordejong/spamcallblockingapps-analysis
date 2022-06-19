package com.millennialmedia.internal.adadapters;

import android.content.Context;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.AdPlacement;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InterstitialAdapter.class */
public abstract class InterstitialAdapter extends AdAdapter {
    public InterstitialAdapterListener adapterListener;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener.class */
    public interface InterstitialAdapterListener {
        void initFailed();

        void initSucceeded();

        void onAdLeftApplication();

        void onClicked();

        void onClosed();

        void onExpired();

        void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent);

        void showFailed(InterstitialAd.InterstitialErrorStatus interstitialErrorStatus);

        void shown();
    }

    public abstract void init(Context context, InterstitialAdapterListener interstitialAdapterListener);

    public abstract void show(Context context, AdPlacement.DisplayOptions displayOptions);
}
