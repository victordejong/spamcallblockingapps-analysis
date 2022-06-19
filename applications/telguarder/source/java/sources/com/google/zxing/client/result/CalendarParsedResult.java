package com.google.zxing.client.result;

import com.telguarder.ApplicationConstants;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/client/result/CalendarParsedResult.class */
public final class CalendarParsedResult extends ParsedResult {
    private final String[] attendees;
    private final String description;
    private final long end;
    private final boolean endAllDay;
    private final double latitude;
    private final String location;
    private final double longitude;
    private final String organizer;
    private final long start;
    private final boolean startAllDay;
    private final String summary;
    private static final Pattern RFC2445_DURATION = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");
    private static final long[] RFC2445_DURATION_FIELD_UNITS = {604800000, ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE, 3600000, 60000, 1000};
    private static final Pattern DATE_TIME = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    public CalendarParsedResult(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, String str7, double d, double d2) {
        super(ParsedResultType.CALENDAR);
        this.summary = str;
        try {
            long parseDate = parseDate(str2);
            this.start = parseDate;
            if (str3 == null) {
                long parseDurationMS = parseDurationMS(str4);
                this.end = parseDurationMS < 0 ? (char) 65535 : parseDate + parseDurationMS;
            } else {
                try {
                    this.end = parseDate(str3);
                } catch (ParseException e) {
                    throw new IllegalArgumentException(e.toString());
                }
            }
            this.startAllDay = str2.length() == 8;
            this.endAllDay = str3 != null && str3.length() == 8;
            this.location = str5;
            this.organizer = str6;
            this.attendees = strArr;
            this.description = str7;
            this.latitude = d;
            this.longitude = d2;
        } catch (ParseException e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    private static String format(boolean z, long j) {
        if (j < 0) {
            return null;
        }
        return (z ? DateFormat.getDateInstance(2) : DateFormat.getDateTimeInstance(2, 2)).format(Long.valueOf(j));
    }

    private static long parseDate(String str) throws ParseException {
        if (DATE_TIME.matcher(str).matches()) {
            if (str.length() == 8) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                return simpleDateFormat.parse(str).getTime();
            } else if (str.length() != 16 || str.charAt(15) != 'Z') {
                return parseDateTimeString(str);
            } else {
                long parseDateTimeString = parseDateTimeString(str.substring(0, 15));
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                long j = parseDateTimeString + gregorianCalendar.get(15);
                gregorianCalendar.setTime(new Date(j));
                return j + gregorianCalendar.get(16);
            }
        }
        throw new ParseException(str, 0);
    }

    private static long parseDateTimeString(String str) throws ParseException {
        return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH).parse(str).getTime();
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    private static long parseDurationMS(CharSequence charSequence) {
        String group;
        if (charSequence == null) {
            return -1L;
        }
        Matcher matcher = RFC2445_DURATION.matcher(charSequence);
        if (!matcher.matches()) {
            return -1L;
        }
        char c = 0;
        int i = 0;
        while (true) {
            long[] jArr = RFC2445_DURATION_FIELD_UNITS;
            if (i >= jArr.length) {
                return c;
            }
            int i2 = i + 1;
            char c2 = c;
            if (matcher.group(i2) != null) {
                c2 = c + (jArr[i] * Integer.parseInt(group));
            }
            i = i2;
            c = c2;
        }
    }

    public String[] getAttendees() {
        return this.attendees;
    }

    public String getDescription() {
        return this.description;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        maybeAppend(this.summary, sb);
        maybeAppend(format(this.startAllDay, this.start), sb);
        maybeAppend(format(this.endAllDay, this.end), sb);
        maybeAppend(this.location, sb);
        maybeAppend(this.organizer, sb);
        maybeAppend(this.attendees, sb);
        maybeAppend(this.description, sb);
        return sb.toString();
    }

    @Deprecated
    public Date getEnd() {
        if (this.end < 0) {
            return null;
        }
        return new Date(this.end);
    }

    public long getEndTimestamp() {
        return this.end;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public String getLocation() {
        return this.location;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getOrganizer() {
        return this.organizer;
    }

    @Deprecated
    public Date getStart() {
        return new Date(this.start);
    }

    public long getStartTimestamp() {
        return this.start;
    }

    public String getSummary() {
        return this.summary;
    }

    public boolean isEndAllDay() {
        return this.endAllDay;
    }

    public boolean isStartAllDay() {
        return this.startAllDay;
    }
}
