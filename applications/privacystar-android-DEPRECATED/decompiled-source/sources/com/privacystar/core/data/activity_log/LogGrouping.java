package com.privacystar.core.data.activity_log;

import com.privacystar.core.data.providers.DataProviderFlags;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/activity_log/LogGrouping.class */
public enum LogGrouping {
    NONE(0),
    ADJACENT_CALLER_EVENTS(1),
    MOST_RECENT_CALLER_EVENT(2);
    
    private int mValue;

    LogGrouping(int i) {
        this.mValue = i;
    }

    public static LogGrouping fromDataProviderFlags(int i) {
        return DataProviderFlags.isFlagSet(i, 256) ? ADJACENT_CALLER_EVENTS : NONE;
    }

    public static LogGrouping fromValue(int i) {
        LogGrouping[] values;
        for (LogGrouping logGrouping : values()) {
            if (logGrouping.mValue == i) {
                return logGrouping;
            }
        }
        Timber.m25w("Couldn't find value requested, returning NONE.", new Object[0]);
        return NONE;
    }

    public int getValue() {
        return this.mValue;
    }
}
