package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.p049io.NumberInput;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/StdDateFormat.class */
public class StdDateFormat extends DateFormat {
    public transient DateFormat _formatISO8601;
    public transient DateFormat _formatISO8601_z;
    public transient DateFormat _formatPlain;
    public transient DateFormat _formatRFC1123;
    public Boolean _lenient;
    public final Locale _locale;
    public transient TimeZone _timezone;
    public static final String[] ALL_FORMATS = {"yyyy-MM-dd'T'HH:mm:ss.SSSZ", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd"};
    public static final TimeZone DEFAULT_TIMEZONE = TimeZone.getTimeZone("UTC");
    public static final Locale DEFAULT_LOCALE = Locale.US;
    public static final DateFormat DATE_FORMAT_RFC1123 = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", DEFAULT_LOCALE);
    public static final DateFormat DATE_FORMAT_ISO8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", DEFAULT_LOCALE);
    public static final DateFormat DATE_FORMAT_ISO8601_Z = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", DEFAULT_LOCALE);
    public static final DateFormat DATE_FORMAT_PLAIN = new SimpleDateFormat("yyyy-MM-dd", DEFAULT_LOCALE);
    public static final StdDateFormat instance = new StdDateFormat();

    static {
        DATE_FORMAT_RFC1123.setTimeZone(DEFAULT_TIMEZONE);
        DATE_FORMAT_ISO8601.setTimeZone(DEFAULT_TIMEZONE);
        DATE_FORMAT_ISO8601_Z.setTimeZone(DEFAULT_TIMEZONE);
        DATE_FORMAT_PLAIN.setTimeZone(DEFAULT_TIMEZONE);
    }

    public StdDateFormat() {
        this._locale = DEFAULT_LOCALE;
    }

    public StdDateFormat(TimeZone timeZone, Locale locale, Boolean bool) {
        this._timezone = timeZone;
        this._locale = locale;
        this._lenient = bool;
    }

    public static final DateFormat _cloneFormat(DateFormat dateFormat, String str, TimeZone timeZone, Locale locale, Boolean bool) {
        SimpleDateFormat simpleDateFormat;
        if (!locale.equals(DEFAULT_LOCALE)) {
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str, locale);
            TimeZone timeZone2 = timeZone;
            if (timeZone == null) {
                timeZone2 = DEFAULT_TIMEZONE;
            }
            simpleDateFormat2.setTimeZone(timeZone2);
            simpleDateFormat = simpleDateFormat2;
        } else {
            DateFormat dateFormat2 = (DateFormat) dateFormat.clone();
            simpleDateFormat = dateFormat2;
            if (timeZone != null) {
                dateFormat2.setTimeZone(timeZone);
                simpleDateFormat = dateFormat2;
            }
        }
        if (bool != null) {
            simpleDateFormat.setLenient(bool.booleanValue());
        }
        return simpleDateFormat;
    }

    public static final boolean hasTimeZone(String str) {
        char charAt;
        char charAt2;
        int length = str.length();
        if (length < 6) {
            return false;
        }
        char charAt3 = str.charAt(length - 6);
        return charAt3 == '+' || charAt3 == '-' || (charAt = str.charAt(length - 5)) == '+' || charAt == '-' || (charAt2 = str.charAt(length - 3)) == '+' || charAt2 == '-';
    }

    public void _clearFormats() {
        this._formatRFC1123 = null;
        this._formatISO8601 = null;
        this._formatISO8601_z = null;
        this._formatPlain = null;
    }

    @Override // java.text.DateFormat, java.text.Format
    public StdDateFormat clone() {
        return new StdDateFormat(this._timezone, this._locale, this._lenient);
    }

    @Override // java.text.DateFormat
    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (this._formatISO8601 == null) {
            this._formatISO8601 = _cloneFormat(DATE_FORMAT_ISO8601, "yyyy-MM-dd'T'HH:mm:ss.SSSZ", this._timezone, this._locale, this._lenient);
        }
        return this._formatISO8601.format(date, stringBuffer, fieldPosition);
    }

    @Override // java.text.DateFormat
    public TimeZone getTimeZone() {
        return this._timezone;
    }

    @Override // java.text.DateFormat
    public boolean isLenient() {
        Boolean bool = this._lenient;
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean looksLikeISO8601(String str) {
        return str.length() >= 5 && Character.isDigit(str.charAt(0)) && Character.isDigit(str.charAt(3)) && str.charAt(4) == '-';
    }

    @Override // java.text.DateFormat
    public Date parse(String str) throws ParseException {
        Date date;
        String[] strArr;
        int i;
        String trim = str.trim();
        ParsePosition parsePosition = new ParsePosition(0);
        if (looksLikeISO8601(trim)) {
            date = parseAsISO8601(trim, parsePosition, true);
        } else {
            int length = trim.length();
            while (true) {
                i = length - 1;
                if (i < 0) {
                    break;
                }
                char charAt = trim.charAt(i);
                if (charAt >= '0') {
                    length = i;
                    if (charAt <= '9') {
                        continue;
                    }
                }
                if (i > 0) {
                    break;
                }
                length = i;
                if (charAt != '-') {
                    break;
                }
            }
            date = (i >= 0 || (trim.charAt(0) != '-' && !NumberInput.inLongRange(trim, false))) ? parseAsRFC1123(trim, parsePosition) : new Date(Long.parseLong(trim));
        }
        if (date != null) {
            return date;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : ALL_FORMATS) {
            if (sb.length() > 0) {
                sb.append("\", \"");
            } else {
                sb.append('\"');
            }
            sb.append(str2);
        }
        sb.append('\"');
        throw new ParseException(String.format("Can not parse date \"%s\": not compatible with any of standard forms (%s)", trim, sb.toString()), parsePosition.getErrorIndex());
    }

    @Override // java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        int i;
        if (looksLikeISO8601(str)) {
            try {
                return parseAsISO8601(str, parsePosition, false);
            } catch (ParseException e) {
                return null;
            }
        } else {
            int length = str.length();
            while (true) {
                i = length - 1;
                if (i >= 0) {
                    char charAt = str.charAt(i);
                    if (charAt >= '0') {
                        length = i;
                        if (charAt <= '9') {
                            continue;
                        }
                    }
                    if (i > 0) {
                        break;
                    }
                    length = i;
                    if (charAt != '-') {
                        break;
                    }
                } else {
                    break;
                }
            }
            return (i >= 0 || (str.charAt(0) != '-' && !NumberInput.inLongRange(str, false))) ? parseAsRFC1123(str, parsePosition) : new Date(Long.parseLong(str));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x010f, code lost:
        if (r0 == '-') goto L_0x0112;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Date parseAsISO8601(java.lang.String r9, java.text.ParsePosition r10, boolean r11) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.StdDateFormat.parseAsISO8601(java.lang.String, java.text.ParsePosition, boolean):java.util.Date");
    }

    public Date parseAsRFC1123(String str, ParsePosition parsePosition) {
        if (this._formatRFC1123 == null) {
            this._formatRFC1123 = _cloneFormat(DATE_FORMAT_RFC1123, "EEE, dd MMM yyyy HH:mm:ss zzz", this._timezone, this._locale, this._lenient);
        }
        return this._formatRFC1123.parse(str, parsePosition);
    }

    @Override // java.text.DateFormat
    public void setLenient(boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        if (this._lenient != valueOf) {
            this._lenient = valueOf;
            _clearFormats();
        }
    }

    @Override // java.text.DateFormat
    public void setTimeZone(TimeZone timeZone) {
        if (!timeZone.equals(this._timezone)) {
            _clearFormats();
            this._timezone = timeZone;
        }
    }

    public String toString() {
        String str = "DateFormat " + StdDateFormat.class.getName();
        TimeZone timeZone = this._timezone;
        String str2 = str;
        if (timeZone != null) {
            str2 = str + " (timezone: " + timeZone + ")";
        }
        return str2 + "(locale: " + this._locale + ")";
    }

    public StdDateFormat withLocale(Locale locale) {
        return locale.equals(this._locale) ? this : new StdDateFormat(this._timezone, locale, this._lenient);
    }

    public StdDateFormat withTimeZone(TimeZone timeZone) {
        TimeZone timeZone2 = timeZone;
        if (timeZone == null) {
            timeZone2 = DEFAULT_TIMEZONE;
        }
        TimeZone timeZone3 = this._timezone;
        return (timeZone2 == timeZone3 || timeZone2.equals(timeZone3)) ? this : new StdDateFormat(timeZone2, this._locale, this._lenient);
    }
}
