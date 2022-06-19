package com.pubmatic.sdk.webrendering.mraid;

import android.view.View;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.q */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/q.class */
interface AbstractC2050q {
    boolean isUserInteracted(boolean z);

    void onAdInteractionStarted();

    void onAdInteractionStopped();

    void onAdUnload();

    void onAdViewChanged(View view);

    void onLeavingApplication();

    void onMRAIDAdClick();

    void onObstructionAdded(View view);

    void onObstructionRemoved(View view);

    void onOpen(String str);
}
