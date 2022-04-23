package org.threeten.p040bp.temporal;

import java.util.Locale;
import java.util.Map;
import org.threeten.p040bp.DayOfWeek;
import org.threeten.p040bp.Duration;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.chrono.Chronology;
import org.threeten.p040bp.chrono.IsoChronology;
import org.threeten.p040bp.format.ResolverStyle;
import org.threeten.p040bp.jdk8.Jdk8Methods;
/* renamed from: org.threeten.bp.temporal.IsoFields */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/IsoFields.class */
public final class IsoFields {
    public static final TemporalField DAY_OF_QUARTER = Field.DAY_OF_QUARTER;
    public static final TemporalField QUARTER_OF_YEAR = Field.QUARTER_OF_YEAR;
    public static final TemporalField WEEK_OF_WEEK_BASED_YEAR = Field.WEEK_OF_WEEK_BASED_YEAR;
    public static final TemporalField WEEK_BASED_YEAR = Field.WEEK_BASED_YEAR;
    public static final TemporalUnit WEEK_BASED_YEARS = Unit.WEEK_BASED_YEARS;
    public static final TemporalUnit QUARTER_YEARS = Unit.QUARTER_YEARS;

    /* renamed from: org.threeten.bp.temporal.IsoFields$1 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/IsoFields$1.class */
    static /* synthetic */ class C25411 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$IsoFields$Unit = new int[Unit.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$IsoFields$Unit[Unit.WEEK_BASED_YEARS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$IsoFields$Unit[Unit.QUARTER_YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.threeten.bp.temporal.IsoFields$Field */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/IsoFields$Field.class */
    public enum Field implements TemporalField {
        DAY_OF_QUARTER { // from class: org.threeten.bp.temporal.IsoFields.Field.1
            @Override // org.threeten.p040bp.temporal.TemporalField
            public <R extends Temporal> R adjustInto(R r, long j) {
                long from = getFrom(r);
                range().checkValidValue(j, this);
                return (R) r.with(ChronoField.DAY_OF_YEAR, r.getLong(ChronoField.DAY_OF_YEAR) + (j - from));
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public TemporalUnit getBaseUnit() {
                return ChronoUnit.DAYS;
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public long getFrom(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.isSupported(this)) {
                    throw new UnsupportedTemporalTypeException("Unsupported field: DayOfQuarter");
                }
                return temporalAccessor.get(ChronoField.DAY_OF_YEAR) - Field.QUARTER_DAYS[((temporalAccessor.get(ChronoField.MONTH_OF_YEAR) - 1) / 3) + (IsoChronology.INSTANCE.isLeapYear(temporalAccessor.getLong(ChronoField.YEAR)) ? 4 : 0)];
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public TemporalUnit getRangeUnit() {
                return IsoFields.QUARTER_YEARS;
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public boolean isSupportedBy(TemporalAccessor temporalAccessor) {
                return temporalAccessor.isSupported(ChronoField.DAY_OF_YEAR) && temporalAccessor.isSupported(ChronoField.MONTH_OF_YEAR) && temporalAccessor.isSupported(ChronoField.YEAR) && Field.isIso(temporalAccessor);
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public ValueRange range() {
                return ValueRange.m45of(1L, 90L, 92L);
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.isSupported(this)) {
                    throw new UnsupportedTemporalTypeException("Unsupported field: DayOfQuarter");
                }
                long j = temporalAccessor.getLong(QUARTER_OF_YEAR);
                if (j != 1) {
                    return j == 2 ? ValueRange.m46of(1L, 91L) : (j == 3 || j == 4) ? ValueRange.m46of(1L, 92L) : range();
                }
                return IsoChronology.INSTANCE.isLeapYear(temporalAccessor.getLong(ChronoField.YEAR)) ? ValueRange.m46of(1L, 91L) : ValueRange.m46of(1L, 90L);
            }

            /* JADX WARN: Code restructure failed: missing block: B:17:0x00b0, code lost:
                if (r0 == 2) goto L_0x00b3;
             */
            @Override // org.threeten.p040bp.temporal.IsoFields.Field, org.threeten.p040bp.temporal.TemporalField
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.threeten.p040bp.temporal.TemporalAccessor resolve(java.util.Map<org.threeten.p040bp.temporal.TemporalField, java.lang.Long> r7, org.threeten.p040bp.temporal.TemporalAccessor r8, org.threeten.p040bp.format.ResolverStyle r9) {
                /*
                    Method dump skipped, instructions count: 265
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.temporal.IsoFields.Field.C25421.resolve(java.util.Map, org.threeten.bp.temporal.TemporalAccessor, org.threeten.bp.format.ResolverStyle):org.threeten.bp.temporal.TemporalAccessor");
            }

            @Override // java.lang.Enum
            public String toString() {
                return "DayOfQuarter";
            }
        },
        QUARTER_OF_YEAR { // from class: org.threeten.bp.temporal.IsoFields.Field.2
            @Override // org.threeten.p040bp.temporal.TemporalField
            public <R extends Temporal> R adjustInto(R r, long j) {
                long from = getFrom(r);
                range().checkValidValue(j, this);
                return (R) r.with(ChronoField.MONTH_OF_YEAR, r.getLong(ChronoField.MONTH_OF_YEAR) + ((j - from) * 3));
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public TemporalUnit getBaseUnit() {
                return IsoFields.QUARTER_YEARS;
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public long getFrom(TemporalAccessor temporalAccessor) {
                if (temporalAccessor.isSupported(this)) {
                    return (temporalAccessor.getLong(ChronoField.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: QuarterOfYear");
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public TemporalUnit getRangeUnit() {
                return ChronoUnit.YEARS;
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public boolean isSupportedBy(TemporalAccessor temporalAccessor) {
                return temporalAccessor.isSupported(ChronoField.MONTH_OF_YEAR) && Field.isIso(temporalAccessor);
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public ValueRange range() {
                return ValueRange.m46of(1L, 4L);
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor) {
                return range();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "QuarterOfYear";
            }
        },
        WEEK_OF_WEEK_BASED_YEAR { // from class: org.threeten.bp.temporal.IsoFields.Field.3
            @Override // org.threeten.p040bp.temporal.TemporalField
            public <R extends Temporal> R adjustInto(R r, long j) {
                range().checkValidValue(j, this);
                return (R) r.plus(Jdk8Methods.safeSubtract(j, getFrom(r)), ChronoUnit.WEEKS);
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public TemporalUnit getBaseUnit() {
                return ChronoUnit.WEEKS;
            }

            @Override // org.threeten.p040bp.temporal.IsoFields.Field, org.threeten.p040bp.temporal.TemporalField
            public String getDisplayName(Locale locale) {
                Jdk8Methods.requireNonNull(locale, "locale");
                return "Week";
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public long getFrom(TemporalAccessor temporalAccessor) {
                if (temporalAccessor.isSupported(this)) {
                    return Field.getWeek(LocalDate.from(temporalAccessor));
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public TemporalUnit getRangeUnit() {
                return IsoFields.WEEK_BASED_YEARS;
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public boolean isSupportedBy(TemporalAccessor temporalAccessor) {
                return temporalAccessor.isSupported(ChronoField.EPOCH_DAY) && Field.isIso(temporalAccessor);
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public ValueRange range() {
                return ValueRange.m45of(1L, 52L, 53L);
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor) {
                if (temporalAccessor.isSupported(this)) {
                    return Field.getWeekRange(LocalDate.from(temporalAccessor));
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: WeekOfWeekBasedYear");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v40, types: [long] */
            /* JADX WARN: Type inference failed for: r18v0, types: [long] */
            /* JADX WARN: Type inference failed for: r18v1 */
            /* JADX WARN: Type inference failed for: r18v5 */
            /* JADX WARN: Type inference failed for: r18v6 */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // org.threeten.p040bp.temporal.IsoFields.Field, org.threeten.p040bp.temporal.TemporalField
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.threeten.p040bp.temporal.TemporalAccessor resolve(java.util.Map<org.threeten.p040bp.temporal.TemporalField, java.lang.Long> r7, org.threeten.p040bp.temporal.TemporalAccessor r8, org.threeten.p040bp.format.ResolverStyle r9) {
                /*
                    Method dump skipped, instructions count: 297
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.temporal.IsoFields.Field.C25443.resolve(java.util.Map, org.threeten.bp.temporal.TemporalAccessor, org.threeten.bp.format.ResolverStyle):org.threeten.bp.temporal.TemporalAccessor");
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekOfWeekBasedYear";
            }
        },
        WEEK_BASED_YEAR { // from class: org.threeten.bp.temporal.IsoFields.Field.4
            @Override // org.threeten.p040bp.temporal.TemporalField
            public <R extends Temporal> R adjustInto(R r, long j) {
                if (!isSupportedBy(r)) {
                    throw new UnsupportedTemporalTypeException("Unsupported field: WeekBasedYear");
                }
                int checkValidIntValue = range().checkValidIntValue(j, WEEK_BASED_YEAR);
                LocalDate from = LocalDate.from((TemporalAccessor) r);
                int i = from.get(ChronoField.DAY_OF_WEEK);
                int week = Field.getWeek(from);
                int i2 = week;
                if (week == 53) {
                    i2 = week;
                    if (Field.getWeekRange(checkValidIntValue) == 52) {
                        i2 = 52;
                    }
                }
                LocalDate of = LocalDate.m91of(checkValidIntValue, 1, 4);
                return (R) r.with(of.plusDays((i - of.get(ChronoField.DAY_OF_WEEK)) + ((i2 - 1) * 7)));
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public TemporalUnit getBaseUnit() {
                return IsoFields.WEEK_BASED_YEARS;
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public long getFrom(TemporalAccessor temporalAccessor) {
                if (temporalAccessor.isSupported(this)) {
                    return Field.getWeekBasedYear(LocalDate.from(temporalAccessor));
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: WeekBasedYear");
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public TemporalUnit getRangeUnit() {
                return ChronoUnit.FOREVER;
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public boolean isSupportedBy(TemporalAccessor temporalAccessor) {
                return temporalAccessor.isSupported(ChronoField.EPOCH_DAY) && Field.isIso(temporalAccessor);
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public ValueRange range() {
                return ChronoField.YEAR.range();
            }

            @Override // org.threeten.p040bp.temporal.TemporalField
            public ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor) {
                return ChronoField.YEAR.range();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekBasedYear";
            }
        };
        
        private static final int[] QUARTER_DAYS = {0, 90, 181, 273, 0, 91, 182, 274};

        /* synthetic */ Field(C25411 r7) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int getWeek(LocalDate localDate) {
            int ordinal = localDate.getDayOfWeek().ordinal();
            int dayOfYear = localDate.getDayOfYear() - 1;
            int i = (3 - ordinal) + dayOfYear;
            int i2 = (i - ((i / 7) * 7)) - 3;
            int i3 = i2;
            if (i2 < -3) {
                i3 = i2 + 7;
            }
            if (dayOfYear < i3) {
                return (int) getWeekRange(localDate.withDayOfYear(180).minusYears(1L)).getMaximum();
            }
            int i4 = ((dayOfYear - i3) / 7) + 1;
            int i5 = i4;
            if (i4 == 53) {
                i5 = i4;
                if (!(i3 == -3 || (i3 == -2 && localDate.isLeapYear()))) {
                    i5 = 1;
                }
            }
            return i5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int getWeekBasedYear(LocalDate localDate) {
            int i;
            int year = localDate.getYear();
            int dayOfYear = localDate.getDayOfYear();
            if (dayOfYear <= 3) {
                i = year;
                if (dayOfYear - localDate.getDayOfWeek().ordinal() < -2) {
                    i = year - 1;
                }
            } else {
                i = year;
                if (dayOfYear >= 363) {
                    i = year;
                    if (((dayOfYear - 363) - (localDate.isLeapYear() ? 1 : 0)) - localDate.getDayOfWeek().ordinal() >= 0) {
                        i = year + 1;
                    }
                }
            }
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int getWeekRange(int i) {
            LocalDate of = LocalDate.m91of(i, 1, 1);
            if (of.getDayOfWeek() != DayOfWeek.THURSDAY) {
                return (of.getDayOfWeek() != DayOfWeek.WEDNESDAY || !of.isLeapYear()) ? 52 : 53;
            }
            return 53;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ValueRange getWeekRange(LocalDate localDate) {
            return ValueRange.m46of(1L, getWeekRange(getWeekBasedYear(localDate)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isIso(TemporalAccessor temporalAccessor) {
            return Chronology.from(temporalAccessor).equals(IsoChronology.INSTANCE);
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public String getDisplayName(Locale locale) {
            Jdk8Methods.requireNonNull(locale, "locale");
            return toString();
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public boolean isDateBased() {
            return true;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public boolean isTimeBased() {
            return false;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public TemporalAccessor resolve(Map<TemporalField, Long> map, TemporalAccessor temporalAccessor, ResolverStyle resolverStyle) {
            return null;
        }
    }

    /* renamed from: org.threeten.bp.temporal.IsoFields$Unit */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/IsoFields$Unit.class */
    private enum Unit implements TemporalUnit {
        WEEK_BASED_YEARS("WeekBasedYears", Duration.ofSeconds(31556952)),
        QUARTER_YEARS("QuarterYears", Duration.ofSeconds(7889238));
        
        private final Duration duration;
        private final String name;

        Unit(String str, Duration duration) {
            this.name = str;
            this.duration = duration;
        }

        @Override // org.threeten.p040bp.temporal.TemporalUnit
        public <R extends Temporal> R addTo(R r, long j) {
            switch (C25411.$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit[ordinal()]) {
                case 1:
                    return (R) r.with(IsoFields.WEEK_BASED_YEAR, Jdk8Methods.safeAdd(r.get(IsoFields.WEEK_BASED_YEAR), j));
                case 2:
                    return (R) r.plus(j / 256, ChronoUnit.YEARS).plus((j % 256) * 3, ChronoUnit.MONTHS);
                default:
                    throw new IllegalStateException("Unreachable");
            }
        }

        @Override // org.threeten.p040bp.temporal.TemporalUnit
        public long between(Temporal temporal, Temporal temporal2) {
            switch (C25411.$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit[ordinal()]) {
                case 1:
                    return Jdk8Methods.safeSubtract(temporal2.getLong(IsoFields.WEEK_BASED_YEAR), temporal.getLong(IsoFields.WEEK_BASED_YEAR));
                case 2:
                    return temporal.until(temporal2, ChronoUnit.MONTHS) / 3;
                default:
                    throw new IllegalStateException("Unreachable");
            }
        }

        @Override // org.threeten.p040bp.temporal.TemporalUnit
        public Duration getDuration() {
            return this.duration;
        }

        @Override // org.threeten.p040bp.temporal.TemporalUnit
        public boolean isDateBased() {
            return true;
        }

        @Override // org.threeten.p040bp.temporal.TemporalUnit
        public boolean isDurationEstimated() {
            return true;
        }

        @Override // org.threeten.p040bp.temporal.TemporalUnit
        public boolean isSupportedBy(Temporal temporal) {
            return temporal.isSupported(ChronoField.EPOCH_DAY);
        }

        @Override // org.threeten.p040bp.temporal.TemporalUnit
        public boolean isTimeBased() {
            return false;
        }

        @Override // java.lang.Enum, org.threeten.p040bp.temporal.TemporalUnit
        public String toString() {
            return this.name;
        }
    }

    private IsoFields() {
        throw new AssertionError("Not instantiable");
    }
}
