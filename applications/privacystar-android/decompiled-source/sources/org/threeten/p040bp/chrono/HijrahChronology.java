package org.threeten.p040bp.chrono;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.threeten.p040bp.Clock;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.ValueRange;
/* renamed from: org.threeten.bp.chrono.HijrahChronology */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/HijrahChronology.class */
public final class HijrahChronology extends Chronology implements Serializable {
    private static final String FALLBACK_LANGUAGE = "en";
    private static final long serialVersionUID = 3127340209035924785L;
    public static final HijrahChronology INSTANCE = new HijrahChronology();
    private static final HashMap<String, String[]> ERA_NARROW_NAMES = new HashMap<>();
    private static final HashMap<String, String[]> ERA_SHORT_NAMES = new HashMap<>();
    private static final HashMap<String, String[]> ERA_FULL_NAMES = new HashMap<>();

    static {
        ERA_NARROW_NAMES.put(FALLBACK_LANGUAGE, new String[]{"BH", "HE"});
        ERA_SHORT_NAMES.put(FALLBACK_LANGUAGE, new String[]{"B.H.", "H.E."});
        ERA_FULL_NAMES.put(FALLBACK_LANGUAGE, new String[]{"Before Hijrah", "Hijrah Era"});
    }

    private HijrahChronology() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate date(int i, int i2, int i3) {
        return HijrahDate.m59of(i, i2, i3);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate date(Era era, int i, int i2, int i3) {
        return (HijrahDate) super.date(era, i, i2, i3);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate date(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof HijrahDate ? (HijrahDate) temporalAccessor : HijrahDate.ofEpochDay(temporalAccessor.getLong(ChronoField.EPOCH_DAY));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate dateEpochDay(long j) {
        return HijrahDate.m58of(LocalDate.ofEpochDay(j));
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate dateNow() {
        return (HijrahDate) super.dateNow();
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate dateNow(Clock clock) {
        Jdk8Methods.requireNonNull(clock, "clock");
        return (HijrahDate) super.dateNow(clock);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate dateNow(ZoneId zoneId) {
        return (HijrahDate) super.dateNow(zoneId);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.threeten.bp.chrono.HijrahDate] */
    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate dateYearDay(int i, int i2) {
        return HijrahDate.m59of(i, 1, 1).plusDays(i2 - 1);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahDate dateYearDay(Era era, int i, int i2) {
        return (HijrahDate) super.dateYearDay(era, i, i2);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public HijrahEra eraOf(int i) {
        switch (i) {
            case 0:
                return HijrahEra.BEFORE_AH;
            case 1:
                return HijrahEra.AH;
            default:
                throw new DateTimeException("invalid Hijrah era");
        }
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public List<Era> eras() {
        return Arrays.asList(HijrahEra.values());
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public String getCalendarType() {
        return "islamic-umalqura";
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public String getId() {
        return "Hijrah-umalqura";
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public boolean isLeapYear(long j) {
        return HijrahDate.isLeapYear(j);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoLocalDateTime<HijrahDate> localDateTime(TemporalAccessor temporalAccessor) {
        return super.localDateTime(temporalAccessor);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public int prolepticYear(Era era, int i) {
        if (!(era instanceof HijrahEra)) {
            throw new ClassCastException("Era must be HijrahEra");
        }
        if (era != HijrahEra.AH) {
            i = 1 - i;
        }
        return i;
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ValueRange range(ChronoField chronoField) {
        return chronoField.range();
    }

    /* JADX WARN: Type inference failed for: r0v210, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r0v64, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r0v96, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // org.threeten.p040bp.chrono.Chronology
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.threeten.p040bp.chrono.HijrahDate resolveDate(java.util.Map<org.threeten.p040bp.temporal.TemporalField, java.lang.Long> r9, org.threeten.p040bp.format.ResolverStyle r10) {
        /*
            Method dump skipped, instructions count: 1760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.chrono.HijrahChronology.resolveDate(java.util.Map, org.threeten.bp.format.ResolverStyle):org.threeten.bp.chrono.HijrahDate");
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoZonedDateTime<HijrahDate> zonedDateTime(Instant instant, ZoneId zoneId) {
        return super.zonedDateTime(instant, zoneId);
    }

    @Override // org.threeten.p040bp.chrono.Chronology
    public ChronoZonedDateTime<HijrahDate> zonedDateTime(TemporalAccessor temporalAccessor) {
        return super.zonedDateTime(temporalAccessor);
    }
}
