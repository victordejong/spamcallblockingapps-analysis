package org.threeten.p040bp.temporal;

import java.util.Locale;
import java.util.Map;
import org.threeten.p040bp.format.ResolverStyle;
/* renamed from: org.threeten.bp.temporal.TemporalField */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/TemporalField.class */
public interface TemporalField {
    <R extends Temporal> R adjustInto(R r, long j);

    TemporalUnit getBaseUnit();

    String getDisplayName(Locale locale);

    long getFrom(TemporalAccessor temporalAccessor);

    TemporalUnit getRangeUnit();

    boolean isDateBased();

    boolean isSupportedBy(TemporalAccessor temporalAccessor);

    boolean isTimeBased();

    ValueRange range();

    ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor);

    TemporalAccessor resolve(Map<TemporalField, Long> map, TemporalAccessor temporalAccessor, ResolverStyle resolverStyle);
}
