package org.threeten.p040bp.format;

import java.util.Locale;
import org.threeten.p040bp.chrono.Chronology;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.format.DateTimeFormatStyleProvider */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatStyleProvider.class */
public abstract class DateTimeFormatStyleProvider {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static DateTimeFormatStyleProvider getInstance() {
        return new SimpleDateTimeFormatStyleProvider();
    }

    public Locale[] getAvailableLocales() {
        throw new UnsupportedOperationException();
    }

    public abstract DateTimeFormatter getFormatter(FormatStyle formatStyle, FormatStyle formatStyle2, Chronology chronology, Locale locale);
}
