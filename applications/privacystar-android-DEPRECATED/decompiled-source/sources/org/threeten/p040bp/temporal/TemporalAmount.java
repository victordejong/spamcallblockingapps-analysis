package org.threeten.p040bp.temporal;

import java.util.List;
/* renamed from: org.threeten.bp.temporal.TemporalAmount */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/TemporalAmount.class */
public interface TemporalAmount {
    Temporal addTo(Temporal temporal);

    long get(TemporalUnit temporalUnit);

    List<TemporalUnit> getUnits();

    Temporal subtractFrom(Temporal temporal);
}
