package org.threeten.p040bp.chrono;

import java.util.List;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.Temporal;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalUnit;
/* renamed from: org.threeten.bp.chrono.ChronoPeriod */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/ChronoPeriod.class */
public abstract class ChronoPeriod implements TemporalAmount {
    public static ChronoPeriod between(ChronoLocalDate chronoLocalDate, ChronoLocalDate chronoLocalDate2) {
        Jdk8Methods.requireNonNull(chronoLocalDate, "startDateInclusive");
        Jdk8Methods.requireNonNull(chronoLocalDate2, "endDateExclusive");
        return chronoLocalDate.until(chronoLocalDate2);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAmount
    public abstract Temporal addTo(Temporal temporal);

    public abstract boolean equals(Object obj);

    @Override // org.threeten.p040bp.temporal.TemporalAmount
    public abstract long get(TemporalUnit temporalUnit);

    public abstract Chronology getChronology();

    @Override // org.threeten.p040bp.temporal.TemporalAmount
    public abstract List<TemporalUnit> getUnits();

    public abstract int hashCode();

    public boolean isNegative() {
        for (TemporalUnit temporalUnit : getUnits()) {
            if (get(temporalUnit) < 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isZero() {
        for (TemporalUnit temporalUnit : getUnits()) {
            if (get(temporalUnit) != 0) {
                return false;
            }
        }
        return true;
    }

    public abstract ChronoPeriod minus(TemporalAmount temporalAmount);

    public abstract ChronoPeriod multipliedBy(int i);

    public ChronoPeriod negated() {
        return multipliedBy(-1);
    }

    public abstract ChronoPeriod normalized();

    public abstract ChronoPeriod plus(TemporalAmount temporalAmount);

    @Override // org.threeten.p040bp.temporal.TemporalAmount
    public abstract Temporal subtractFrom(Temporal temporal);

    public abstract String toString();
}
