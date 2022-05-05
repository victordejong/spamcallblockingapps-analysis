package org.threeten.p040bp.chrono;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.threeten.p040bp.Clock;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.ValueRange;
/* renamed from: org.threeten.bp.chrono.ThaiBuddhistChronology */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/ThaiBuddhistChronology.class */
public final class ThaiBuddhistChronology extends Chronology implements Serializable {
    private static final String FALLBACK_LANGUAGE = "en";
    private static final String TARGET_LANGUAGE = "th";
    static final int YEARS_DIFFERENCE = 543;
    private static final long serialVersionUID = 2775954514031616474L;
    public static final ThaiBuddhistChronology INSTANCE = new ThaiBuddhistChronology();
    private static final HashMap<String, String[]> ERA_NARROW_NAMES = new HashMap<>();
    private static final HashMap<String, String[]> ERA_SHORT_NAMES = new HashMap<>();
    private static final HashMap<String, String[]> ERA_FULL_NAMES = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.chrono.ThaiBuddhistChronology$1 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/ThaiBuddhistChronology$1.class */
    public static /* synthetic */ class C25291 {
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

    static {
        ERA_NARROW_NAMES.put(FALLBACK_LANGUAGE, new String[]{"BB", "BE"});
        ERA_NARROW_NAMES.put(TARGET_LANGUAGE, new String[]{"BB", "BE"});
        ERA_SHORT_NAMES.put(FALLBACK_LANGUAGE, new String[]{"B.B.", "B.E."});
        ERA_SHORT_NAMES.put(TARGET_LANGUAGE, new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        ERA_FULL_NAMES.put(FALLBACK_LANGUAGE, new String[]{"Before Buddhist", "Budhhist Era"});
        ERA_FULL_NAMES.put(TARGET_LANGUAGE, new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    private ThaiBuddhistChronology() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate date(int i, int i2, int i3) {
        return new ThaiBuddhistDate(LocalDate.m91of(i - YEARS_DIFFERENCE, i2, i3));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate date(Era era, int i, int i2, int i3) {
        return (ThaiBuddhistDate) super.date(era, i, i2, i3);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate date(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof ThaiBuddhistDate ? (ThaiBuddhistDate) temporalAccessor : new ThaiBuddhistDate(LocalDate.from(temporalAccessor));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate dateEpochDay(long j) {
        return new ThaiBuddhistDate(LocalDate.ofEpochDay(j));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate dateNow() {
        return (ThaiBuddhistDate) super.dateNow();
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate dateNow(Clock clock) {
        Jdk8Methods.requireNonNull(clock, "clock");
        return (ThaiBuddhistDate) super.dateNow(clock);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate dateNow(ZoneId zoneId) {
        return (ThaiBuddhistDate) super.dateNow(zoneId);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate dateYearDay(int i, int i2) {
        return new ThaiBuddhistDate(LocalDate.ofYearDay(i - YEARS_DIFFERENCE, i2));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistDate dateYearDay(Era era, int i, int i2) {
        return (ThaiBuddhistDate) super.dateYearDay(era, i, i2);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ThaiBuddhistEra eraOf(int i) {
        return ThaiBuddhistEra.m48of(i);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public List<Era> eras() {
        return Arrays.asList(ThaiBuddhistEra.values());
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public String getCalendarType() {
        return "buddhist";
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public String getId() {
        return "ThaiBuddhist";
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public boolean isLeapYear(long j) {
        return IsoChronology.INSTANCE.isLeapYear(j - 543);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoLocalDateTime<ThaiBuddhistDate> localDateTime(TemporalAccessor temporalAccessor) {
        return super.localDateTime(temporalAccessor);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public int prolepticYear(Era era, int i) {
        if (!(era instanceof ThaiBuddhistEra)) {
            throw new ClassCastException("Era must be BuddhistEra");
        }
        if (era != ThaiBuddhistEra.BE) {
            i = 1 - i;
        }
        return i;
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ValueRange range(ChronoField chronoField) {
        switch (C25291.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()]) {
            case 1:
                ValueRange range = ChronoField.PROLEPTIC_MONTH.range();
                return ValueRange.m46of(range.getMinimum() + 6516, range.getMaximum() + 6516);
            case 2:
                ValueRange range2 = ChronoField.YEAR.range();
                return ValueRange.m45of(1L, (-(range2.getMinimum() + 543)) + 1, range2.getMaximum() + 543);
            case 3:
                ValueRange range3 = ChronoField.YEAR.range();
                return ValueRange.m46of(range3.getMinimum() + 543, range3.getMaximum() + 543);
            default:
                return chronoField.range();
        }
    }

    /* JADX WARN: Type inference failed for: r0v210, types: [org.threeten.bp.chrono.ThaiBuddhistDate] */
    /* JADX WARN: Type inference failed for: r0v64, types: [org.threeten.bp.chrono.ThaiBuddhistDate] */
    /* JADX WARN: Type inference failed for: r0v96, types: [org.threeten.bp.chrono.ThaiBuddhistDate] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // org.threeten.p040bp.chrono.Chronology
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.threeten.p040bp.chrono.ThaiBuddhistDate resolveDate(java.util.Map<org.threeten.p040bp.temporal.TemporalField, java.lang.Long> r9, org.threeten.p040bp.format.ResolverStyle r10) {
        /*
            Method dump skipped, instructions count: 1760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.chrono.ThaiBuddhistChronology.resolveDate(java.util.Map, org.threeten.bp.format.ResolverStyle):org.threeten.bp.chrono.ThaiBuddhistDate");
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoZonedDateTime<ThaiBuddhistDate> zonedDateTime(Instant instant, ZoneId zoneId) {
        return super.zonedDateTime(instant, zoneId);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoZonedDateTime<ThaiBuddhistDate> zonedDateTime(TemporalAccessor temporalAccessor) {
        return super.zonedDateTime(temporalAccessor);
    }
}
