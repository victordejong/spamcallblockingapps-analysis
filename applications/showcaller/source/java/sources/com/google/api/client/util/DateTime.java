package com.google.api.client.util;

import com.google.common.base.C8763m;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/DateTime.class */
public final class DateTime implements Serializable {

    /* renamed from: d */
    private static final TimeZone f38466d = TimeZone.getTimeZone("GMT");

    /* renamed from: e */
    private static final Pattern f38467e = Pattern.compile("(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d{1,9})?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?");
    private static final long serialVersionUID = 1;
    private final boolean dateOnly;
    private final int tzShift;
    private final long value;

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/DateTime$Rfc3339ParseResult.class */
    public static class Rfc3339ParseResult implements Serializable {
        private final int nanos;
        private final long seconds;
        private final boolean timeGiven;
        private final Integer tzShift;

        private Rfc3339ParseResult(long j, int i, boolean z, Integer num) {
            this.seconds = j;
            this.nanos = i;
            this.timeGiven = z;
            this.tzShift = num;
        }

        /* renamed from: a */
        public DateTime m2955a() {
            return new DateTime(!this.timeGiven, TimeUnit.SECONDS.toMillis(this.seconds) + TimeUnit.NANOSECONDS.toMillis(this.nanos), this.tzShift);
        }

        /* renamed from: b */
        public SecondsAndNanos m2954b() {
            return new SecondsAndNanos(this.seconds, this.nanos);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/DateTime$SecondsAndNanos.class */
    public static final class SecondsAndNanos implements Serializable {
        private final int nanos;
        private final long seconds;

        private SecondsAndNanos(long j, int i) {
            this.seconds = j;
            this.nanos = i;
        }

        public static SecondsAndNanos ofSecondsAndNanos(long j, int i) {
            return new SecondsAndNanos(j, i);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || SecondsAndNanos.class != obj.getClass()) {
                return false;
            }
            SecondsAndNanos secondsAndNanos = (SecondsAndNanos) obj;
            if (this.seconds != secondsAndNanos.seconds || this.nanos != secondsAndNanos.nanos) {
                z = false;
            }
            return z;
        }

        public int getNanos() {
            return this.nanos;
        }

        public long getSeconds() {
            return this.seconds;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.seconds), Integer.valueOf(this.nanos));
        }

        public String toString() {
            return String.format("Seconds: %d, Nanos: %d", Long.valueOf(this.seconds), Integer.valueOf(this.nanos));
        }
    }

    public DateTime(long j) {
        this(false, j, null);
    }

    public DateTime(long j, int i) {
        this(false, j, Integer.valueOf(i));
    }

    public DateTime(String str) {
        DateTime parseRfc3339 = parseRfc3339(str);
        this.dateOnly = parseRfc3339.dateOnly;
        this.value = parseRfc3339.value;
        this.tzShift = parseRfc3339.tzShift;
    }

    public DateTime(Date date) {
        this(date.getTime());
    }

    public DateTime(Date date, TimeZone timeZone) {
        this(false, date.getTime(), timeZone == null ? null : Integer.valueOf(timeZone.getOffset(date.getTime()) / 60000));
    }

    public DateTime(boolean z, long j, Integer num) {
        this.dateOnly = z;
        this.value = j;
        this.tzShift = z ? 0 : num == null ? TimeZone.getDefault().getOffset(j) / 60000 : num.intValue();
    }

    /* renamed from: a */
    private static void m2957a(StringBuilder sb, int i, int i2) {
        int i3 = i;
        if (i < 0) {
            sb.append('-');
            i3 = -i;
        }
        int i4 = i3;
        while (i4 > 0) {
            i4 /= 10;
            i2--;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            sb.append('0');
        }
        if (i3 != 0) {
            sb.append(i3);
        }
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* renamed from: b */
    private static Rfc3339ParseResult m2956b(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        Integer num;
        Matcher matcher = f38467e.matcher(str);
        if (!matcher.matches()) {
            throw new NumberFormatException("Invalid date/time format: " + str);
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        int parseInt2 = Integer.parseInt(matcher.group(2));
        int parseInt3 = Integer.parseInt(matcher.group(3));
        boolean z = matcher.group(4) != null;
        String group = matcher.group(9);
        boolean z2 = group != null;
        if (z2 && !z) {
            throw new NumberFormatException("Invalid date/time format, cannot specify time zone shift without specifying time: " + str);
        }
        if (z) {
            i4 = Integer.parseInt(matcher.group(5));
            i3 = Integer.parseInt(matcher.group(6));
            i2 = Integer.parseInt(matcher.group(7));
            i = matcher.group(8) != null ? Integer.parseInt(C8763m.m2762d(matcher.group(8).substring(1), 9, '0')) : 0;
        } else {
            i4 = 0;
            i3 = 0;
            i2 = 0;
            i = 0;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f38466d);
        gregorianCalendar.clear();
        gregorianCalendar.set(parseInt, parseInt2 - 1, parseInt3, i4, i3, i2);
        char timeInMillis = gregorianCalendar.getTimeInMillis();
        if (!z || !z2) {
            num = null;
        } else if (Character.toUpperCase(group.charAt(0)) != 'Z') {
            int parseInt4 = (Integer.parseInt(matcher.group(11)) * 60) + Integer.parseInt(matcher.group(12));
            int i5 = parseInt4;
            if (matcher.group(10).charAt(0) == '-') {
                i5 = -parseInt4;
            }
            timeInMillis -= i5 * 60000;
            num = Integer.valueOf(i5);
        } else {
            num = 0;
        }
        return new Rfc3339ParseResult(timeInMillis / 1000, i, z, num);
    }

    public static DateTime parseRfc3339(String str) {
        return m2956b(str).m2955a();
    }

    public static SecondsAndNanos parseRfc3339ToSecondsAndNanos(String str) {
        return m2956b(str).m2954b();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DateTime)) {
            return false;
        }
        DateTime dateTime = (DateTime) obj;
        if (this.dateOnly != dateTime.dateOnly || this.value != dateTime.value || this.tzShift != dateTime.tzShift) {
            z = false;
        }
        return z;
    }

    public int getTimeZoneShift() {
        return this.tzShift;
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        return Arrays.hashCode(new long[]{this.value, (this.dateOnly ? 1 : null) == 1 ? 1 : 0, this.tzShift});
    }

    public boolean isDateOnly() {
        return this.dateOnly;
    }

    public String toString() {
        return toStringRfc3339();
    }

    public String toStringRfc3339() {
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f38466d);
        gregorianCalendar.setTimeInMillis(this.value + (this.tzShift * 60000));
        m2957a(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        m2957a(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        m2957a(sb, gregorianCalendar.get(5), 2);
        if (!this.dateOnly) {
            sb.append('T');
            m2957a(sb, gregorianCalendar.get(11), 2);
            sb.append(':');
            m2957a(sb, gregorianCalendar.get(12), 2);
            sb.append(':');
            m2957a(sb, gregorianCalendar.get(13), 2);
            if (gregorianCalendar.isSet(14)) {
                sb.append('.');
                m2957a(sb, gregorianCalendar.get(14), 3);
            }
            int i = this.tzShift;
            if (i == 0) {
                sb.append('Z');
            } else {
                if (i > 0) {
                    sb.append('+');
                } else {
                    sb.append('-');
                    i = -i;
                }
                m2957a(sb, i / 60, 2);
                sb.append(':');
                m2957a(sb, i % 60, 2);
            }
        }
        return sb.toString();
    }
}
