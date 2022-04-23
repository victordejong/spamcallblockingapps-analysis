package io.bidmachine.unified;

import android.content.Context;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/unified/UnifiedFullscreenAd.class */
public abstract class UnifiedFullscreenAd extends UnifiedAd<UnifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams> {
    public void onClosed(boolean z) {
    }

    public void onFinished() {
    }

    public abstract void show(Context context, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback);
}
