package com.millennialmedia.internal.adadapters;

import android.content.Context;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter.class */
public class SmartYieldInterstitialAdapter extends InterstitialAdapter {
    private InterstitialAdapter downstreamMediatedAdAdapter;
    private InterstitialAdapter interstitialAdapter;
    private InterstitialAdapter.InterstitialAdapterListener mediatedAdapterListener;

    public SmartYieldInterstitialAdapter(InterstitialAdapter interstitialAdapter, InterstitialAdapter interstitialAdapter2, InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener) {
        this.mediatedAdapterListener = interstitialAdapterListener;
        this.interstitialAdapter = interstitialAdapter;
        this.downstreamMediatedAdAdapter = interstitialAdapter2;
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public long getImpressionDelay() {
        InterstitialAdapter interstitialAdapter = this.interstitialAdapter;
        return interstitialAdapter != null ? interstitialAdapter.getImpressionDelay() : Handshake.getMinImpressionDuration();
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public int getMinImpressionViewabilityPercentage() {
        InterstitialAdapter interstitialAdapter = this.interstitialAdapter;
        return interstitialAdapter != null ? interstitialAdapter.getMinImpressionViewabilityPercentage() : Handshake.getMinImpressionViewabilityPercent();
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void init(Context context, InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener) {
        this.interstitialAdapter.init(context, this.mediatedAdapterListener);
        this.downstreamMediatedAdAdapter.init(context, interstitialAdapterListener);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        InterstitialAdapter interstitialAdapter = this.interstitialAdapter;
        if (interstitialAdapter != null) {
            interstitialAdapter.release();
        }
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void show(Context context, AdPlacement.DisplayOptions displayOptions) {
        this.downstreamMediatedAdAdapter.show(context, displayOptions);
        this.interstitialAdapter.show(context, displayOptions);
    }
}
