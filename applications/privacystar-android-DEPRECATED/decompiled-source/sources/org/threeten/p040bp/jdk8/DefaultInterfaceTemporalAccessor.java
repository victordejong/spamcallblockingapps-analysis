package org.threeten.p040bp.jdk8;

import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalQueries;
import org.threeten.p040bp.temporal.TemporalQuery;
import org.threeten.p040bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.p040bp.temporal.ValueRange;
/* renamed from: org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor.class */
public abstract class DefaultInterfaceTemporalAccessor implements TemporalAccessor {
    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public int get(TemporalField temporalField) {
        return range(temporalField).checkValidIntValue(getLong(temporalField), temporalField);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.zoneId() || temporalQuery == TemporalQueries.chronology() || temporalQuery == TemporalQueries.precision()) {
            return null;
        }
        return temporalQuery.queryFrom(this);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.rangeRefinedBy(this);
        }
        if (isSupported(temporalField)) {
            return temporalField.range();
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + temporalField);
    }
}
