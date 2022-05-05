package org.threeten.p040bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.threeten.p040bp.chrono.Chronology;
import org.threeten.p040bp.chrono.IsoChronology;
import org.threeten.p040bp.format.DateTimeFormatter;
import org.threeten.p040bp.format.DateTimeFormatterBuilder;
import org.threeten.p040bp.format.SignStyle;
import org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor;
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
/* renamed from: org.threeten.bp.Year */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/Year.class */
public final class Year extends DefaultInterfaceTemporalAccessor implements Temporal, TemporalAdjuster, Comparable<Year>, Serializable {
    public static final int MAX_VALUE = 999999999;
    public static final int MIN_VALUE = -999999999;
    private static final long serialVersionUID = -23038383694477807L;
    private final int year;
    public static final TemporalQuery<Year> FROM = new TemporalQuery<Year>() { // from class: org.threeten.bp.Year.1
        @Override // org.threeten.p040bp.temporal.TemporalQuery
        public Year queryFrom(TemporalAccessor temporalAccessor) {
            return Year.from(temporalAccessor);
        }
    };
    private static final DateTimeFormatter PARSER = new DateTimeFormatterBuilder().appendValue(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).toFormatter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.Year$2 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/Year$2.class */
    public static /* synthetic */ class C25072 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit = new int[ChronoUnit.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006b -> B:30:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006f -> B:42:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0073 -> B:38:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0077 -> B:32:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007b -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007f -> B:40:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0083 -> B:36:0x005f). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.YEARS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.DECADES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.CENTURIES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MILLENNIA.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.ERAS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $SwitchMap$org$threeten$bp$temporal$ChronoField = new int[ChronoField.values().length];
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR_OF_ERA.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ERA.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    private Year(int i) {
        this.year = i;
    }

    public static Year from(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof Year) {
            return (Year) temporalAccessor;
        }
        TemporalAccessor temporalAccessor2 = temporalAccessor;
        TemporalAccessor temporalAccessor3 = temporalAccessor;
        try {
            if (!IsoChronology.INSTANCE.equals(Chronology.from(temporalAccessor))) {
                temporalAccessor2 = LocalDate.from(temporalAccessor);
            }
            temporalAccessor3 = temporalAccessor2;
            return m70of(temporalAccessor2.get(ChronoField.YEAR));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain Year from TemporalAccessor: " + temporalAccessor3 + ", type " + temporalAccessor3.getClass().getName());
        }
    }

    public static boolean isLeap(long j) {
        return (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
    }

    public static Year now() {
        return now(Clock.systemDefaultZone());
    }

    public static Year now(Clock clock) {
        return m70of(LocalDate.now(clock).getYear());
    }

    public static Year now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    /* renamed from: of */
    public static Year m70of(int i) {
        ChronoField.YEAR.checkValidValue(i);
        return new Year(i);
    }

    public static Year parse(CharSequence charSequence) {
        return parse(charSequence, PARSER);
    }

    public static Year parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return (Year) dateTimeFormatter.parse(charSequence, FROM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Year readExternal(DataInput dataInput) throws IOException {
        return m70of(dataInput.readInt());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new Ser((byte) 67, this);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAdjuster
    public Temporal adjustInto(Temporal temporal) {
        if (Chronology.from(temporal).equals(IsoChronology.INSTANCE)) {
            return temporal.with(ChronoField.YEAR, this.year);
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public LocalDate atDay(int i) {
        return LocalDate.ofYearDay(this.year, i);
    }

    public YearMonth atMonth(int i) {
        return YearMonth.m69of(this.year, i);
    }

    public YearMonth atMonth(Month month) {
        return YearMonth.m68of(this.year, month);
    }

    public LocalDate atMonthDay(MonthDay monthDay) {
        return monthDay.atYear(this.year);
    }

    public int compareTo(Year year) {
        return this.year - year.year;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Year)) {
            return false;
        }
        if (this.year != ((Year) obj).year) {
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
        return range(temporalField).checkValidIntValue(getLong(temporalField), temporalField);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.getFrom(this);
        }
        int i = 1;
        switch (C25072.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return this.year < 1 ? 1 - this.year : this.year;
            case 2:
                return this.year;
            case 3:
                if (this.year < 1) {
                    i = 0;
                }
                return i;
            default:
                throw new UnsupportedTemporalTypeException("Unsupported field: " + temporalField);
        }
    }

    public int getValue() {
        return this.year;
    }

    public int hashCode() {
        return this.year;
    }

    public boolean isAfter(Year year) {
        return this.year > year.year;
    }

    public boolean isBefore(Year year) {
        return this.year < year.year;
    }

    public boolean isLeap() {
        return isLeap(this.year);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        boolean z = true;
        if (temporalField instanceof ChronoField) {
            boolean z2 = true;
            if (temporalField != ChronoField.YEAR) {
                z2 = true;
                if (temporalField != ChronoField.YEAR_OF_ERA) {
                    z2 = temporalField == ChronoField.ERA;
                }
            }
            return z2;
        }
        if (temporalField == null || !temporalField.isSupportedBy(this)) {
            z = false;
        }
        return z;
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public boolean isSupported(TemporalUnit temporalUnit) {
        boolean z = true;
        if (temporalUnit instanceof ChronoUnit) {
            boolean z2 = true;
            if (temporalUnit != ChronoUnit.YEARS) {
                z2 = true;
                if (temporalUnit != ChronoUnit.DECADES) {
                    z2 = true;
                    if (temporalUnit != ChronoUnit.CENTURIES) {
                        z2 = true;
                        if (temporalUnit != ChronoUnit.MILLENNIA) {
                            z2 = temporalUnit == ChronoUnit.ERAS;
                        }
                    }
                }
            }
            return z2;
        }
        if (temporalUnit == null || !temporalUnit.isSupportedBy(this)) {
            z = false;
        }
        return z;
    }

    public boolean isValidMonthDay(MonthDay monthDay) {
        return monthDay != null && monthDay.isValidYear(this.year);
    }

    public int length() {
        return isLeap() ? 366 : 365;
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public Year minus(long j, TemporalUnit temporalUnit) {
        return j == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j, temporalUnit);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public Year minus(TemporalAmount temporalAmount) {
        return (Year) temporalAmount.subtractFrom(this);
    }

    public Year minusYears(long j) {
        return j == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public Year plus(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Year) temporalUnit.addTo(this, j);
        }
        switch (C25072.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return plusYears(j);
            case 2:
                return plusYears(Jdk8Methods.safeMultiply(j, 10));
            case 3:
                return plusYears(Jdk8Methods.safeMultiply(j, 100));
            case 4:
                return plusYears(Jdk8Methods.safeMultiply(j, 1000));
            case 5:
                return with((TemporalField) ChronoField.ERA, Jdk8Methods.safeAdd(getLong(ChronoField.ERA), j));
            default:
                throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public Year plus(TemporalAmount temporalAmount) {
        return (Year) temporalAmount.addTo(this);
    }

    public Year plusYears(long j) {
        return j == 0 ? this : m70of(ChronoField.YEAR.checkValidIntValue(this.year + j));
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.chronology()) {
            return (R) IsoChronology.INSTANCE;
        }
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.YEARS;
        }
        if (temporalQuery == TemporalQueries.localDate() || temporalQuery == TemporalQueries.localTime() || temporalQuery == TemporalQueries.zone() || temporalQuery == TemporalQueries.zoneId() || temporalQuery == TemporalQueries.offset()) {
            return null;
        }
        return (R) super.query(temporalQuery);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        if (temporalField != ChronoField.YEAR_OF_ERA) {
            return super.range(temporalField);
        }
        return ValueRange.m46of(1L, this.year <= 0 ? 1000000000L : 999999999L);
    }

    public String toString() {
        return Integer.toString(this.year);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        Year from = from(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, from);
        }
        long j = from.year - this.year;
        switch (C25072.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return j;
            case 2:
                return j / 10;
            case 3:
                return j / 100;
            case 4:
                return j / 1000;
            case 5:
                return from.getLong(ChronoField.ERA) - getLong(ChronoField.ERA);
            default:
                throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public Year with(TemporalAdjuster temporalAdjuster) {
        return (Year) temporalAdjuster.adjustInto(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // org.threeten.p040bp.temporal.Temporal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.threeten.p040bp.Year with(org.threeten.p040bp.temporal.TemporalField r6, long r7) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.threeten.p040bp.temporal.ChronoField
            if (r0 == 0) goto L_0x0098
            r0 = r6
            org.threeten.bp.temporal.ChronoField r0 = (org.threeten.p040bp.temporal.ChronoField) r0
            r9 = r0
            r0 = r9
            r1 = r7
            long r0 = r0.checkValidValue(r1)
            int[] r0 = org.threeten.p040bp.Year.C25072.$SwitchMap$org$threeten$bp$temporal$ChronoField
            r1 = r9
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0081;
                case 2: goto L_0x007b;
                case 3: goto L_0x005e;
                default: goto L_0x0038;
            }
        L_0x0038:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Unsupported field: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            org.threeten.bp.temporal.UnsupportedTemporalTypeException r0 = new org.threeten.bp.temporal.UnsupportedTemporalTypeException
            r1 = r0
            r2 = r9
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x005e:
            r0 = r5
            org.threeten.bp.temporal.ChronoField r1 = org.threeten.p040bp.temporal.ChronoField.ERA
            long r0 = r0.getLong(r1)
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006f
            r0 = r5
            r6 = r0
            goto L_0x0079
        L_0x006f:
            r0 = 1
            r1 = r5
            int r1 = r1.year
            int r0 = r0 - r1
            org.threeten.bp.Year r0 = m70of(r0)
            r6 = r0
        L_0x0079:
            r0 = r6
            return r0
        L_0x007b:
            r0 = r7
            int r0 = (int) r0
            org.threeten.bp.Year r0 = m70of(r0)
            return r0
        L_0x0081:
            r0 = r7
            r10 = r0
            r0 = r5
            int r0 = r0.year
            r1 = 1
            if (r0 >= r1) goto L_0x0091
            r0 = 1
            r1 = r7
            long r0 = r0 - r1
            r10 = r0
        L_0x0091:
            r0 = r10
            int r0 = (int) r0
            org.threeten.bp.Year r0 = m70of(r0)
            return r0
        L_0x0098:
            r0 = r6
            r1 = r5
            r2 = r7
            org.threeten.bp.temporal.Temporal r0 = r0.adjustInto(r1, r2)
            org.threeten.bp.Year r0 = (org.threeten.p040bp.Year) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.Year.with(org.threeten.bp.temporal.TemporalField, long):org.threeten.bp.Year");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.year);
    }
}
