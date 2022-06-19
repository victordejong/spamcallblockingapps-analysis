package io.bidmachine.unified;

import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/unified/UnifiedAdCallback.class */
public interface UnifiedAdCallback {
    void log(String str);

    void onAdClicked();

    void onAdExpired();

    void onAdLoadFailed(BMError bMError);

    void onAdShowFailed(BMError bMError);
}
