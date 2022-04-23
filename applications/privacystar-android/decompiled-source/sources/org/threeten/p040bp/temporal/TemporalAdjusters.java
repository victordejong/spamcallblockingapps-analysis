package org.threeten.p040bp.temporal;

import org.threeten.p040bp.DayOfWeek;
import org.threeten.p040bp.jdk8.Jdk8Methods;
/* renamed from: org.threeten.bp.temporal.TemporalAdjusters */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/TemporalAdjusters.class */
public final class TemporalAdjusters {

    /* renamed from: org.threeten.bp.temporal.TemporalAdjusters$DayOfWeekInMonth */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth.class */
    private static final class DayOfWeekInMonth implements TemporalAdjuster {
        private final int dowValue;
        private final int ordinal;

        private DayOfWeekInMonth(int i, DayOfWeek dayOfWeek) {
            this.ordinal = i;
            this.dowValue = dayOfWeek.getValue();
        }

        @Override // org.threeten.p040bp.temporal.TemporalAdjuster
        public Temporal adjustInto(Temporal temporal) {
            int i;
            if (this.ordinal >= 0) {
                Temporal with = temporal.with(ChronoField.DAY_OF_MONTH, 1L);
                return with.plus((int) ((((this.dowValue - with.get(ChronoField.DAY_OF_WEEK)) + 7) % 7) + ((this.ordinal - 1) * 7)), ChronoUnit.DAYS);
            }
            Temporal with2 = temporal.with(ChronoField.DAY_OF_MONTH, temporal.range(ChronoField.DAY_OF_MONTH).getMaximum());
            int i2 = this.dowValue - with2.get(ChronoField.DAY_OF_WEEK);
            if (i2 == 0) {
                i = 0;
            } else {
                i = i2;
                if (i2 > 0) {
                    i = i2 - 7;
                }
            }
            return with2.plus((int) (i - (((-this.ordinal) - 1) * 7)), ChronoUnit.DAYS);
        }
    }

    /* renamed from: org.threeten.bp.temporal.TemporalAdjusters$Impl */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/TemporalAdjusters$Impl.class */
    private static class Impl implements TemporalAdjuster {
        private final int ordinal;
        private static final Impl FIRST_DAY_OF_MONTH = new Impl(0);
        private static final Impl LAST_DAY_OF_MONTH = new Impl(1);
        private static final Impl FIRST_DAY_OF_NEXT_MONTH = new Impl(2);
        private static final Impl FIRST_DAY_OF_YEAR = new Impl(3);
        private static final Impl LAST_DAY_OF_YEAR = new Impl(4);
        private static final Impl FIRST_DAY_OF_NEXT_YEAR = new Impl(5);

        private Impl(int i) {
            this.ordinal = i;
        }

        @Override // org.threeten.p040bp.temporal.TemporalAdjuster
        public Temporal adjustInto(Temporal temporal) {
            switch (this.ordinal) {
                case 0:
                    return temporal.with(ChronoField.DAY_OF_MONTH, 1L);
                case 1:
                    return temporal.with(ChronoField.DAY_OF_MONTH, temporal.range(ChronoField.DAY_OF_MONTH).getMaximum());
                case 2:
                    return temporal.with(ChronoField.DAY_OF_MONTH, 1L).plus(1L, ChronoUnit.MONTHS);
                case 3:
                    return temporal.with(ChronoField.DAY_OF_YEAR, 1L);
                case 4:
                    return temporal.with(ChronoField.DAY_OF_YEAR, temporal.range(ChronoField.DAY_OF_YEAR).getMaximum());
                case 5:
                    return temporal.with(ChronoField.DAY_OF_YEAR, 1L).plus(1L, ChronoUnit.YEARS);
                default:
                    throw new IllegalStateException("Unreachable");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.threeten.bp.temporal.TemporalAdjusters$RelativeDayOfWeek */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek.class */
    public static final class RelativeDayOfWeek implements TemporalAdjuster {
        private final int dowValue;
        private final int relative;

        private RelativeDayOfWeek(int i, DayOfWeek dayOfWeek) {
            Jdk8Methods.requireNonNull(dayOfWeek, "dayOfWeek");
            this.relative = i;
            this.dowValue = dayOfWeek.getValue();
        }

        @Override // org.threeten.p040bp.temporal.TemporalAdjuster
        public Temporal adjustInto(Temporal temporal) {
            int i = temporal.get(ChronoField.DAY_OF_WEEK);
            if (this.relative < 2 && i == this.dowValue) {
                return temporal;
            }
            if ((this.relative & 1) == 0) {
                int i2 = i - this.dowValue;
                return temporal.plus(i2 >= 0 ? 7 - i2 : -i2, ChronoUnit.DAYS);
            }
            int i3 = this.dowValue - i;
            return temporal.minus(i3 >= 0 ? 7 - i3 : -i3, ChronoUnit.DAYS);
        }
    }

    private TemporalAdjusters() {
    }

    public static TemporalAdjuster dayOfWeekInMonth(int i, DayOfWeek dayOfWeek) {
        Jdk8Methods.requireNonNull(dayOfWeek, "dayOfWeek");
        return new DayOfWeekInMonth(i, dayOfWeek);
    }

    public static TemporalAdjuster firstDayOfMonth() {
        return Impl.FIRST_DAY_OF_MONTH;
    }

    public static TemporalAdjuster firstDayOfNextMonth() {
        return Impl.FIRST_DAY_OF_NEXT_MONTH;
    }

    public static TemporalAdjuster firstDayOfNextYear() {
        return Impl.FIRST_DAY_OF_NEXT_YEAR;
    }

    public static TemporalAdjuster firstDayOfYear() {
        return Impl.FIRST_DAY_OF_YEAR;
    }

    public static TemporalAdjuster firstInMonth(DayOfWeek dayOfWeek) {
        Jdk8Methods.requireNonNull(dayOfWeek, "dayOfWeek");
        return new DayOfWeekInMonth(1, dayOfWeek);
    }

    public static TemporalAdjuster lastDayOfMonth() {
        return Impl.LAST_DAY_OF_MONTH;
    }

    public static TemporalAdjuster lastDayOfYear() {
        return Impl.LAST_DAY_OF_YEAR;
    }

    public static TemporalAdjuster lastInMonth(DayOfWeek dayOfWeek) {
        Jdk8Methods.requireNonNull(dayOfWeek, "dayOfWeek");
        return new DayOfWeekInMonth(-1, dayOfWeek);
    }

    public static TemporalAdjuster next(DayOfWeek dayOfWeek) {
        return new RelativeDayOfWeek(2, dayOfWeek);
    }

    public static TemporalAdjuster nextOrSame(DayOfWeek dayOfWeek) {
        return new RelativeDayOfWeek(0, dayOfWeek);
    }

    public static TemporalAdjuster previous(DayOfWeek dayOfWeek) {
        return new RelativeDayOfWeek(3, dayOfWeek);
    }

    public static TemporalAdjuster previousOrSame(DayOfWeek dayOfWeek) {
        return new RelativeDayOfWeek(1, dayOfWeek);
    }
}
