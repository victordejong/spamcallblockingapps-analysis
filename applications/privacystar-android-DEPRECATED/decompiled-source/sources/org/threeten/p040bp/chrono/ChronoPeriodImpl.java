package org.threeten.p040bp.chrono;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.ChronoUnit;
import org.threeten.p040bp.temporal.Temporal;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalQueries;
import org.threeten.p040bp.temporal.TemporalUnit;
import org.threeten.p040bp.temporal.UnsupportedTemporalTypeException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.chrono.ChronoPeriodImpl */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/ChronoPeriodImpl.class */
public final class ChronoPeriodImpl extends ChronoPeriod implements Serializable {
    private static final long serialVersionUID = 275618735781L;
    private final Chronology chronology;
    private final int days;
    private final int months;
    private final int years;

    public ChronoPeriodImpl(Chronology chronology, int i, int i2, int i3) {
        this.chronology = chronology;
        this.years = i;
        this.months = i2;
        this.days = i3;
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod, org.threeten.p040bp.temporal.TemporalAmount
    public Temporal addTo(Temporal temporal) {
        Jdk8Methods.requireNonNull(temporal, "temporal");
        Chronology chronology = (Chronology) temporal.query(TemporalQueries.chronology());
        if (chronology == null || this.chronology.equals(chronology)) {
            Temporal temporal2 = temporal;
            if (this.years != 0) {
                temporal2 = temporal.plus(this.years, ChronoUnit.YEARS);
            }
            Temporal temporal3 = temporal2;
            if (this.months != 0) {
                temporal3 = temporal2.plus(this.months, ChronoUnit.MONTHS);
            }
            Temporal temporal4 = temporal3;
            if (this.days != 0) {
                temporal4 = temporal3.plus(this.days, ChronoUnit.DAYS);
            }
            return temporal4;
        }
        throw new DateTimeException("Invalid chronology, required: " + this.chronology.getId() + ", but was: " + chronology.getId());
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod
    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChronoPeriodImpl)) {
            return false;
        }
        ChronoPeriodImpl chronoPeriodImpl = (ChronoPeriodImpl) obj;
        if (!(this.years == chronoPeriodImpl.years && this.months == chronoPeriodImpl.months && this.days == chronoPeriodImpl.days && this.chronology.equals(chronoPeriodImpl.chronology))) {
            z = false;
        }
        return z;
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod, org.threeten.p040bp.temporal.TemporalAmount
    public long get(TemporalUnit temporalUnit) {
        if (temporalUnit == ChronoUnit.YEARS) {
            return this.years;
        }
        if (temporalUnit == ChronoUnit.MONTHS) {
            return this.months;
        }
        if (temporalUnit == ChronoUnit.DAYS) {
            return this.days;
        }
        throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod
    public Chronology getChronology() {
        return this.chronology;
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod, org.threeten.p040bp.temporal.TemporalAmount
    public List<TemporalUnit> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS));
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod
    public int hashCode() {
        return this.chronology.hashCode() + Integer.rotateLeft(this.years, 16) + Integer.rotateLeft(this.months, 8) + this.days;
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod
    public ChronoPeriod minus(TemporalAmount temporalAmount) {
        if (temporalAmount instanceof ChronoPeriodImpl) {
            ChronoPeriodImpl chronoPeriodImpl = (ChronoPeriodImpl) temporalAmount;
            if (chronoPeriodImpl.getChronology().equals(getChronology())) {
                return new ChronoPeriodImpl(this.chronology, Jdk8Methods.safeSubtract(this.years, chronoPeriodImpl.years), Jdk8Methods.safeSubtract(this.months, chronoPeriodImpl.months), Jdk8Methods.safeSubtract(this.days, chronoPeriodImpl.days));
            }
        }
        throw new DateTimeException("Unable to subtract amount: " + temporalAmount);
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod
    public ChronoPeriod multipliedBy(int i) {
        return new ChronoPeriodImpl(this.chronology, Jdk8Methods.safeMultiply(this.years, i), Jdk8Methods.safeMultiply(this.months, i), Jdk8Methods.safeMultiply(this.days, i));
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod
    public ChronoPeriod normalized() {
        if (!this.chronology.range(ChronoField.MONTH_OF_YEAR).isFixed()) {
            return this;
        }
        long maximum = (this.chronology.range(ChronoField.MONTH_OF_YEAR).getMaximum() - this.chronology.range(ChronoField.MONTH_OF_YEAR).getMinimum()) + 1;
        long j = (this.years * maximum) + this.months;
        return new ChronoPeriodImpl(this.chronology, Jdk8Methods.safeToInt(j / maximum), Jdk8Methods.safeToInt(j % maximum), this.days);
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod
    public ChronoPeriod plus(TemporalAmount temporalAmount) {
        if (temporalAmount instanceof ChronoPeriodImpl) {
            ChronoPeriodImpl chronoPeriodImpl = (ChronoPeriodImpl) temporalAmount;
            if (chronoPeriodImpl.getChronology().equals(getChronology())) {
                return new ChronoPeriodImpl(this.chronology, Jdk8Methods.safeAdd(this.years, chronoPeriodImpl.years), Jdk8Methods.safeAdd(this.months, chronoPeriodImpl.months), Jdk8Methods.safeAdd(this.days, chronoPeriodImpl.days));
            }
        }
        throw new DateTimeException("Unable to add amount: " + temporalAmount);
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod, org.threeten.p040bp.temporal.TemporalAmount
    public Temporal subtractFrom(Temporal temporal) {
        Jdk8Methods.requireNonNull(temporal, "temporal");
        Chronology chronology = (Chronology) temporal.query(TemporalQueries.chronology());
        if (chronology == null || this.chronology.equals(chronology)) {
            Temporal temporal2 = temporal;
            if (this.years != 0) {
                temporal2 = temporal.minus(this.years, ChronoUnit.YEARS);
            }
            Temporal temporal3 = temporal2;
            if (this.months != 0) {
                temporal3 = temporal2.minus(this.months, ChronoUnit.MONTHS);
            }
            Temporal temporal4 = temporal3;
            if (this.days != 0) {
                temporal4 = temporal3.minus(this.days, ChronoUnit.DAYS);
            }
            return temporal4;
        }
        throw new DateTimeException("Invalid chronology, required: " + this.chronology.getId() + ", but was: " + chronology.getId());
    }

    @Override // org.threeten.p040bp.chrono.ChronoPeriod
    public String toString() {
        if (isZero()) {
            return this.chronology + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.chronology);
        sb.append(' ');
        sb.append('P');
        if (this.years != 0) {
            sb.append(this.years);
            sb.append('Y');
        }
        if (this.months != 0) {
            sb.append(this.months);
            sb.append('M');
        }
        if (this.days != 0) {
            sb.append(this.days);
            sb.append('D');
        }
        return sb.toString();
    }
}
