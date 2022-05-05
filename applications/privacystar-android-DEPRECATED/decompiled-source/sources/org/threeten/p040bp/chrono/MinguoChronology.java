package org.threeten.p040bp.chrono;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.threeten.p040bp.Clock;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.ValueRange;
/* renamed from: org.threeten.bp.chrono.MinguoChronology */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/MinguoChronology.class */
public final class MinguoChronology extends Chronology implements Serializable {
    public static final MinguoChronology INSTANCE = new MinguoChronology();
    static final int YEARS_DIFFERENCE = 1911;
    private static final long serialVersionUID = 1039765215346859963L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.chrono.MinguoChronology$1 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/MinguoChronology$1.class */
    public static /* synthetic */ class C25271 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField = new int[ChronoField.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.PROLEPTIC_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR_OF_ERA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private MinguoChronology() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate date(int i, int i2, int i3) {
        return new MinguoDate(LocalDate.m91of(i + YEARS_DIFFERENCE, i2, i3));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate date(Era era, int i, int i2, int i3) {
        return (MinguoDate) super.date(era, i, i2, i3);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate date(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof MinguoDate ? (MinguoDate) temporalAccessor : new MinguoDate(LocalDate.from(temporalAccessor));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate dateEpochDay(long j) {
        return new MinguoDate(LocalDate.ofEpochDay(j));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate dateNow() {
        return (MinguoDate) super.dateNow();
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate dateNow(Clock clock) {
        Jdk8Methods.requireNonNull(clock, "clock");
        return (MinguoDate) super.dateNow(clock);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate dateNow(ZoneId zoneId) {
        return (MinguoDate) super.dateNow(zoneId);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate dateYearDay(int i, int i2) {
        return new MinguoDate(LocalDate.ofYearDay(i + YEARS_DIFFERENCE, i2));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoDate dateYearDay(Era era, int i, int i2) {
        return (MinguoDate) super.dateYearDay(era, i, i2);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public MinguoEra eraOf(int i) {
        return MinguoEra.m50of(i);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public List<Era> eras() {
        return Arrays.asList(MinguoEra.values());
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public String getCalendarType() {
        return "roc";
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public String getId() {
        return "Minguo";
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public boolean isLeapYear(long j) {
        return IsoChronology.INSTANCE.isLeapYear(j + 1911);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoLocalDateTime<MinguoDate> localDateTime(TemporalAccessor temporalAccessor) {
        return super.localDateTime(temporalAccessor);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public int prolepticYear(Era era, int i) {
        if (!(era instanceof MinguoEra)) {
            throw new ClassCastException("Era must be MinguoEra");
        }
        if (era != MinguoEra.ROC) {
            i = 1 - i;
        }
        return i;
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ValueRange range(ChronoField chronoField) {
        switch (C25271.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()]) {
            case 1:
                ValueRange range = ChronoField.PROLEPTIC_MONTH.range();
                return ValueRange.m46of(range.getMinimum() - 22932, range.getMaximum() - 22932);
            case 2:
                ValueRange range2 = ChronoField.YEAR.range();
                return ValueRange.m45of(1L, range2.getMaximum() - 1911, (-range2.getMinimum()) + 1 + 1911);
            case 3:
                ValueRange range3 = ChronoField.YEAR.range();
                return ValueRange.m46of(range3.getMinimum() - 1911, range3.getMaximum() - 1911);
            default:
                return chronoField.range();
        }
    }

    /* JADX WARN: Type inference failed for: r0v210, types: [org.threeten.bp.chrono.MinguoDate] */
    /* JADX WARN: Type inference failed for: r0v64, types: [org.threeten.bp.chrono.MinguoDate] */
    /* JADX WARN: Type inference failed for: r0v96, types: [org.threeten.bp.chrono.MinguoDate] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // org.threeten.p040bp.chrono.Chronology
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.threeten.p040bp.chrono.MinguoDate resolveDate(java.util.Map<org.threeten.p040bp.temporal.TemporalField, java.lang.Long> r9, org.threeten.p040bp.format.ResolverStyle r10) {
        /*
            Method dump skipped, instructions count: 1760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.chrono.MinguoChronology.resolveDate(java.util.Map, org.threeten.bp.format.ResolverStyle):org.threeten.bp.chrono.MinguoDate");
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoZonedDateTime<MinguoDate> zonedDateTime(Instant instant, ZoneId zoneId) {
        return super.zonedDateTime(instant, zoneId);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoZonedDateTime<MinguoDate> zonedDateTime(TemporalAccessor temporalAccessor) {
        return super.zonedDateTime(temporalAccessor);
    }
}
