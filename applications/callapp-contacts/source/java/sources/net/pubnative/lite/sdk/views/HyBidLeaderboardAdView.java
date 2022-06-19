package net.pubnative.lite.sdk.views;

import android.content.Context;
import android.util.AttributeSet;
import net.pubnative.lite.sdk.api.LeaderboardRequestManager;
import net.pubnative.lite.sdk.api.RequestManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/HyBidLeaderboardAdView.class */
public class HyBidLeaderboardAdView extends HyBidAdView {
    public HyBidLeaderboardAdView(Context context) {
        super(context);
    }

    public HyBidLeaderboardAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HyBidLeaderboardAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public HyBidLeaderboardAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // net.pubnative.lite.sdk.views.HyBidAdView
    protected String getLogTag() {
        return HyBidLeaderboardAdView.class.getSimpleName();
    }

    @Override // net.pubnative.lite.sdk.views.HyBidAdView
    RequestManager getRequestManager() {
        return new LeaderboardRequestManager();
    }
}
