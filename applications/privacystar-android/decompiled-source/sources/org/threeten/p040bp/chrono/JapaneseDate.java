package org.threeten.p040bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Calendar;
import org.threeten.p040bp.Clock;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalTime;
import org.threeten.p040bp.Period;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.Temporal;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalAdjuster;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalUnit;
import org.threeten.p040bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.p040bp.temporal.ValueRange;
/* renamed from: org.threeten.bp.chrono.JapaneseDate */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/JapaneseDate.class */
public final class JapaneseDate extends ChronoDateImpl<JapaneseDate> implements Serializable {
    static final LocalDate MIN_DATE = LocalDate.m91of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    private transient JapaneseEra era;
    private final LocalDate isoDate;
    private transient int yearOfEra;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.chrono.JapaneseDate$1 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/JapaneseDate$1.class */
    public static /* synthetic */ class C25261 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField = new int[ChronoField.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.DAY_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR_OF_ERA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_WEEK_OF_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_WEEK_OF_YEAR.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ERA.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JapaneseDate(LocalDate localDate) {
        if (localDate.isBefore(MIN_DATE)) {
            throw new DateTimeException("Minimum supported date is January 1st Meiji 6");
        }
        this.era = JapaneseEra.from(localDate);
        this.yearOfEra = localDate.getYear() - (this.era.startDate().getYear() - 1);
        this.isoDate = localDate;
    }

    JapaneseDate(JapaneseEra japaneseEra, int i, LocalDate localDate) {
        if (localDate.isBefore(MIN_DATE)) {
            throw new DateTimeException("Minimum supported date is January 1st Meiji 6");
        }
        this.era = japaneseEra;
        this.yearOfEra = i;
        this.isoDate = localDate;
    }

    private ValueRange actualRange(int i) {
        Calendar instance = Calendar.getInstance(JapaneseChronology.LOCALE);
        instance.set(0, this.era.getValue() + 2);
        instance.set(this.yearOfEra, this.isoDate.getMonthValue() - 1, this.isoDate.getDayOfMonth());
        return ValueRange.m46of(instance.getActualMinimum(i), instance.getActualMaximum(i));
    }

    public static JapaneseDate from(TemporalAccessor temporalAccessor) {
        return JapaneseChronology.INSTANCE.date(temporalAccessor);
    }

    private long getDayOfYear() {
        return this.yearOfEra == 1 ? (this.isoDate.getDayOfYear() - this.era.startDate().getDayOfYear()) + 1 : this.isoDate.getDayOfYear();
    }

    public static JapaneseDate now() {
        return now(Clock.systemDefaultZone());
    }

    public static JapaneseDate now(Clock clock) {
        return new JapaneseDate(LocalDate.now(clock));
    }

    public static JapaneseDate now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    /* renamed from: of */
    public static JapaneseDate m54of(int i, int i2, int i3) {
        return new JapaneseDate(LocalDate.m91of(i, i2, i3));
    }

    /* renamed from: of */
    public static JapaneseDate m53of(JapaneseEra japaneseEra, int i, int i2, int i3) {
        Jdk8Methods.requireNonNull(japaneseEra, "era");
        if (i < 1) {
            throw new DateTimeException("Invalid YearOfEra: " + i);
        }
        LocalDate startDate = japaneseEra.startDate();
        LocalDate endDate = japaneseEra.endDate();
        LocalDate of = LocalDate.m91of((startDate.getYear() - 1) + i, i2, i3);
        if (!of.isBefore(startDate) && !of.isAfter(endDate)) {
            return new JapaneseDate(japaneseEra, i, of);
        }
        throw new DateTimeException("Requested date is outside bounds of era " + japaneseEra);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JapaneseDate ofYearDay(JapaneseEra japaneseEra, int i, int i2) {
        Jdk8Methods.requireNonNull(japaneseEra, "era");
        if (i < 1) {
            throw new DateTimeException("Invalid YearOfEra: " + i);
        }
        LocalDate startDate = japaneseEra.startDate();
        LocalDate endDate = japaneseEra.endDate();
        int i3 = i2;
        if (i == 1) {
            int dayOfYear = i2 + (startDate.getDayOfYear() - 1);
            i3 = dayOfYear;
            if (dayOfYear > startDate.lengthOfYear()) {
                throw new DateTimeException("DayOfYear exceeds maximum allowed in the first year of era " + japaneseEra);
            }
        }
        LocalDate ofYearDay = LocalDate.ofYearDay((startDate.getYear() - 1) + i, i3);
        if (!ofYearDay.isBefore(startDate) && !ofYearDay.isAfter(endDate)) {
            return new JapaneseDate(japaneseEra, i, ofYearDay);
        }
        throw new DateTimeException("Requested date is outside bounds of era " + japaneseEra);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ChronoLocalDate readExternal(DataInput dataInput) throws IOException {
        return JapaneseChronology.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.era = JapaneseEra.from(this.isoDate);
        this.yearOfEra = this.isoDate.getYear() - (this.era.startDate().getYear() - 1);
    }

    private JapaneseDate with(LocalDate localDate) {
        return localDate.equals(this.isoDate) ? this : new JapaneseDate(localDate);
    }

    private JapaneseDate withYear(int i) {
        return withYear(getEra(), i);
    }

    private JapaneseDate withYear(JapaneseEra japaneseEra, int i) {
        return with(this.isoDate.withYear(JapaneseChronology.INSTANCE.prolepticYear(japaneseEra, i)));
    }

    private Object writeReplace() {
        return new Ser((byte) 1, this);
    }

    @Override // org.threeten.p040bp.chrono.ChronoDateImpl, org.threeten.p040bp.chrono.ChronoLocalDate
    public final ChronoLocalDateTime<JapaneseDate> atTime(LocalTime localTime) {
        return super.atTime(localTime);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JapaneseDate) {
            return this.isoDate.equals(((JapaneseDate) obj).isoDate);
        }
        return false;
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public JapaneseChronology getChronology() {
        return JapaneseChronology.INSTANCE;
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public JapaneseEra getEra() {
        return this.era;
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.getFrom(this);
        }
        switch (C25261.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return getDayOfYear();
            case 2:
                return this.yearOfEra;
            case 3:
            case 4:
            case 5:
            case 6:
                throw new UnsupportedTemporalTypeException("Unsupported field: " + temporalField);
            case 7:
                return this.era.getValue();
            default:
                return this.isoDate.getLong(temporalField);
        }
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public int hashCode() {
        return getChronology().getId().hashCode() ^ this.isoDate.hashCode();
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        if (temporalField == ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH || temporalField == ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR || temporalField == ChronoField.ALIGNED_WEEK_OF_MONTH || temporalField == ChronoField.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return super.isSupported(temporalField);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public int lengthOfMonth() {
        return this.isoDate.lengthOfMonth();
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public int lengthOfYear() {
        Calendar instance = Calendar.getInstance(JapaneseChronology.LOCALE);
        instance.set(0, this.era.getValue() + 2);
        instance.set(this.yearOfEra, this.isoDate.getMonthValue() - 1, this.isoDate.getDayOfMonth());
        return instance.getActualMaximum(6);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public JapaneseDate minus(long j, TemporalUnit temporalUnit) {
        return (JapaneseDate) super.minus(j, temporalUnit);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public JapaneseDate minus(TemporalAmount temporalAmount) {
        return (JapaneseDate) super.minus(temporalAmount);
    }

    @Override // org.threeten.p040bp.chrono.ChronoDateImpl, org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.temporal.Temporal
    public JapaneseDate plus(long j, TemporalUnit temporalUnit) {
        return (JapaneseDate) super.plus(j, temporalUnit);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public JapaneseDate plus(TemporalAmount temporalAmount) {
        return (JapaneseDate) super.plus(temporalAmount);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.p040bp.chrono.ChronoDateImpl
    public ChronoDateImpl<JapaneseDate> plusDays(long j) {
        return with(this.isoDate.plusDays(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.p040bp.chrono.ChronoDateImpl
    public ChronoDateImpl<JapaneseDate> plusMonths(long j) {
        return with(this.isoDate.plusMonths(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.p040bp.chrono.ChronoDateImpl
    public ChronoDateImpl<JapaneseDate> plusYears(long j) {
        return with(this.isoDate.plusYears(j));
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.rangeRefinedBy(this);
        }
        if (isSupported(temporalField)) {
            ChronoField chronoField = (ChronoField) temporalField;
            switch (C25261.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()]) {
                case 1:
                    return actualRange(6);
                case 2:
                    return actualRange(1);
                default:
                    return getChronology().range(chronoField);
            }
        } else {
            throw new UnsupportedTemporalTypeException("Unsupported field: " + temporalField);
        }
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public long toEpochDay() {
        return this.isoDate.toEpochDay();
    }

    @Override // org.threeten.p040bp.chrono.ChronoDateImpl, org.threeten.p040bp.temporal.Temporal
    public /* bridge */ /* synthetic */ long until(Temporal temporal, TemporalUnit temporalUnit) {
        return super.until(temporal, temporalUnit);
    }

    @Override // org.threeten.p040bp.chrono.ChronoDateImpl, org.threeten.p040bp.chrono.ChronoLocalDate
    public ChronoPeriod until(ChronoLocalDate chronoLocalDate) {
        Period until = this.isoDate.until(chronoLocalDate);
        return getChronology().period(until.getYears(), until.getMonths(), until.getDays());
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public JapaneseDate with(TemporalAdjuster temporalAdjuster) {
        return (JapaneseDate) super.with(temporalAdjuster);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.temporal.Temporal
    public org.threeten.p040bp.chrono.JapaneseDate with(org.threeten.p040bp.temporal.TemporalField r8, long r9) {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0 instanceof org.threeten.p040bp.temporal.ChronoField
            if (r0 == 0) goto L_0x00bb
            r0 = r8
            org.threeten.bp.temporal.ChronoField r0 = (org.threeten.p040bp.temporal.ChronoField) r0
            r11 = r0
            r0 = r7
            r1 = r11
            long r0 = r0.getLong(r1)
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001a
            r0 = r7
            return r0
        L_0x001a:
            int[] r0 = org.threeten.p040bp.chrono.JapaneseDate.C25261.$SwitchMap$org$threeten$bp$temporal$ChronoField
            r1 = r11
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            r1 = 7
            if (r0 == r1) goto L_0x0047
            r0 = r12
            switch(r0) {
                case 1: goto L_0x0047;
                case 2: goto L_0x0047;
                default: goto L_0x0044;
            }
        L_0x0044:
            goto L_0x0084
        L_0x0047:
            r0 = r7
            org.threeten.bp.chrono.JapaneseChronology r0 = r0.getChronology()
            r1 = r11
            org.threeten.bp.temporal.ValueRange r0 = r0.range(r1)
            r1 = r9
            r2 = r11
            int r0 = r0.checkValidIntValue(r1, r2)
            r12 = r0
            int[] r0 = org.threeten.p040bp.chrono.JapaneseDate.C25261.$SwitchMap$org$threeten$bp$temporal$ChronoField
            r1 = r11
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            r1 = 7
            if (r0 == r1) goto L_0x00ad
            r0 = r13
            switch(r0) {
                case 1: goto L_0x0099;
                case 2: goto L_0x0092;
                default: goto L_0x0084;
            }
        L_0x0084:
            r0 = r7
            r1 = r7
            org.threeten.bp.LocalDate r1 = r1.isoDate
            r2 = r8
            r3 = r9
            org.threeten.bp.LocalDate r1 = r1.with(r2, r3)
            org.threeten.bp.chrono.JapaneseDate r0 = r0.with(r1)
            return r0
        L_0x0092:
            r0 = r7
            r1 = r12
            org.threeten.bp.chrono.JapaneseDate r0 = r0.withYear(r1)
            return r0
        L_0x0099:
            r0 = r7
            r1 = r7
            org.threeten.bp.LocalDate r1 = r1.isoDate
            r2 = r12
            long r2 = (long) r2
            r3 = r7
            long r3 = r3.getDayOfYear()
            long r2 = r2 - r3
            org.threeten.bp.LocalDate r1 = r1.plusDays(r2)
            org.threeten.bp.chrono.JapaneseDate r0 = r0.with(r1)
            return r0
        L_0x00ad:
            r0 = r7
            r1 = r12
            org.threeten.bp.chrono.JapaneseEra r1 = org.threeten.p040bp.chrono.JapaneseEra.m52of(r1)
            r2 = r7
            int r2 = r2.yearOfEra
            org.threeten.bp.chrono.JapaneseDate r0 = r0.withYear(r1, r2)
            return r0
        L_0x00bb:
            r0 = r8
            r1 = r7
            r2 = r9
            org.threeten.bp.temporal.Temporal r0 = r0.adjustInto(r1, r2)
            org.threeten.bp.chrono.JapaneseDate r0 = (org.threeten.p040bp.chrono.JapaneseDate) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.chrono.JapaneseDate.with(org.threeten.bp.temporal.TemporalField, long):org.threeten.bp.chrono.JapaneseDate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(get(ChronoField.YEAR));
        dataOutput.writeByte(get(ChronoField.MONTH_OF_YEAR));
        dataOutput.writeByte(get(ChronoField.DAY_OF_MONTH));
    }
}
