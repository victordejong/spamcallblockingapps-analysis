package org.threeten.p040bp.chrono;

import java.util.Comparator;
import org.apache.commons.cli.HelpFormatter;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalTime;
import org.threeten.p040bp.format.DateTimeFormatter;
import org.threeten.p040bp.jdk8.DefaultInterfaceTemporal;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.ChronoUnit;
import org.threeten.p040bp.temporal.Temporal;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalAdjuster;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalQueries;
import org.threeten.p040bp.temporal.TemporalQuery;
import org.threeten.p040bp.temporal.TemporalUnit;
/* renamed from: org.threeten.bp.chrono.ChronoLocalDate */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/ChronoLocalDate.class */
public abstract class ChronoLocalDate extends DefaultInterfaceTemporal implements Temporal, TemporalAdjuster, Comparable<ChronoLocalDate> {
    private static final Comparator<ChronoLocalDate> DATE_COMPARATOR = new Comparator<ChronoLocalDate>() { // from class: org.threeten.bp.chrono.ChronoLocalDate.1
        public int compare(ChronoLocalDate chronoLocalDate, ChronoLocalDate chronoLocalDate2) {
            return Jdk8Methods.compareLongs(chronoLocalDate.toEpochDay(), chronoLocalDate2.toEpochDay());
        }
    };

    public static ChronoLocalDate from(TemporalAccessor temporalAccessor) {
        Jdk8Methods.requireNonNull(temporalAccessor, "temporal");
        if (temporalAccessor instanceof ChronoLocalDate) {
            return (ChronoLocalDate) temporalAccessor;
        }
        Chronology chronology = (Chronology) temporalAccessor.query(TemporalQueries.chronology());
        if (chronology != null) {
            return chronology.date(temporalAccessor);
        }
        throw new DateTimeException("No Chronology found to create ChronoLocalDate: " + temporalAccessor.getClass());
    }

    public static Comparator<ChronoLocalDate> timeLineOrder() {
        return DATE_COMPARATOR;
    }

    public Temporal adjustInto(Temporal temporal) {
        return temporal.with(ChronoField.EPOCH_DAY, toEpochDay());
    }

    public ChronoLocalDateTime<?> atTime(LocalTime localTime) {
        return ChronoLocalDateTimeImpl.m61of(this, localTime);
    }

    public int compareTo(ChronoLocalDate chronoLocalDate) {
        int compareLongs = Jdk8Methods.compareLongs(toEpochDay(), chronoLocalDate.toEpochDay());
        int i = compareLongs;
        if (compareLongs == 0) {
            i = getChronology().compareTo(chronoLocalDate.getChronology());
        }
        return i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChronoLocalDate)) {
            return false;
        }
        if (compareTo((ChronoLocalDate) obj) != 0) {
            z = false;
        }
        return z;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    public abstract Chronology getChronology();

    public Era getEra() {
        return getChronology().eraOf(get(ChronoField.ERA));
    }

    public int hashCode() {
        long epochDay = toEpochDay();
        return ((int) (epochDay ^ (epochDay >>> 32))) ^ getChronology().hashCode();
    }

    public boolean isAfter(ChronoLocalDate chronoLocalDate) {
        return toEpochDay() > chronoLocalDate.toEpochDay();
    }

    public boolean isBefore(ChronoLocalDate chronoLocalDate) {
        return toEpochDay() < chronoLocalDate.toEpochDay();
    }

    public boolean isEqual(ChronoLocalDate chronoLocalDate) {
        return toEpochDay() == chronoLocalDate.toEpochDay();
    }

    public boolean isLeapYear() {
        return getChronology().isLeapYear(getLong(ChronoField.YEAR));
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        if (temporalField instanceof ChronoField) {
            return temporalField.isDateBased();
        }
        return temporalField != null && temporalField.isSupportedBy(this);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public boolean isSupported(TemporalUnit temporalUnit) {
        if (temporalUnit instanceof ChronoUnit) {
            return temporalUnit.isDateBased();
        }
        return temporalUnit != null && temporalUnit.isSupportedBy(this);
    }

    public abstract int lengthOfMonth();

    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoLocalDate minus(long j, TemporalUnit temporalUnit) {
        return getChronology().ensureChronoLocalDate(super.minus(j, temporalUnit));
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoLocalDate minus(TemporalAmount temporalAmount) {
        return getChronology().ensureChronoLocalDate(super.minus(temporalAmount));
    }

    public abstract ChronoLocalDate plus(long j, TemporalUnit temporalUnit);

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoLocalDate plus(TemporalAmount temporalAmount) {
        return getChronology().ensureChronoLocalDate(super.plus(temporalAmount));
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.chronology()) {
            return (R) getChronology();
        }
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.DAYS;
        }
        if (temporalQuery == TemporalQueries.localDate()) {
            return (R) LocalDate.ofEpochDay(toEpochDay());
        }
        if (temporalQuery == TemporalQueries.localTime() || temporalQuery == TemporalQueries.zone() || temporalQuery == TemporalQueries.zoneId() || temporalQuery == TemporalQueries.offset()) {
            return null;
        }
        return (R) super.query(temporalQuery);
    }

    public long toEpochDay() {
        return getLong(ChronoField.EPOCH_DAY);
    }

    public String toString() {
        long j = getLong(ChronoField.YEAR_OF_ERA);
        long j2 = getLong(ChronoField.MONTH_OF_YEAR);
        long j3 = getLong(ChronoField.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(getChronology().toString());
        sb.append(" ");
        sb.append(getEra());
        sb.append(" ");
        sb.append(j);
        sb.append(j2 < 10 ? "-0" : HelpFormatter.DEFAULT_OPT_PREFIX);
        sb.append(j2);
        sb.append(j3 < 10 ? "-0" : HelpFormatter.DEFAULT_OPT_PREFIX);
        sb.append(j3);
        return sb.toString();
    }

    public abstract ChronoPeriod until(ChronoLocalDate chronoLocalDate);

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoLocalDate with(TemporalAdjuster temporalAdjuster) {
        return getChronology().ensureChronoLocalDate(super.with(temporalAdjuster));
    }

    public abstract ChronoLocalDate with(TemporalField temporalField, long j);
}
