package com.moat.analytics.mobile.mpub;

import android.app.Activity;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/WebAdTracker.class */
public interface WebAdTracker {
    void removeListener();

    @Deprecated
    void setActivity(Activity activity);

    void setListener(TrackerListener trackerListener);

    void startTracking();

    void stopTracking();
}
