package com.applovin.mediation.adapter;

import android.app.Activity;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/MaxNativeAdAdapter.class */
public interface MaxNativeAdAdapter {
    void loadNativeAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxNativeAdAdapterListener maxNativeAdAdapterListener);
}
