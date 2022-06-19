package com.pubmatic.sdk.common.network;

import com.pubmatic.sdk.common.POBError;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBTrackerHandling.class */
public interface POBTrackerHandling {
    void executeLossTracker(POBError pOBError);

    void executeWinTrackers();
}
