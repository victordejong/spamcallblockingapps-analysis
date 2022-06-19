package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/analytics/AnalyticsCollector$Factory.class */
public class AnalyticsCollector$Factory {
    public AnalyticsCollector createAnalyticsCollector(Player player, Clock clock) {
        return new AnalyticsCollector(player, clock);
    }
}
