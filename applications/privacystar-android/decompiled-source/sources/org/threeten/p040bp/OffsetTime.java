package org.threeten.p040bp;

import com.privacystar.core.data.model.BlockHistoryFields;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.threeten.p040bp.format.DateTimeFormatter;
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
/* renamed from: org.threeten.bp.OffsetTime */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/OffsetTime.class */
public final class OffsetTime extends DefaultInterfaceTemporalAccessor implements Temporal, TemporalAdjuster, Comparable<OffsetTime>, Serializable {
    private static final long serialVersionUID = 7264499704384272492L;
    private final ZoneOffset offset;
    private final LocalTime time;
    public static final OffsetTime MIN = LocalTime.MIN.atOffset(ZoneOffset.MAX);
    public static final OffsetTime MAX = LocalTime.MAX.atOffset(ZoneOffset.MIN);
    public static final TemporalQuery<OffsetTime> FROM = new TemporalQuery<OffsetTime>() { // from class: org.threeten.bp.OffsetTime.1
        @Override // org.threeten.p040bp.temporal.TemporalQuery
        public OffsetTime queryFrom(TemporalAccessor temporalAccessor) {
            return OffsetTime.from(temporalAccessor);
        }
    };

    /* renamed from: org.threeten.bp.OffsetTime$2 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/OffsetTime$2.class */
    static /* synthetic */ class C25052 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit = new int[ChronoUnit.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    private OffsetTime(LocalTime localTime, ZoneOffset zoneOffset) {
        this.time = (LocalTime) Jdk8Methods.requireNonNull(localTime, BlockHistoryFields.TIME);
        this.offset = (ZoneOffset) Jdk8Methods.requireNonNull(zoneOffset, "offset");
    }

    public static OffsetTime from(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof OffsetTime) {
            return (OffsetTime) temporalAccessor;
        }
        try {
            return new OffsetTime(LocalTime.from(temporalAccessor), ZoneOffset.from(temporalAccessor));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain OffsetTime from TemporalAccessor: " + temporalAccessor + ", type " + temporalAccessor.getClass().getName());
        }
    }

    public static OffsetTime now() {
        return now(Clock.systemDefaultZone());
    }

    public static OffsetTime now(Clock clock) {
        Jdk8Methods.requireNonNull(clock, "clock");
        Instant instant = clock.instant();
        return ofInstant(instant, clock.getZone().getRules().getOffset(instant));
    }

    public static OffsetTime now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    /* renamed from: of */
    public static OffsetTime m73of(int i, int i2, int i3, int i4, ZoneOffset zoneOffset) {
        return new OffsetTime(LocalTime.m80of(i, i2, i3, i4), zoneOffset);
    }

    /* renamed from: of */
    public static OffsetTime m72of(LocalTime localTime, ZoneOffset zoneOffset) {
        return new OffsetTime(localTime, zoneOffset);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.threeten.p040bp.OffsetTime ofInstant(org.threeten.p040bp.Instant r6, org.threeten.p040bp.ZoneId r7) {
        /*
            r0 = r6
            java.lang.String r1 = "instant"
            java.lang.Object r0 = org.threeten.p040bp.jdk8.Jdk8Methods.requireNonNull(r0, r1)
            r0 = r7
            java.lang.String r1 = "zone"
            java.lang.Object r0 = org.threeten.p040bp.jdk8.Jdk8Methods.requireNonNull(r0, r1)
            r0 = r7
            org.threeten.bp.zone.ZoneRules r0 = r0.getRules()
            r1 = r6
            org.threeten.bp.ZoneOffset r0 = r0.getOffset(r1)
            r7 = r0
            r0 = r6
            long r0 = r0.getEpochSecond()
            r1 = 86400(0x15180, double:4.26873E-319)
            long r0 = r0 % r1
            r1 = r7
            int r1 = r1.getTotalSeconds()
            long r1 = (long) r1
            long r0 = r0 + r1
            r1 = 86400(0x15180, double:4.26873E-319)
            long r0 = r0 % r1
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x003a
            r0 = r8
            r1 = 86400(0x15180, double:4.26873E-319)
            long r0 = r0 + r1
            r10 = r0
        L_0x003a:
            org.threeten.bp.OffsetTime r0 = new org.threeten.bp.OffsetTime
            r1 = r0
            r2 = r10
            r3 = r6
            int r3 = r3.getNano()
            org.threeten.bp.LocalTime r2 = org.threeten.p040bp.LocalTime.ofSecondOfDay(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.OffsetTime.ofInstant(org.threeten.bp.Instant, org.threeten.bp.ZoneId):org.threeten.bp.OffsetTime");
    }

    public static OffsetTime parse(CharSequence charSequence) {
        return parse(charSequence, DateTimeFormatter.ISO_OFFSET_TIME);
    }

    public static OffsetTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return (OffsetTime) dateTimeFormatter.parse(charSequence, FROM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OffsetTime readExternal(DataInput dataInput) throws IOException {
        return m72of(LocalTime.readExternal(dataInput), ZoneOffset.readExternal(dataInput));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private long toEpochNano() {
        return this.time.toNanoOfDay() - (this.offset.getTotalSeconds() * 1000000000);
    }

    private OffsetTime with(LocalTime localTime, ZoneOffset zoneOffset) {
        return (this.time != localTime || !this.offset.equals(zoneOffset)) ? new OffsetTime(localTime, zoneOffset) : this;
    }

    private Object writeReplace() {
        return new Ser((byte) 66, this);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAdjuster
    public Temporal adjustInto(Temporal temporal) {
        return temporal.with(ChronoField.NANO_OF_DAY, this.time.toNanoOfDay()).with(ChronoField.OFFSET_SECONDS, getOffset().getTotalSeconds());
    }

    public OffsetDateTime atDate(LocalDate localDate) {
        return OffsetDateTime.m75of(localDate, this.time, this.offset);
    }

    public int compareTo(OffsetTime offsetTime) {
        if (this.offset.equals(offsetTime.offset)) {
            return this.time.compareTo(offsetTime.time);
        }
        int compareLongs = Jdk8Methods.compareLongs(toEpochNano(), offsetTime.toEpochNano());
        int i = compareLongs;
        if (compareLongs == 0) {
            i = this.time.compareTo(offsetTime.time);
        }
        return i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OffsetTime)) {
            return false;
        }
        OffsetTime offsetTime = (OffsetTime) obj;
        if (!this.time.equals(offsetTime.time) || !this.offset.equals(offsetTime.offset)) {
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
        return super.get(temporalField);
    }

    public int getHour() {
        return this.time.getHour();
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField == ChronoField.OFFSET_SECONDS ? getOffset().getTotalSeconds() : this.time.getLong(temporalField) : temporalField.getFrom(this);
    }

    public int getMinute() {
        return this.time.getMinute();
    }

    public int getNano() {
        return this.time.getNano();
    }

    public ZoneOffset getOffset() {
        return this.offset;
    }

    public int getSecond() {
        return this.time.getSecond();
    }

    public int hashCode() {
        return this.time.hashCode() ^ this.offset.hashCode();
    }

    public boolean isAfter(OffsetTime offsetTime) {
        return toEpochNano() > offsetTime.toEpochNano();
    }

    public boolean isBefore(OffsetTime offsetTime) {
        return toEpochNano() < offsetTime.toEpochNano();
    }

    public boolean isEqual(OffsetTime offsetTime) {
        return toEpochNano() == offsetTime.toEpochNano();
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        boolean z = true;
        if (temporalField instanceof ChronoField) {
            boolean z2 = true;
            if (!temporalField.isTimeBased()) {
                z2 = temporalField == ChronoField.OFFSET_SECONDS;
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
        if (temporalUnit instanceof ChronoUnit) {
            return temporalUnit.isTimeBased();
        }
        return temporalUnit != null && temporalUnit.isSupportedBy(this);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public OffsetTime minus(long j, TemporalUnit temporalUnit) {
        return j == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j, temporalUnit);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public OffsetTime minus(TemporalAmount temporalAmount) {
        return (OffsetTime) temporalAmount.subtractFrom(this);
    }

    public OffsetTime minusHours(long j) {
        return with(this.time.minusHours(j), this.offset);
    }

    public OffsetTime minusMinutes(long j) {
        return with(this.time.minusMinutes(j), this.offset);
    }

    public OffsetTime minusNanos(long j) {
        return with(this.time.minusNanos(j), this.offset);
    }

    public OffsetTime minusSeconds(long j) {
        return with(this.time.minusSeconds(j), this.offset);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public OffsetTime plus(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? with(this.time.plus(j, temporalUnit), this.offset) : (OffsetTime) temporalUnit.addTo(this, j);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public OffsetTime plus(TemporalAmount temporalAmount) {
        return (OffsetTime) temporalAmount.addTo(this);
    }

    public OffsetTime plusHours(long j) {
        return with(this.time.plusHours(j), this.offset);
    }

    public OffsetTime plusMinutes(long j) {
        return with(this.time.plusMinutes(j), this.offset);
    }

    public OffsetTime plusNanos(long j) {
        return with(this.time.plusNanos(j), this.offset);
    }

    public OffsetTime plusSeconds(long j) {
        return with(this.time.plusSeconds(j), this.offset);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.NANOS;
        }
        if (temporalQuery == TemporalQueries.offset() || temporalQuery == TemporalQueries.zone()) {
            return (R) getOffset();
        }
        if (temporalQuery == TemporalQueries.localTime()) {
            return (R) this.time;
        }
        if (temporalQuery == TemporalQueries.chronology() || temporalQuery == TemporalQueries.localDate() || temporalQuery == TemporalQueries.zoneId()) {
            return null;
        }
        return (R) super.query(temporalQuery);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField == ChronoField.OFFSET_SECONDS ? temporalField.range() : this.time.range(temporalField) : temporalField.rangeRefinedBy(this);
    }

    public LocalTime toLocalTime() {
        return this.time;
    }

    public String toString() {
        return this.time.toString() + this.offset.toString();
    }

    public OffsetTime truncatedTo(TemporalUnit temporalUnit) {
        return with(this.time.truncatedTo(temporalUnit), this.offset);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        OffsetTime from = from(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, from);
        }
        long epochNano = from.toEpochNano() - toEpochNano();
        switch (C25052.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return epochNano;
            case 2:
                return epochNano / 1000;
            case 3:
                return epochNano / 1000000;
            case 4:
                return epochNano / 1000000000;
            case 5:
                return epochNano / 60000000000L;
            case 6:
                return epochNano / 3600000000000L;
            case 7:
                return epochNano / 43200000000000L;
            default:
                throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public OffsetTime with(TemporalAdjuster temporalAdjuster) {
        return temporalAdjuster instanceof LocalTime ? with((LocalTime) temporalAdjuster, this.offset) : temporalAdjuster instanceof ZoneOffset ? with(this.time, (ZoneOffset) temporalAdjuster) : temporalAdjuster instanceof OffsetTime ? (OffsetTime) temporalAdjuster : (OffsetTime) temporalAdjuster.adjustInto(this);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public OffsetTime with(TemporalField temporalField, long j) {
        return temporalField instanceof ChronoField ? temporalField == ChronoField.OFFSET_SECONDS ? with(this.time, ZoneOffset.ofTotalSeconds(((ChronoField) temporalField).checkValidIntValue(j))) : with(this.time.with(temporalField, j), this.offset) : (OffsetTime) temporalField.adjustInto(this, j);
    }

    public OffsetTime withHour(int i) {
        return with(this.time.withHour(i), this.offset);
    }

    public OffsetTime withMinute(int i) {
        return with(this.time.withMinute(i), this.offset);
    }

    public OffsetTime withNano(int i) {
        return with(this.time.withNano(i), this.offset);
    }

    public OffsetTime withOffsetSameInstant(ZoneOffset zoneOffset) {
        if (zoneOffset.equals(this.offset)) {
            return this;
        }
        return new OffsetTime(this.time.plusSeconds(zoneOffset.getTotalSeconds() - this.offset.getTotalSeconds()), zoneOffset);
    }

    public OffsetTime withOffsetSameLocal(ZoneOffset zoneOffset) {
        return (zoneOffset == null || !zoneOffset.equals(this.offset)) ? new OffsetTime(this.time, zoneOffset) : this;
    }

    public OffsetTime withSecond(int i) {
        return with(this.time.withSecond(i), this.offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        this.time.writeExternal(dataOutput);
        this.offset.writeExternal(dataOutput);
    }
}
