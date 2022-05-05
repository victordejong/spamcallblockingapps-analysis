package org.threeten.p040bp.chrono;

import com.privacystar.core.util.DateUtil;
import java.util.Comparator;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalTime;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.ZoneOffset;
import org.threeten.p040bp.chrono.ChronoLocalDate;
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
import org.threeten.p040bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.p040bp.temporal.ValueRange;
/* renamed from: org.threeten.bp.chrono.ChronoZonedDateTime */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/ChronoZonedDateTime.class */
public abstract class ChronoZonedDateTime<D extends ChronoLocalDate> extends DefaultInterfaceTemporal implements Temporal, Comparable<ChronoZonedDateTime<?>> {
    private static Comparator<ChronoZonedDateTime<?>> INSTANT_COMPARATOR = new Comparator<ChronoZonedDateTime<?>>() { // from class: org.threeten.bp.chrono.ChronoZonedDateTime.1
        public int compare(ChronoZonedDateTime<?> chronoZonedDateTime, ChronoZonedDateTime<?> chronoZonedDateTime2) {
            int compareLongs = Jdk8Methods.compareLongs(chronoZonedDateTime.toEpochSecond(), chronoZonedDateTime2.toEpochSecond());
            int i = compareLongs;
            if (compareLongs == 0) {
                i = Jdk8Methods.compareLongs(chronoZonedDateTime.toLocalTime().toNanoOfDay(), chronoZonedDateTime2.toLocalTime().toNanoOfDay());
            }
            return i;
        }
    };

    /* renamed from: org.threeten.bp.chrono.ChronoZonedDateTime$2 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/ChronoZonedDateTime$2.class */
    static /* synthetic */ class C25202 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField = new int[ChronoField.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static ChronoZonedDateTime<?> from(TemporalAccessor temporalAccessor) {
        Jdk8Methods.requireNonNull(temporalAccessor, "temporal");
        if (temporalAccessor instanceof ChronoZonedDateTime) {
            return (ChronoZonedDateTime) temporalAccessor;
        }
        Chronology chronology = (Chronology) temporalAccessor.query(TemporalQueries.chronology());
        if (chronology != null) {
            return chronology.zonedDateTime(temporalAccessor);
        }
        throw new DateTimeException("No Chronology found to create ChronoZonedDateTime: " + temporalAccessor.getClass());
    }

    public static Comparator<ChronoZonedDateTime<?>> timeLineOrder() {
        return INSTANT_COMPARATOR;
    }

    public int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        int compareLongs = Jdk8Methods.compareLongs(toEpochSecond(), chronoZonedDateTime.toEpochSecond());
        int i = compareLongs;
        if (compareLongs == 0) {
            int nano = toLocalTime().getNano() - chronoZonedDateTime.toLocalTime().getNano();
            i = nano;
            if (nano == 0) {
                int compareTo = toLocalDateTime().compareTo(chronoZonedDateTime.toLocalDateTime());
                i = compareTo;
                if (compareTo == 0) {
                    int compareTo2 = getZone().getId().compareTo(chronoZonedDateTime.getZone().getId());
                    i = compareTo2;
                    if (compareTo2 == 0) {
                        i = toLocalDate().getChronology().compareTo(chronoZonedDateTime.toLocalDate().getChronology());
                    }
                }
            }
        }
        return i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChronoZonedDateTime)) {
            return false;
        }
        if (compareTo((ChronoZonedDateTime) obj) != 0) {
            z = false;
        }
        return z;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public int get(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return super.get(temporalField);
        }
        switch (C25202.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                throw new UnsupportedTemporalTypeException("Field too large for an int: " + temporalField);
            case 2:
                return getOffset().getTotalSeconds();
            default:
                return toLocalDateTime().get(temporalField);
        }
    }

    public Chronology getChronology() {
        return toLocalDate().getChronology();
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.getFrom(this);
        }
        switch (C25202.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return toEpochSecond();
            case 2:
                return getOffset().getTotalSeconds();
            default:
                return toLocalDateTime().getLong(temporalField);
        }
    }

    public abstract ZoneOffset getOffset();

    public abstract ZoneId getZone();

    public int hashCode() {
        return (toLocalDateTime().hashCode() ^ getOffset().hashCode()) ^ Integer.rotateLeft(getZone().hashCode(), 3);
    }

    public boolean isAfter(ChronoZonedDateTime<?> chronoZonedDateTime) {
        int i = (toEpochSecond() > chronoZonedDateTime.toEpochSecond() ? 1 : (toEpochSecond() == chronoZonedDateTime.toEpochSecond() ? 0 : -1));
        return i > 0 || (i == 0 && toLocalTime().getNano() > chronoZonedDateTime.toLocalTime().getNano());
    }

    public boolean isBefore(ChronoZonedDateTime<?> chronoZonedDateTime) {
        int i = (toEpochSecond() > chronoZonedDateTime.toEpochSecond() ? 1 : (toEpochSecond() == chronoZonedDateTime.toEpochSecond() ? 0 : -1));
        return i < 0 || (i == 0 && toLocalTime().getNano() < chronoZonedDateTime.toLocalTime().getNano());
    }

    public boolean isEqual(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return toEpochSecond() == chronoZonedDateTime.toEpochSecond() && toLocalTime().getNano() == chronoZonedDateTime.toLocalTime().getNano();
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoZonedDateTime<D> minus(long j, TemporalUnit temporalUnit) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.minus(j, temporalUnit));
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoZonedDateTime<D> minus(TemporalAmount temporalAmount) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.minus(temporalAmount));
    }

    public abstract ChronoZonedDateTime<D> plus(long j, TemporalUnit temporalUnit);

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoZonedDateTime<D> plus(TemporalAmount temporalAmount) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.plus(temporalAmount));
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        return (temporalQuery == TemporalQueries.zoneId() || temporalQuery == TemporalQueries.zone()) ? (R) getZone() : temporalQuery == TemporalQueries.chronology() ? (R) toLocalDate().getChronology() : temporalQuery == TemporalQueries.precision() ? (R) ChronoUnit.NANOS : temporalQuery == TemporalQueries.offset() ? (R) getOffset() : temporalQuery == TemporalQueries.localDate() ? (R) LocalDate.ofEpochDay(toLocalDate().toEpochDay()) : temporalQuery == TemporalQueries.localTime() ? (R) toLocalTime() : (R) super.query(temporalQuery);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? (temporalField == ChronoField.INSTANT_SECONDS || temporalField == ChronoField.OFFSET_SECONDS) ? temporalField.range() : toLocalDateTime().range(temporalField) : temporalField.rangeRefinedBy(this);
    }

    public long toEpochSecond() {
        return ((toLocalDate().toEpochDay() * DateUtil.DAY_IN_SECONDS) + toLocalTime().toSecondOfDay()) - getOffset().getTotalSeconds();
    }

    public Instant toInstant() {
        return Instant.ofEpochSecond(toEpochSecond(), toLocalTime().getNano());
    }

    public D toLocalDate() {
        return toLocalDateTime().toLocalDate();
    }

    public abstract ChronoLocalDateTime<D> toLocalDateTime();

    public LocalTime toLocalTime() {
        return toLocalDateTime().toLocalTime();
    }

    public String toString() {
        String str = toLocalDateTime().toString() + getOffset().toString();
        String str2 = str;
        if (getOffset() != getZone()) {
            str2 = str + '[' + getZone().toString() + ']';
        }
        return str2;
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoZonedDateTime<D> with(TemporalAdjuster temporalAdjuster) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.with(temporalAdjuster));
    }

    public abstract ChronoZonedDateTime<D> with(TemporalField temporalField, long j);

    public abstract ChronoZonedDateTime<D> withEarlierOffsetAtOverlap();

    public abstract ChronoZonedDateTime<D> withLaterOffsetAtOverlap();

    public abstract ChronoZonedDateTime<D> withZoneSameInstant(ZoneId zoneId);

    public abstract ChronoZonedDateTime<D> withZoneSameLocal(ZoneId zoneId);
}
