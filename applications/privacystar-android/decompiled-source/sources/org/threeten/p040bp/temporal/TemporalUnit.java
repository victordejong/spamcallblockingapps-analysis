package org.threeten.p040bp.temporal;

import org.threeten.p040bp.Duration;
/* renamed from: org.threeten.bp.temporal.TemporalUnit */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/TemporalUnit.class */
public interface TemporalUnit {
    <R extends Temporal> R addTo(R r, long j);

    long between(Temporal temporal, Temporal temporal2);

    Duration getDuration();

    boolean isDateBased();

    boolean isDurationEstimated();

    boolean isSupportedBy(Temporal temporal);

    boolean isTimeBased();

    String toString();
}
