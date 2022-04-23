package org.threeten.p040bp.format;

import java.util.Locale;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalQuery;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.format.DateTimePrintContext */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimePrintContext.class */
public final class DateTimePrintContext {
    private Locale locale;
    private int optional;
    private DecimalStyle symbols;
    private TemporalAccessor temporal;

    DateTimePrintContext(TemporalAccessor temporalAccessor, Locale locale, DecimalStyle decimalStyle) {
        this.temporal = temporalAccessor;
        this.locale = locale;
        this.symbols = decimalStyle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DateTimePrintContext(TemporalAccessor temporalAccessor, DateTimeFormatter dateTimeFormatter) {
        this.temporal = adjust(temporalAccessor, dateTimeFormatter);
        this.locale = dateTimeFormatter.getLocale();
        this.symbols = dateTimeFormatter.getDecimalStyle();
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0114, code lost:
        if (r0 != null) goto L_0x0117;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.threeten.p040bp.temporal.TemporalAccessor adjust(final org.threeten.p040bp.temporal.TemporalAccessor r7, org.threeten.p040bp.format.DateTimeFormatter r8) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimePrintContext.adjust(org.threeten.bp.temporal.TemporalAccessor, org.threeten.bp.format.DateTimeFormatter):org.threeten.bp.temporal.TemporalAccessor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void endOptional() {
        this.optional--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Locale getLocale() {
        return this.locale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecimalStyle getSymbols() {
        return this.symbols;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TemporalAccessor getTemporal() {
        return this.temporal;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long getValue(TemporalField temporalField) {
        try {
            return Long.valueOf(this.temporal.getLong(temporalField));
        } catch (DateTimeException e) {
            if (this.optional > 0) {
                return null;
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <R> R getValue(TemporalQuery<R> temporalQuery) {
        R r = (R) this.temporal.query(temporalQuery);
        if (r != null || this.optional != 0) {
            return r;
        }
        throw new DateTimeException("Unable to extract value: " + this.temporal.getClass());
    }

    void setDateTime(TemporalAccessor temporalAccessor) {
        Jdk8Methods.requireNonNull(temporalAccessor, "temporal");
        this.temporal = temporalAccessor;
    }

    void setLocale(Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        this.locale = locale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startOptional() {
        this.optional++;
    }

    public String toString() {
        return this.temporal.toString();
    }
}
