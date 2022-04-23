package com.google.api.client.a;

import com.callapp.contacts.model.Constants;
import com.google.common.base.p;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/l.class */
public final class l implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f31640a = TimeZone.getTimeZone("GMT");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f31641b = Pattern.compile("(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d{1,9})?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?");

    /* renamed from: c  reason: collision with root package name */
    private final long f31642c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f31643d;
    private final int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/l$a.class */
    public static final class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final long f31644a;

        /* renamed from: b  reason: collision with root package name */
        private final int f31645b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f31646c;

        /* renamed from: d  reason: collision with root package name */
        private final Integer f31647d;

        private a(long j, int i, boolean z, Integer num) {
            this.f31644a = j;
            this.f31645b = i;
            this.f31646c = z;
            this.f31647d = num;
        }

        final l a() {
            return new l(!this.f31646c, TimeUnit.SECONDS.toMillis(this.f31644a) + TimeUnit.NANOSECONDS.toMillis(this.f31645b), this.f31647d);
        }
    }

    public l(long j) {
        this(false, j, null);
    }

    public l(long j, int i) {
        this(false, j, Integer.valueOf(i));
    }

    public l(String str) {
        l a2 = b(str).a();
        this.f31643d = a2.f31643d;
        this.f31642c = a2.f31642c;
        this.e = a2.e;
    }

    public l(Date date) {
        this(date.getTime());
    }

    public l(Date date, TimeZone timeZone) {
        this(false, date.getTime(), timeZone == null ? null : Integer.valueOf(timeZone.getOffset(date.getTime()) / 60000));
    }

    public l(boolean z, long j, Integer num) {
        this.f31643d = z;
        this.f31642c = j;
        this.e = z ? 0 : num == null ? TimeZone.getDefault().getOffset(j) / 60000 : num.intValue();
    }

    public static l a(String str) {
        return b(str).a();
    }

    private static void a(StringBuilder sb, int i, int i2) {
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

    private static a b(String str) throws NumberFormatException {
        int i;
        int i2;
        int i3;
        int i4;
        Integer num;
        Matcher matcher = f31641b.matcher(str);
        if (matcher.matches()) {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            int parseInt3 = Integer.parseInt(matcher.group(3));
            boolean z = matcher.group(4) != null;
            String group = matcher.group(9);
            boolean z2 = group != null;
            if (!z2 || z) {
                if (z) {
                    i4 = Integer.parseInt(matcher.group(5));
                    i3 = Integer.parseInt(matcher.group(6));
                    i2 = Integer.parseInt(matcher.group(7));
                    i = matcher.group(8) != null ? Integer.parseInt(p.a(matcher.group(8).substring(1))) : 0;
                } else {
                    i4 = 0;
                    i3 = 0;
                    i2 = 0;
                    i = 0;
                }
                GregorianCalendar gregorianCalendar = new GregorianCalendar(f31640a);
                gregorianCalendar.clear();
                gregorianCalendar.set(parseInt, parseInt2 - 1, parseInt3, i4, i3, i2);
                long timeInMillis = gregorianCalendar.getTimeInMillis();
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
                return new a(timeInMillis / 1000, i, z, num);
            }
            throw new NumberFormatException("Invalid date/time format, cannot specify time zone shift without specifying time: ".concat(String.valueOf(str)));
        }
        throw new NumberFormatException("Invalid date/time format: ".concat(String.valueOf(str)));
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f31640a);
        gregorianCalendar.setTimeInMillis(this.f31642c + (this.e * Constants.MINUTE_IN_MILLIS));
        a(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        a(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        a(sb, gregorianCalendar.get(5), 2);
        if (!this.f31643d) {
            sb.append('T');
            a(sb, gregorianCalendar.get(11), 2);
            sb.append(':');
            a(sb, gregorianCalendar.get(12), 2);
            sb.append(':');
            a(sb, gregorianCalendar.get(13), 2);
            if (gregorianCalendar.isSet(14)) {
                sb.append('.');
                a(sb, gregorianCalendar.get(14), 3);
            }
            int i = this.e;
            if (i == 0) {
                sb.append('Z');
            } else {
                if (i > 0) {
                    sb.append('+');
                } else {
                    sb.append('-');
                    i = -i;
                }
                a(sb, i / 60, 2);
                sb.append(':');
                a(sb, i % 60, 2);
            }
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f31643d == lVar.f31643d && this.f31642c == lVar.f31642c && this.e == lVar.e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new long[]{this.f31642c, this.f31643d ? 1L : 0L, this.e});
    }

    public final String toString() {
        return a();
    }
}
