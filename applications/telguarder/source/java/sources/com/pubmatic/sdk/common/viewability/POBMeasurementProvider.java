package com.pubmatic.sdk.common.viewability;

import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBMeasurementProvider.class */
public interface POBMeasurementProvider {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose.class */
    public enum POBFriendlyObstructionPurpose {
        VIDEO_CONTROLS,
        CLOSE_AD,
        NOT_VISIBLE,
        OTHER
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener.class */
    public interface POBScriptListener {
        void onMeasurementScriptReceived(String str);
    }

    void addFriendlyObstructions(View view, POBFriendlyObstructionPurpose pOBFriendlyObstructionPurpose);

    void finishAdSession();

    String omSDKVersion();

    void omidJsServiceScript(Context context, POBScriptListener pOBScriptListener);

    void removeFriendlyObstructions(View view);

    void setTrackView(View view);
}
