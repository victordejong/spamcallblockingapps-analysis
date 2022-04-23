package org.threeten.p040bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.List;
import org.threeten.p040bp.chrono.ChronoLocalDateTime;
import org.threeten.p040bp.chrono.ChronoZonedDateTime;
import org.threeten.p040bp.format.DateTimeFormatter;
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
import org.threeten.p040bp.temporal.ValueRange;
import org.threeten.p040bp.zone.ZoneOffsetTransition;
import org.threeten.p040bp.zone.ZoneRules;
/* renamed from: org.threeten.bp.ZonedDateTime */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/ZonedDateTime.class */
public final class ZonedDateTime extends ChronoZonedDateTime<LocalDate> implements Temporal, Serializable {
    public static final TemporalQuery<ZonedDateTime> FROM = new TemporalQuery<ZonedDateTime>() { // from class: org.threeten.bp.ZonedDateTime.1
        @Override // org.threeten.p040bp.temporal.TemporalQuery
        public ZonedDateTime queryFrom(TemporalAccessor temporalAccessor) {
            return ZonedDateTime.from(temporalAccessor);
        }
    };
    private static final long serialVersionUID = -6260982410461394882L;
    private final LocalDateTime dateTime;
    private final ZoneOffset offset;
    private final ZoneId zone;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.ZonedDateTime$2 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/ZonedDateTime$2.class */
    public static /* synthetic */ class C25142 {
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

    private ZonedDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        this.dateTime = localDateTime;
        this.offset = zoneOffset;
        this.zone = zoneId;
    }

    private static ZonedDateTime create(long j, int i, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(Instant.ofEpochSecond(j, i));
        return new ZonedDateTime(LocalDateTime.ofEpochSecond(j, i, offset), offset, zoneId);
    }

    public static ZonedDateTime from(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof ZonedDateTime) {
            return (ZonedDateTime) temporalAccessor;
        }
        try {
            ZoneId from = ZoneId.from(temporalAccessor);
            if (temporalAccessor.isSupported(ChronoField.INSTANT_SECONDS)) {
                try {
                    return create(temporalAccessor.getLong(ChronoField.INSTANT_SECONDS), temporalAccessor.get(ChronoField.NANO_OF_SECOND), from);
                } catch (DateTimeException e) {
                }
            }
            return m62of(LocalDateTime.from(temporalAccessor), from);
        } catch (DateTimeException e2) {
            throw new DateTimeException("Unable to obtain ZonedDateTime from TemporalAccessor: " + temporalAccessor + ", type " + temporalAccessor.getClass().getName());
        }
    }

    public static ZonedDateTime now() {
        return now(Clock.systemDefaultZone());
    }

    public static ZonedDateTime now(Clock clock) {
        Jdk8Methods.requireNonNull(clock, "clock");
        return ofInstant(clock.instant(), clock.getZone());
    }

    public static ZonedDateTime now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    /* renamed from: of */
    public static ZonedDateTime m64of(int i, int i2, int i3, int i4, int i5, int i6, int i7, ZoneId zoneId) {
        return ofLocal(LocalDateTime.m87of(i, i2, i3, i4, i5, i6, i7), zoneId, null);
    }

    /* renamed from: of */
    public static ZonedDateTime m63of(LocalDate localDate, LocalTime localTime, ZoneId zoneId) {
        return m62of(LocalDateTime.m83of(localDate, localTime), zoneId);
    }

    /* renamed from: of */
    public static ZonedDateTime m62of(LocalDateTime localDateTime, ZoneId zoneId) {
        return ofLocal(localDateTime, zoneId, null);
    }

    public static ZonedDateTime ofInstant(Instant instant, ZoneId zoneId) {
        Jdk8Methods.requireNonNull(instant, "instant");
        Jdk8Methods.requireNonNull(zoneId, "zone");
        return create(instant.getEpochSecond(), instant.getNano(), zoneId);
    }

    public static ZonedDateTime ofInstant(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        Jdk8Methods.requireNonNull(localDateTime, "localDateTime");
        Jdk8Methods.requireNonNull(zoneOffset, "offset");
        Jdk8Methods.requireNonNull(zoneId, "zone");
        return create(localDateTime.toEpochSecond(zoneOffset), localDateTime.getNano(), zoneId);
    }

    private static ZonedDateTime ofLenient(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        Jdk8Methods.requireNonNull(localDateTime, "localDateTime");
        Jdk8Methods.requireNonNull(zoneOffset, "offset");
        Jdk8Methods.requireNonNull(zoneId, "zone");
        if (!(zoneId instanceof ZoneOffset) || zoneOffset.equals(zoneId)) {
            return new ZonedDateTime(localDateTime, zoneOffset, zoneId);
        }
        throw new IllegalArgumentException("ZoneId must match ZoneOffset");
    }

    public static ZonedDateTime ofLocal(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Jdk8Methods.requireNonNull(localDateTime, "localDateTime");
        Jdk8Methods.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, (ZoneOffset) zoneId, zoneId);
        }
        ZoneRules rules = zoneId.getRules();
        List<ZoneOffset> validOffsets = rules.getValidOffsets(localDateTime);
        if (validOffsets.size() == 1) {
            zoneOffset = validOffsets.get(0);
        } else if (validOffsets.size() == 0) {
            ZoneOffsetTransition transition = rules.getTransition(localDateTime);
            localDateTime = localDateTime.plusSeconds(transition.getDuration().getSeconds());
            zoneOffset = transition.getOffsetAfter();
        } else if (zoneOffset == null || !validOffsets.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) Jdk8Methods.requireNonNull(validOffsets.get(0), "offset");
        }
        return new ZonedDateTime(localDateTime, zoneOffset, zoneId);
    }

    public static ZonedDateTime ofStrict(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        Jdk8Methods.requireNonNull(localDateTime, "localDateTime");
        Jdk8Methods.requireNonNull(zoneOffset, "offset");
        Jdk8Methods.requireNonNull(zoneId, "zone");
        ZoneRules rules = zoneId.getRules();
        if (rules.isValidOffset(localDateTime, zoneOffset)) {
            return new ZonedDateTime(localDateTime, zoneOffset, zoneId);
        }
        ZoneOffsetTransition transition = rules.getTransition(localDateTime);
        if (transition == null || !transition.isGap()) {
            throw new DateTimeException("ZoneOffset '" + zoneOffset + "' is not valid for LocalDateTime '" + localDateTime + "' in zone '" + zoneId + "'");
        }
        throw new DateTimeException("LocalDateTime '" + localDateTime + "' does not exist in zone '" + zoneId + "' due to a gap in the local time-line, typically caused by daylight savings");
    }

    public static ZonedDateTime parse(CharSequence charSequence) {
        return parse(charSequence, DateTimeFormatter.ISO_ZONED_DATE_TIME);
    }

    public static ZonedDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return (ZonedDateTime) dateTimeFormatter.parse(charSequence, FROM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZonedDateTime readExternal(DataInput dataInput) throws IOException {
        return ofLenient(LocalDateTime.readExternal(dataInput), ZoneOffset.readExternal(dataInput), (ZoneId) Ser.read(dataInput));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private ZonedDateTime resolveInstant(LocalDateTime localDateTime) {
        return ofInstant(localDateTime, this.offset, this.zone);
    }

    private ZonedDateTime resolveLocal(LocalDateTime localDateTime) {
        return ofLocal(localDateTime, this.zone, this.offset);
    }

    private ZonedDateTime resolveOffset(ZoneOffset zoneOffset) {
        return (zoneOffset.equals(this.offset) || !this.zone.getRules().isValidOffset(this.dateTime, zoneOffset)) ? this : new ZonedDateTime(this.dateTime, zoneOffset, this.zone);
    }

    private Object writeReplace() {
        return new Ser((byte) 6, this);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZonedDateTime)) {
            return false;
        }
        ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
        if (!this.dateTime.equals(zonedDateTime.dateTime) || !this.offset.equals(zonedDateTime.offset) || !this.zone.equals(zonedDateTime.zone)) {
            z = false;
        }
        return z;
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    public String format(DateTimeFormatter dateTimeFormatter) {
        return super.format(dateTimeFormatter);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public int get(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return super.get(temporalField);
        }
        switch (C25142.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                throw new DateTimeException("Field too large for an int: " + temporalField);
            case 2:
                return getOffset().getTotalSeconds();
            default:
                return this.dateTime.get(temporalField);
        }
    }

    public int getDayOfMonth() {
        return this.dateTime.getDayOfMonth();
    }

    public DayOfWeek getDayOfWeek() {
        return this.dateTime.getDayOfWeek();
    }

    public int getDayOfYear() {
        return this.dateTime.getDayOfYear();
    }

    public int getHour() {
        return this.dateTime.getHour();
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.getFrom(this);
        }
        switch (C25142.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return toEpochSecond();
            case 2:
                return getOffset().getTotalSeconds();
            default:
                return this.dateTime.getLong(temporalField);
        }
    }

    public int getMinute() {
        return this.dateTime.getMinute();
    }

    public Month getMonth() {
        return this.dateTime.getMonth();
    }

    public int getMonthValue() {
        return this.dateTime.getMonthValue();
    }

    public int getNano() {
        return this.dateTime.getNano();
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    public ZoneOffset getOffset() {
        return this.offset;
    }

    public int getSecond() {
        return this.dateTime.getSecond();
    }

    public int getYear() {
        return this.dateTime.getYear();
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    public ZoneId getZone() {
        return this.zone;
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    public int hashCode() {
        return (this.dateTime.hashCode() ^ this.offset.hashCode()) ^ Integer.rotateLeft(this.zone.hashCode(), 3);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        return (temporalField instanceof ChronoField) || (temporalField != null && temporalField.isSupportedBy(this));
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public boolean isSupported(TemporalUnit temporalUnit) {
        boolean z = true;
        if (temporalUnit instanceof ChronoUnit) {
            boolean z2 = true;
            if (!temporalUnit.isDateBased()) {
                z2 = temporalUnit.isTimeBased();
            }
            return z2;
        }
        if (temporalUnit == null || !temporalUnit.isSupportedBy(this)) {
            z = false;
        }
        return z;
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ZonedDateTime minus(long j, TemporalUnit temporalUnit) {
        return j == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j, temporalUnit);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ZonedDateTime minus(TemporalAmount temporalAmount) {
        return (ZonedDateTime) temporalAmount.subtractFrom(this);
    }

    public ZonedDateTime minusDays(long j) {
        return j == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j);
    }

    public ZonedDateTime minusHours(long j) {
        return j == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j);
    }

    public ZonedDateTime minusMinutes(long j) {
        return j == Long.MIN_VALUE ? plusMinutes(Long.MAX_VALUE).plusMinutes(1L) : plusMinutes(-j);
    }

    public ZonedDateTime minusMonths(long j) {
        return j == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j);
    }

    public ZonedDateTime minusNanos(long j) {
        return j == Long.MIN_VALUE ? plusNanos(Long.MAX_VALUE).plusNanos(1L) : plusNanos(-j);
    }

    public ZonedDateTime minusSeconds(long j) {
        return j == Long.MIN_VALUE ? plusSeconds(Long.MAX_VALUE).plusSeconds(1L) : plusSeconds(-j);
    }

    public ZonedDateTime minusWeeks(long j) {
        return j == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j);
    }

    public ZonedDateTime minusYears(long j) {
        return j == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.temporal.Temporal
    public ZonedDateTime plus(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? temporalUnit.isDateBased() ? resolveLocal(this.dateTime.plus(j, temporalUnit)) : resolveInstant(this.dateTime.plus(j, temporalUnit)) : (ZonedDateTime) temporalUnit.addTo(this, j);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ZonedDateTime plus(TemporalAmount temporalAmount) {
        return (ZonedDateTime) temporalAmount.addTo(this);
    }

    public ZonedDateTime plusDays(long j) {
        return resolveLocal(this.dateTime.plusDays(j));
    }

    public ZonedDateTime plusHours(long j) {
        return resolveInstant(this.dateTime.plusHours(j));
    }

    public ZonedDateTime plusMinutes(long j) {
        return resolveInstant(this.dateTime.plusMinutes(j));
    }

    public ZonedDateTime plusMonths(long j) {
        return resolveLocal(this.dateTime.plusMonths(j));
    }

    public ZonedDateTime plusNanos(long j) {
        return resolveInstant(this.dateTime.plusNanos(j));
    }

    public ZonedDateTime plusSeconds(long j) {
        return resolveInstant(this.dateTime.plusSeconds(j));
    }

    public ZonedDateTime plusWeeks(long j) {
        return resolveLocal(this.dateTime.plusWeeks(j));
    }

    public ZonedDateTime plusYears(long j) {
        return resolveLocal(this.dateTime.plusYears(j));
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        return temporalQuery == TemporalQueries.localDate() ? (R) toLocalDate() : (R) super.query(temporalQuery);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? (temporalField == ChronoField.INSTANT_SECONDS || temporalField == ChronoField.OFFSET_SECONDS) ? temporalField.range() : this.dateTime.range(temporalField) : temporalField.rangeRefinedBy(this);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    public LocalDate toLocalDate() {
        return this.dateTime.toLocalDate();
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    /* renamed from: toLocalDateTime */
    public ChronoLocalDateTime<LocalDate> toLocalDateTime2() {
        return this.dateTime;
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    public LocalTime toLocalTime() {
        return this.dateTime.toLocalTime();
    }

    public OffsetDateTime toOffsetDateTime() {
        return OffsetDateTime.m74of(this.dateTime, this.offset);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    public String toString() {
        String str = this.dateTime.toString() + this.offset.toString();
        String str2 = str;
        if (this.offset != this.zone) {
            str2 = str + '[' + this.zone.toString() + ']';
        }
        return str2;
    }

    public ZonedDateTime truncatedTo(TemporalUnit temporalUnit) {
        return resolveLocal(this.dateTime.truncatedTo(temporalUnit));
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [org.threeten.bp.ZonedDateTime] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // org.threeten.p040bp.temporal.Temporal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long until(org.threeten.p040bp.temporal.Temporal r5, org.threeten.p040bp.temporal.TemporalUnit r6) {
        /*
            r4 = this;
            r0 = r5
            org.threeten.bp.ZonedDateTime r0 = from(r0)
            r5 = r0
            r0 = r6
            boolean r0 = r0 instanceof org.threeten.p040bp.temporal.ChronoUnit
            if (r0 == 0) goto L_0x0038
            r0 = r5
            r1 = r4
            org.threeten.bp.ZoneId r1 = r1.zone
            org.threeten.bp.ZonedDateTime r0 = r0.withZoneSameInstant2(r1)
            r5 = r0
            r0 = r6
            boolean r0 = r0.isDateBased()
            if (r0 == 0) goto L_0x002b
            r0 = r4
            org.threeten.bp.LocalDateTime r0 = r0.dateTime
            r1 = r5
            org.threeten.bp.LocalDateTime r1 = r1.dateTime
            r2 = r6
            long r0 = r0.until(r1, r2)
            return r0
        L_0x002b:
            r0 = r4
            org.threeten.bp.OffsetDateTime r0 = r0.toOffsetDateTime()
            r1 = r5
            org.threeten.bp.OffsetDateTime r1 = r1.toOffsetDateTime()
            r2 = r6
            long r0 = r0.until(r1, r2)
            return r0
        L_0x0038:
            r0 = r6
            r1 = r4
            r2 = r5
            long r0 = r0.between(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.ZonedDateTime.until(org.threeten.bp.temporal.Temporal, org.threeten.bp.temporal.TemporalUnit):long");
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ZonedDateTime with(TemporalAdjuster temporalAdjuster) {
        if (temporalAdjuster instanceof LocalDate) {
            return resolveLocal(LocalDateTime.m83of((LocalDate) temporalAdjuster, this.dateTime.toLocalTime()));
        }
        if (temporalAdjuster instanceof LocalTime) {
            return resolveLocal(LocalDateTime.m83of(this.dateTime.toLocalDate(), (LocalTime) temporalAdjuster));
        }
        if (temporalAdjuster instanceof LocalDateTime) {
            return resolveLocal((LocalDateTime) temporalAdjuster);
        }
        if (!(temporalAdjuster instanceof Instant)) {
            return temporalAdjuster instanceof ZoneOffset ? resolveOffset((ZoneOffset) temporalAdjuster) : (ZonedDateTime) temporalAdjuster.adjustInto(this);
        }
        Instant instant = (Instant) temporalAdjuster;
        return create(instant.getEpochSecond(), instant.getNano(), this.zone);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime, org.threeten.p040bp.temporal.Temporal
    public ZonedDateTime with(TemporalField temporalField, long j) {
        if (!(temporalField instanceof ChronoField)) {
            return (ZonedDateTime) temporalField.adjustInto(this, j);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        switch (C25142.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()]) {
            case 1:
                return create(j, getNano(), this.zone);
            case 2:
                return resolveOffset(ZoneOffset.ofTotalSeconds(chronoField.checkValidIntValue(j)));
            default:
                return resolveLocal(this.dateTime.with(temporalField, j));
        }
    }

    public ZonedDateTime withDayOfMonth(int i) {
        return resolveLocal(this.dateTime.withDayOfMonth(i));
    }

    public ZonedDateTime withDayOfYear(int i) {
        return resolveLocal(this.dateTime.withDayOfYear(i));
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    /* renamed from: withEarlierOffsetAtOverlap */
    public ChronoZonedDateTime<LocalDate> withEarlierOffsetAtOverlap2() {
        ZoneOffsetTransition transition = getZone().getRules().getTransition(this.dateTime);
        if (transition != null && transition.isOverlap()) {
            ZoneOffset offsetBefore = transition.getOffsetBefore();
            if (!offsetBefore.equals(this.offset)) {
                return new ZonedDateTime(this.dateTime, offsetBefore, this.zone);
            }
        }
        return this;
    }

    public ZonedDateTime withFixedOffsetZone() {
        return this.zone.equals(this.offset) ? this : new ZonedDateTime(this.dateTime, this.offset, this.offset);
    }

    public ZonedDateTime withHour(int i) {
        return resolveLocal(this.dateTime.withHour(i));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.threeten.bp.LocalDateTime] */
    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    /* renamed from: withLaterOffsetAtOverlap */
    public ChronoZonedDateTime<LocalDate> withLaterOffsetAtOverlap2() {
        ZoneOffsetTransition transition = getZone().getRules().getTransition(toLocalDateTime2());
        if (transition != null) {
            ZoneOffset offsetAfter = transition.getOffsetAfter();
            if (!offsetAfter.equals(this.offset)) {
                return new ZonedDateTime(this.dateTime, offsetAfter, this.zone);
            }
        }
        return this;
    }

    public ZonedDateTime withMinute(int i) {
        return resolveLocal(this.dateTime.withMinute(i));
    }

    public ZonedDateTime withMonth(int i) {
        return resolveLocal(this.dateTime.withMonth(i));
    }

    public ZonedDateTime withNano(int i) {
        return resolveLocal(this.dateTime.withNano(i));
    }

    public ZonedDateTime withSecond(int i) {
        return resolveLocal(this.dateTime.withSecond(i));
    }

    public ZonedDateTime withYear(int i) {
        return resolveLocal(this.dateTime.withYear(i));
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    /* renamed from: withZoneSameInstant */
    public ChronoZonedDateTime<LocalDate> withZoneSameInstant2(ZoneId zoneId) {
        Jdk8Methods.requireNonNull(zoneId, "zone");
        return this.zone.equals(zoneId) ? this : create(this.dateTime.toEpochSecond(this.offset), this.dateTime.getNano(), zoneId);
    }

    @Override // org.threeten.p040bp.chrono.ChronoZonedDateTime
    /* renamed from: withZoneSameLocal */
    public ChronoZonedDateTime<LocalDate> withZoneSameLocal2(ZoneId zoneId) {
        Jdk8Methods.requireNonNull(zoneId, "zone");
        return this.zone.equals(zoneId) ? this : ofLocal(this.dateTime, zoneId, this.offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        this.dateTime.writeExternal(dataOutput);
        this.offset.writeExternal(dataOutput);
        this.zone.write(dataOutput);
    }
}
