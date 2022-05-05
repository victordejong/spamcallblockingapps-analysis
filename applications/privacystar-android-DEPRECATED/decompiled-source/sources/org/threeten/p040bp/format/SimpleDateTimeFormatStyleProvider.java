package org.threeten.p040bp.format;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.p040bp.chrono.Chronology;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.format.SimpleDateTimeFormatStyleProvider */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/SimpleDateTimeFormatStyleProvider.class */
public final class SimpleDateTimeFormatStyleProvider extends DateTimeFormatStyleProvider {
    private static final ConcurrentMap<String, Object> FORMATTER_CACHE = new ConcurrentHashMap(16, 0.75f, 2);

    private int convertStyle(FormatStyle formatStyle) {
        return formatStyle.ordinal();
    }

    @Override // org.threeten.p040bp.format.DateTimeFormatStyleProvider
    public Locale[] getAvailableLocales() {
        return DateFormat.getAvailableLocales();
    }

    @Override // org.threeten.p040bp.format.DateTimeFormatStyleProvider
    public DateTimeFormatter getFormatter(FormatStyle formatStyle, FormatStyle formatStyle2, Chronology chronology, Locale locale) {
        if (formatStyle == null && formatStyle2 == null) {
            throw new IllegalArgumentException("Date and Time style must not both be null");
        }
        String str = chronology.getId() + '|' + locale.toString() + '|' + formatStyle + formatStyle2;
        Object obj = FORMATTER_CACHE.get(str);
        if (obj == null) {
            DateFormat dateTimeInstance = formatStyle != null ? formatStyle2 != null ? DateFormat.getDateTimeInstance(convertStyle(formatStyle), convertStyle(formatStyle2), locale) : DateFormat.getDateInstance(convertStyle(formatStyle), locale) : DateFormat.getTimeInstance(convertStyle(formatStyle2), locale);
            if (dateTimeInstance instanceof SimpleDateFormat) {
                DateTimeFormatter formatter = new DateTimeFormatterBuilder().appendPattern(((SimpleDateFormat) dateTimeInstance).toPattern()).toFormatter(locale);
                FORMATTER_CACHE.putIfAbsent(str, formatter);
                return formatter;
            }
            FORMATTER_CACHE.putIfAbsent(str, "");
            throw new IllegalArgumentException("Unable to convert DateFormat to DateTimeFormatter");
        } else if (!obj.equals("")) {
            return (DateTimeFormatter) obj;
        } else {
            throw new IllegalArgumentException("Unable to convert DateFormat to DateTimeFormatter");
        }
    }
}
