package com.millennialmedia.internal.adadapters;

import android.content.Context;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.adadapters.SmartYieldInlineAdapter;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/SmartYieldAdapter.class */
public interface SmartYieldAdapter {

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener.class */
    public interface SmartYieldDecisionListener {
        void onBidLost();

        void onBidWin(InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener);

        void onBidWin(SmartYieldInlineAdapter.SmartYieldInlineAdapterListener smartYieldInlineAdapterListener, InlineAdapter.InlineAdapterListener inlineAdapterListener);

        void onError();
    }

    void requestSmartYieldDecision(Context context, String str, String str2, int i, int i2);
}
