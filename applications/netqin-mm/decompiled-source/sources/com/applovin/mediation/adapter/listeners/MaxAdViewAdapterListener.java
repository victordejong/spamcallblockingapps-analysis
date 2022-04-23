package com.applovin.mediation.adapter.listeners;

import android.view.View;
import com.applovin.mediation.adapter.MaxAdapterError;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener.class */
public interface MaxAdViewAdapterListener extends MaxAdapterListener {
    void onAdViewAdClicked();

    void onAdViewAdCollapsed();

    void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError);

    void onAdViewAdDisplayed();

    void onAdViewAdExpanded();

    void onAdViewAdHidden();

    void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError);

    void onAdViewAdLoaded(View view);
}
