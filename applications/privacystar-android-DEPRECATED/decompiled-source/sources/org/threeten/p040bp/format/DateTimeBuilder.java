package org.threeten.p040bp.format;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalTime;
import org.threeten.p040bp.Period;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.ZoneOffset;
import org.threeten.p040bp.chrono.ChronoLocalDate;
import org.threeten.p040bp.chrono.ChronoLocalDateTime;
import org.threeten.p040bp.chrono.ChronoZonedDateTime;
import org.threeten.p040bp.chrono.Chronology;
import org.threeten.p040bp.chrono.IsoChronology;
import org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalQueries;
import org.threeten.p040bp.temporal.TemporalQuery;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.format.DateTimeBuilder */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeBuilder.class */
public final class DateTimeBuilder extends DefaultInterfaceTemporalAccessor implements TemporalAccessor, Cloneable {
    Chronology chrono;
    ChronoLocalDate date;
    Period excessDays;
    final Map<TemporalField, Long> fieldValues = new HashMap();
    boolean leapSecond;
    LocalTime time;
    ZoneId zone;

    public DateTimeBuilder() {
    }

    public DateTimeBuilder(TemporalField temporalField, long j) {
        addFieldValue(temporalField, j);
    }

    private void checkDate(LocalDate localDate) {
        if (localDate != null) {
            addObject(localDate);
            for (TemporalField temporalField : this.fieldValues.keySet()) {
                if ((temporalField instanceof ChronoField) && temporalField.isDateBased()) {
                    try {
                        long j = localDate.getLong(temporalField);
                        Long l = this.fieldValues.get(temporalField);
                        if (j != l.longValue()) {
                            throw new DateTimeException("Conflict found: Field " + temporalField + " " + j + " differs from " + temporalField + " " + l + " derived from " + localDate);
                        }
                    } catch (DateTimeException e) {
                    }
                }
            }
        }
    }

    private void crossCheck() {
        if (this.fieldValues.size() <= 0) {
            return;
        }
        if (this.date != null && this.time != null) {
            crossCheck(this.date.atTime(this.time));
        } else if (this.date != null) {
            crossCheck(this.date);
        } else if (this.time != null) {
            crossCheck(this.time);
        }
    }

    private void crossCheck(TemporalAccessor temporalAccessor) {
        Iterator<Map.Entry<TemporalField, Long>> it = this.fieldValues.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<TemporalField, Long> next = it.next();
            TemporalField key = next.getKey();
            long longValue = next.getValue().longValue();
            if (temporalAccessor.isSupported(key)) {
                try {
                    long j = temporalAccessor.getLong(key);
                    if (j != longValue) {
                        throw new DateTimeException("Cross check failed: " + key + " " + j + " vs " + key + " " + longValue);
                    }
                    it.remove();
                } catch (RuntimeException e) {
                }
            }
        }
    }

    private Long getFieldValue0(TemporalField temporalField) {
        return this.fieldValues.get(temporalField);
    }

    private void mergeDate(ResolverStyle resolverStyle) {
        if (this.chrono instanceof IsoChronology) {
            checkDate(IsoChronology.INSTANCE.resolveDate(this.fieldValues, resolverStyle));
        } else if (this.fieldValues.containsKey(ChronoField.EPOCH_DAY)) {
            checkDate(LocalDate.ofEpochDay(this.fieldValues.remove(ChronoField.EPOCH_DAY).longValue()));
        }
    }

    private void mergeInstantFields() {
        if (!this.fieldValues.containsKey(ChronoField.INSTANT_SECONDS)) {
            return;
        }
        if (this.zone != null) {
            mergeInstantFields0(this.zone);
            return;
        }
        Long l = this.fieldValues.get(ChronoField.OFFSET_SECONDS);
        if (l != null) {
            mergeInstantFields0(ZoneOffset.ofTotalSeconds(l.intValue()));
        }
    }

    private void mergeInstantFields0(ZoneId zoneId) {
        ChronoZonedDateTime<?> zonedDateTime = this.chrono.zonedDateTime(Instant.ofEpochSecond(this.fieldValues.remove(ChronoField.INSTANT_SECONDS).longValue()), zoneId);
        if (this.date == null) {
            addObject(zonedDateTime.toLocalDate());
        } else {
            resolveMakeChanges(ChronoField.INSTANT_SECONDS, zonedDateTime.toLocalDate());
        }
        addFieldValue(ChronoField.SECOND_OF_DAY, zonedDateTime.toLocalTime().toSecondOfDay());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v216, types: [long] */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v16 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void mergeTime(org.threeten.p040bp.format.ResolverStyle r10) {
        /*
            Method dump skipped, instructions count: 1216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeBuilder.mergeTime(org.threeten.bp.format.ResolverStyle):void");
    }

    private DateTimeBuilder putFieldValue0(TemporalField temporalField, long j) {
        this.fieldValues.put(temporalField, Long.valueOf(j));
        return this;
    }

    private boolean resolveFields(ResolverStyle resolverStyle) {
        boolean z = false;
        int i = 0;
        loop0: while (i < 100) {
            for (Map.Entry<TemporalField, Long> entry : this.fieldValues.entrySet()) {
                TemporalField key = entry.getKey();
                TemporalAccessor resolve = key.resolve(this.fieldValues, this, resolverStyle);
                if (resolve != null) {
                    TemporalAccessor temporalAccessor = resolve;
                    if (resolve instanceof ChronoZonedDateTime) {
                        ChronoZonedDateTime chronoZonedDateTime = (ChronoZonedDateTime) resolve;
                        if (this.zone == null) {
                            this.zone = chronoZonedDateTime.getZone();
                        } else if (!this.zone.equals(chronoZonedDateTime.getZone())) {
                            throw new DateTimeException("ChronoZonedDateTime must use the effective parsed zone: " + this.zone);
                        }
                        temporalAccessor = chronoZonedDateTime.toLocalDateTime();
                    }
                    if (temporalAccessor instanceof ChronoLocalDate) {
                        resolveMakeChanges(key, (ChronoLocalDate) temporalAccessor);
                        i++;
                    } else if (temporalAccessor instanceof LocalTime) {
                        resolveMakeChanges(key, (LocalTime) temporalAccessor);
                        i++;
                    } else if (temporalAccessor instanceof ChronoLocalDateTime) {
                        ChronoLocalDateTime chronoLocalDateTime = (ChronoLocalDateTime) temporalAccessor;
                        resolveMakeChanges(key, chronoLocalDateTime.toLocalDate());
                        resolveMakeChanges(key, chronoLocalDateTime.toLocalTime());
                        i++;
                    } else {
                        throw new DateTimeException("Unknown type: " + temporalAccessor.getClass().getName());
                    }
                } else if (!this.fieldValues.containsKey(key)) {
                    i++;
                }
            }
        }
        if (i == 100) {
            throw new DateTimeException("Badly written field");
        }
        if (i > 0) {
            z = true;
        }
        return z;
    }

    private void resolveFractional() {
        if (this.time != null) {
            return;
        }
        if (!this.fieldValues.containsKey(ChronoField.INSTANT_SECONDS) && !this.fieldValues.containsKey(ChronoField.SECOND_OF_DAY) && !this.fieldValues.containsKey(ChronoField.SECOND_OF_MINUTE)) {
            return;
        }
        if (this.fieldValues.containsKey(ChronoField.NANO_OF_SECOND)) {
            long longValue = this.fieldValues.get(ChronoField.NANO_OF_SECOND).longValue();
            this.fieldValues.put(ChronoField.MICRO_OF_SECOND, Long.valueOf(longValue / 1000));
            this.fieldValues.put(ChronoField.MILLI_OF_SECOND, Long.valueOf(longValue / 1000000));
            return;
        }
        this.fieldValues.put(ChronoField.NANO_OF_SECOND, 0L);
        this.fieldValues.put(ChronoField.MICRO_OF_SECOND, 0L);
        this.fieldValues.put(ChronoField.MILLI_OF_SECOND, 0L);
    }

    private void resolveInstant() {
        if (this.date != null && this.time != null) {
            if (this.zone != null) {
                this.fieldValues.put(ChronoField.INSTANT_SECONDS, Long.valueOf(this.date.atTime(this.time).atZone(this.zone).getLong(ChronoField.INSTANT_SECONDS)));
                return;
            }
            Long l = this.fieldValues.get(ChronoField.OFFSET_SECONDS);
            if (l != null) {
                this.fieldValues.put(ChronoField.INSTANT_SECONDS, Long.valueOf(this.date.atTime(this.time).atZone(ZoneOffset.ofTotalSeconds(l.intValue())).getLong(ChronoField.INSTANT_SECONDS)));
            }
        }
    }

    private void resolveMakeChanges(TemporalField temporalField, LocalTime localTime) {
        long nanoOfDay = localTime.toNanoOfDay();
        Long put = this.fieldValues.put(ChronoField.NANO_OF_DAY, Long.valueOf(nanoOfDay));
        if (put != null && put.longValue() != nanoOfDay) {
            throw new DateTimeException("Conflict found: " + LocalTime.ofNanoOfDay(put.longValue()) + " differs from " + localTime + " while resolving  " + temporalField);
        }
    }

    private void resolveMakeChanges(TemporalField temporalField, ChronoLocalDate chronoLocalDate) {
        if (!this.chrono.equals(chronoLocalDate.getChronology())) {
            throw new DateTimeException("ChronoLocalDate must use the effective parsed chronology: " + this.chrono);
        }
        long epochDay = chronoLocalDate.toEpochDay();
        Long put = this.fieldValues.put(ChronoField.EPOCH_DAY, Long.valueOf(epochDay));
        if (put != null && put.longValue() != epochDay) {
            throw new DateTimeException("Conflict found: " + LocalDate.ofEpochDay(put.longValue()) + " differs from " + LocalDate.ofEpochDay(epochDay) + " while resolving  " + temporalField);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0095, code lost:
        if (r0.longValue() == 0) goto L_0x0098;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a7, code lost:
        if (r0.longValue() == 0) goto L_0x00aa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b9, code lost:
        if (r0.longValue() == 0) goto L_0x00bc;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void resolveTimeInferZeroes(org.threeten.p040bp.format.ResolverStyle r9) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeBuilder.resolveTimeInferZeroes(org.threeten.bp.format.ResolverStyle):void");
    }

    DateTimeBuilder addFieldValue(TemporalField temporalField, long j) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Long fieldValue0 = getFieldValue0(temporalField);
        if (fieldValue0 == null || fieldValue0.longValue() == j) {
            return putFieldValue0(temporalField, j);
        }
        throw new DateTimeException("Conflict found: " + temporalField + " " + fieldValue0 + " differs from " + temporalField + " " + j + ": " + this);
    }

    void addObject(LocalTime localTime) {
        this.time = localTime;
    }

    void addObject(ChronoLocalDate chronoLocalDate) {
        this.date = chronoLocalDate;
    }

    public <R> R build(TemporalQuery<R> temporalQuery) {
        return temporalQuery.queryFrom(this);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Long fieldValue0 = getFieldValue0(temporalField);
        if (fieldValue0 != null) {
            return fieldValue0.longValue();
        }
        if (this.date != null && this.date.isSupported(temporalField)) {
            return this.date.getLong(temporalField);
        }
        if (this.time != null && this.time.isSupported(temporalField)) {
            return this.time.getLong(temporalField);
        }
        throw new DateTimeException("Field not found: " + temporalField);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        if (r3.time.isSupported(r4) != false) goto L_0x003d;
     */
    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isSupported(org.threeten.p040bp.temporal.TemporalField r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r3
            java.util.Map<org.threeten.bp.temporal.TemporalField, java.lang.Long> r0 = r0.fieldValues
            r1 = r4
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x003d
            r0 = r3
            org.threeten.bp.chrono.ChronoLocalDate r0 = r0.date
            if (r0 == 0) goto L_0x0027
            r0 = r3
            org.threeten.bp.chrono.ChronoLocalDate r0 = r0.date
            r1 = r4
            boolean r0 = r0.isSupported(r1)
            if (r0 != 0) goto L_0x003d
        L_0x0027:
            r0 = r5
            r6 = r0
            r0 = r3
            org.threeten.bp.LocalTime r0 = r0.time
            if (r0 == 0) goto L_0x003f
            r0 = r5
            r6 = r0
            r0 = r3
            org.threeten.bp.LocalTime r0 = r0.time
            r1 = r4
            boolean r0 = r0.isSupported(r1)
            if (r0 == 0) goto L_0x003f
        L_0x003d:
            r0 = 1
            r6 = r0
        L_0x003f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeBuilder.isSupported(org.threeten.bp.temporal.TemporalField):boolean");
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.zoneId()) {
            return (R) this.zone;
        }
        if (temporalQuery == TemporalQueries.chronology()) {
            return (R) this.chrono;
        }
        R r = null;
        if (temporalQuery == TemporalQueries.localDate()) {
            if (this.date != null) {
                r = (R) LocalDate.from((TemporalAccessor) this.date);
            }
            return r;
        } else if (temporalQuery == TemporalQueries.localTime()) {
            return (R) this.time;
        } else {
            if (temporalQuery == TemporalQueries.zone() || temporalQuery == TemporalQueries.offset()) {
                return temporalQuery.queryFrom(this);
            }
            if (temporalQuery == TemporalQueries.precision()) {
                return null;
            }
            return temporalQuery.queryFrom(this);
        }
    }

    public DateTimeBuilder resolve(ResolverStyle resolverStyle, Set<TemporalField> set) {
        if (set != null) {
            this.fieldValues.keySet().retainAll(set);
        }
        mergeInstantFields();
        mergeDate(resolverStyle);
        mergeTime(resolverStyle);
        if (resolveFields(resolverStyle)) {
            mergeInstantFields();
            mergeDate(resolverStyle);
            mergeTime(resolverStyle);
        }
        resolveTimeInferZeroes(resolverStyle);
        crossCheck();
        if (!(this.excessDays == null || this.excessDays.isZero() || this.date == null || this.time == null)) {
            this.date = this.date.plus((TemporalAmount) this.excessDays);
            this.excessDays = Period.ZERO;
        }
        resolveFractional();
        resolveInstant();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("DateTimeBuilder[");
        if (this.fieldValues.size() > 0) {
            sb.append("fields=");
            sb.append(this.fieldValues);
        }
        sb.append(", ");
        sb.append(this.chrono);
        sb.append(", ");
        sb.append(this.zone);
        sb.append(", ");
        sb.append(this.date);
        sb.append(", ");
        sb.append(this.time);
        sb.append(']');
        return sb.toString();
    }
}
