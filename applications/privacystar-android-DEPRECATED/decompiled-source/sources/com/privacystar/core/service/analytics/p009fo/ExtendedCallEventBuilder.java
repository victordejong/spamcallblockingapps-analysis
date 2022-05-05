package com.privacystar.core.service.analytics.p009fo;

import android.support.annotation.NonNull;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.ParsedPhoneNumber;
import timber.log.Timber;
/* renamed from: com.privacystar.core.service.analytics.fo.ExtendedCallEventBuilder */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/fo/ExtendedCallEventBuilder.class */
public class ExtendedCallEventBuilder {
    private static ExtendedCallEventBuilder builder;
    private String blockReason;
    private Long callEndTime;
    private Long incomingTime;
    private ParsedPhoneNumber oppositeNumber;
    private Long resolutionTime;
    private Event.CallResolutionType resolutionType;

    private void finishFields() {
        if (this.blockReason == null) {
            this.blockReason = "";
        }
        if (this.callEndTime == null) {
            this.callEndTime = 0L;
        }
    }

    public static ExtendedCallEventBuilder getInstance() {
        if (builder == null) {
            Timber.m37d("New ExtendedCall event builder created.", new Object[0]);
            builder = new ExtendedCallEventBuilder();
        }
        Timber.m28v("Builder accessed with current values: %s", builder.toString());
        return builder;
    }

    public static void reset() {
        Timber.m28v("Builder reset.", new Object[0]);
        builder = null;
    }

    private static void setBuilder(ExtendedCallEventBuilder extendedCallEventBuilder) {
        synchronized (ExtendedCallEventBuilder.class) {
            try {
                builder = extendedCallEventBuilder;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void buildAndTrackIfReady() {
        if (isBuilderReady()) {
            finishFields();
            AnalyticsManager.INSTANCE.fire(new Event.ExtendedCallInformationEvent(this.oppositeNumber, this.resolutionType, this.blockReason, this.incomingTime.longValue(), this.resolutionTime.longValue(), this.callEndTime.longValue()));
            return;
        }
        Timber.m37d("Event is not fully populated and will not be tracked.", new Object[0]);
    }

    public boolean isBuilderReady() {
        boolean z = this.oppositeNumber != null;
        if (this.resolutionType == null) {
            z = false;
        }
        if (this.incomingTime == null) {
            z = false;
        }
        if (this.resolutionTime == null) {
            z = false;
        }
        return z;
    }

    public ExtendedCallEventBuilder setBlockReason(String str) {
        this.blockReason = str;
        return this;
    }

    public ExtendedCallEventBuilder setCallEndTime(long j) {
        this.callEndTime = Long.valueOf(j);
        return this;
    }

    public ExtendedCallEventBuilder setIncomingTime(long j) {
        this.incomingTime = Long.valueOf(j);
        return this;
    }

    public ExtendedCallEventBuilder setOppositeNumber(ParsedPhoneNumber parsedPhoneNumber) {
        this.oppositeNumber = parsedPhoneNumber;
        return this;
    }

    public ExtendedCallEventBuilder setResolutionTime(long j) {
        this.resolutionTime = Long.valueOf(j);
        return this;
    }

    public ExtendedCallEventBuilder setResolutionType(Event.CallResolutionType callResolutionType) {
        this.resolutionType = callResolutionType;
        return this;
    }

    @NonNull
    public String toString() {
        return "ExtendedCallEventBuilder{oppositeNumber=" + this.oppositeNumber + ", resolutionType=" + this.resolutionType + ", blockReason='" + this.blockReason + "', incomingTime=" + this.incomingTime + ", resolutionTime=" + this.resolutionTime + ", callEndTime=" + this.callEndTime + '}';
    }
}
