package com.google.api.client.p379a;

import com.callapp.contacts.model.Constants;
import com.google.common.base.C15398p;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.api.client.a.l */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/l.class */
public final class C15237l implements Serializable {

    /* renamed from: a */
    private static final TimeZone f55104a = TimeZone.getTimeZone("GMT");

    /* renamed from: b */
    private static final Pattern f55105b = Pattern.compile("(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d{1,9})?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?");

    /* renamed from: c */
    private final long f55106c;

    /* renamed from: d */
    private final boolean f55107d;

    /* renamed from: e */
    private final int f55108e;

    /* renamed from: com.google.api.client.a.l$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/l$a.class */
    public static final class C15239a implements Serializable {

        /* renamed from: a */
        private final long f55109a;

        /* renamed from: b */
        private final int f55110b;

        /* renamed from: c */
        private final boolean f55111c;

        /* renamed from: d */
        private final Integer f55112d;

        private C15239a(long j, int i, boolean z, Integer num) {
            this.f55109a = j;
            this.f55110b = i;
            this.f55111c = z;
            this.f55112d = num;
        }

        /* renamed from: a */
        final C15237l m9224a() {
            return new C15237l(!this.f55111c, TimeUnit.SECONDS.toMillis(this.f55109a) + TimeUnit.NANOSECONDS.toMillis(this.f55110b), this.f55112d);
        }
    }

    public C15237l(long j) {
        this(false, j, null);
    }

    public C15237l(long j, int i) {
        this(false, j, Integer.valueOf(i));
    }

    public C15237l(String str) {
        C15237l m9224a = m9225b(str).m9224a();
        this.f55107d = m9224a.f55107d;
        this.f55106c = m9224a.f55106c;
        this.f55108e = m9224a.f55108e;
    }

    public C15237l(Date date) {
        this(date.getTime());
    }

    public C15237l(Date date, TimeZone timeZone) {
        this(false, date.getTime(), timeZone == null ? null : Integer.valueOf(timeZone.getOffset(date.getTime()) / 60000));
    }

    public C15237l(boolean z, long j, Integer num) {
        this.f55107d = z;
        this.f55106c = j;
        this.f55108e = z ? 0 : num == null ? TimeZone.getDefault().getOffset(j) / 60000 : num.intValue();
    }

    /* renamed from: a */
    public static C15237l m9227a(String str) {
        return m9225b(str).m9224a();
    }

    /* renamed from: a */
    private static void m9226a(StringBuilder sb, int i, int i2) {
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

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* renamed from: b */
    private static C15239a m9225b(String str) throws NumberFormatException {
        int i;
        int i2;
        int i3;
        int i4;
        Integer num;
        Matcher matcher = f55105b.matcher(str);
        if (matcher.matches()) {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            int parseInt3 = Integer.parseInt(matcher.group(3));
            boolean z = matcher.group(4) != null;
            String group = matcher.group(9);
            boolean z2 = group != null;
            if (z2 && !z) {
                throw new NumberFormatException("Invalid date/time format, cannot specify time zone shift without specifying time: ".concat(String.valueOf(str)));
            }
            if (z) {
                i4 = Integer.parseInt(matcher.group(5));
                i3 = Integer.parseInt(matcher.group(6));
                i2 = Integer.parseInt(matcher.group(7));
                i = matcher.group(8) != null ? Integer.parseInt(C15398p.m8922a(matcher.group(8).substring(1))) : 0;
            } else {
                i4 = 0;
                i3 = 0;
                i2 = 0;
                i = 0;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(f55104a);
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
                timeInMillis -= i5 * Constants.MINUTE_IN_MILLIS;
                num = Integer.valueOf(i5);
            } else {
                num = 0;
            }
            return new C15239a(timeInMillis / 1000, i, z, num);
        }
        throw new NumberFormatException("Invalid date/time format: ".concat(String.valueOf(str)));
    }

    /* renamed from: a */
    public final String m9228a() {
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f55104a);
        gregorianCalendar.setTimeInMillis(this.f55106c + (this.f55108e * Constants.MINUTE_IN_MILLIS));
        m9226a(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        m9226a(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        m9226a(sb, gregorianCalendar.get(5), 2);
        if (!this.f55107d) {
            sb.append('T');
            m9226a(sb, gregorianCalendar.get(11), 2);
            sb.append(':');
            m9226a(sb, gregorianCalendar.get(12), 2);
            sb.append(':');
            m9226a(sb, gregorianCalendar.get(13), 2);
            if (gregorianCalendar.isSet(14)) {
                sb.append('.');
                m9226a(sb, gregorianCalendar.get(14), 3);
            }
            int i = this.f55108e;
            if (i == 0) {
                sb.append('Z');
            } else {
                if (i > 0) {
                    sb.append('+');
                } else {
                    sb.append('-');
                    i = -i;
                }
                m9226a(sb, i / 60, 2);
                sb.append(':');
                m9226a(sb, i % 60, 2);
            }
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C15237l)) {
            return false;
        }
        C15237l c15237l = (C15237l) obj;
        return this.f55107d == c15237l.f55107d && this.f55106c == c15237l.f55106c && this.f55108e == c15237l.f55108e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new long[]{this.f55106c, (this.f55107d ? 1 : null) == 1 ? 1 : 0, this.f55108e});
    }

    public final String toString() {
        return m9228a();
    }
}
