package com.amazonaws.util;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/TimingInfo.class */
public class TimingInfo {
    public Long endTimeNano;
    public final long startTimeNano;

    public TimingInfo(Long l, long j, Long l2) {
        this.startTimeNano = j;
        this.endTimeNano = l2;
    }

    public static double durationMilliOf(long j, long j2) {
        return TimeUnit.NANOSECONDS.toMicros(j2 - j) / 1000.0d;
    }

    public static TimingInfo startTiming() {
        return new TimingInfo(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo startTimingFullSupport() {
        return new TimingInfoFullSupport(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo startTimingFullSupport(long j) {
        return new TimingInfoFullSupport(null, j, null);
    }

    public static TimingInfo unmodifiableTimingInfo(long j, Long l) {
        return new TimingInfoUnmodifiable(null, j, l);
    }

    public void addSubMeasurement(String str, TimingInfo timingInfo) {
    }

    public TimingInfo endTiming() {
        this.endTimeNano = Long.valueOf(System.nanoTime());
        return this;
    }

    public Map<String, Number> getAllCounters() {
        return Collections.emptyMap();
    }

    public final long getEndTimeNano() {
        Long l = this.endTimeNano;
        return l == null ? -1L : l.longValue();
    }

    public final long getStartTimeNano() {
        return this.startTimeNano;
    }

    public Map<String, List<TimingInfo>> getSubMeasurementsByName() {
        return Collections.emptyMap();
    }

    @Deprecated
    public final double getTimeTakenMillis() {
        Double timeTakenMillisIfKnown = getTimeTakenMillisIfKnown();
        return timeTakenMillisIfKnown == null ? -1.0d : timeTakenMillisIfKnown.doubleValue();
    }

    public final Double getTimeTakenMillisIfKnown() {
        return isEndTimeKnown() ? Double.valueOf(durationMilliOf(this.startTimeNano, this.endTimeNano.longValue())) : null;
    }

    public void incrementCounter(String str) {
    }

    public final boolean isEndTimeKnown() {
        return this.endTimeNano != null;
    }

    public void setCounter(String str, long j) {
    }

    public final String toString() {
        return String.valueOf(getTimeTakenMillis());
    }
}
