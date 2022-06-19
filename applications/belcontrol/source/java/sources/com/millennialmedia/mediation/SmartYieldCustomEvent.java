package com.millennialmedia.mediation;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/SmartYieldCustomEvent.class */
public interface SmartYieldCustomEvent {

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/SmartYieldCustomEvent$SmartYieldCustomEventListener.class */
    public interface SmartYieldCustomEventListener {
        void onBidLost();

        void onError();
    }

    void requestSmartYieldDecision(Context context, String str, String str2, int i, int i2, Bundle bundle, SmartYieldCustomEventListener smartYieldCustomEventListener);
}
