package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: e.k.a.c.n0.z */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/z.class */
public class C23939z extends DateFormat {

    /* renamed from: g */
    public static final Pattern f66209g = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d");

    /* renamed from: h */
    public static final Pattern f66210h;

    /* renamed from: i */
    public static final String[] f66211i;

    /* renamed from: j */
    public static final TimeZone f66212j;

    /* renamed from: k */
    public static final Locale f66213k;

    /* renamed from: l */
    public static final DateFormat f66214l;

    /* renamed from: m */
    public static final C23939z f66215m;

    /* renamed from: n */
    public static final Calendar f66216n;

    /* renamed from: a */
    public transient TimeZone f66217a;

    /* renamed from: b */
    public final Locale f66218b;

    /* renamed from: c */
    public Boolean f66219c;

    /* renamed from: d */
    public transient Calendar f66220d;

    /* renamed from: e */
    public transient DateFormat f66221e;

    /* renamed from: f */
    public boolean f66222f;

    static {
        try {
            f66210h = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d[T]\\d\\d[:]\\d\\d(?:[:]\\d\\d)?(\\.\\d+)?(Z|[+-]\\d\\d(?:[:]?\\d\\d)?)?");
            f66211i = new String[]{"yyyy-MM-dd'T'HH:mm:ss.SSSX", "yyyy-MM-dd'T'HH:mm:ss.SSS", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd"};
            TimeZone timeZone = TimeZone.getTimeZone("UTC");
            f66212j = timeZone;
            Locale locale = Locale.US;
            f66213k = locale;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", locale);
            f66214l = simpleDateFormat;
            simpleDateFormat.setTimeZone(timeZone);
            f66215m = new C23939z();
            f66216n = new GregorianCalendar(timeZone, locale);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public C23939z() {
        this.f66222f = true;
        this.f66218b = f66213k;
    }

    public C23939z(TimeZone timeZone, Locale locale, Boolean bool, boolean z) {
        this.f66222f = true;
        this.f66217a = timeZone;
        this.f66218b = locale;
        this.f66219c = bool;
        this.f66222f = z;
    }

    /* renamed from: b */
    public static int m5693b(String str, int i) {
        return (str.charAt(i + 1) - '0') + ((str.charAt(i) - '0') * 10);
    }

    /* renamed from: c */
    public static int m5692c(String str, int i) {
        char charAt = str.charAt(i);
        char charAt2 = str.charAt(i + 1);
        return (str.charAt(i + 3) - '0') + ((str.charAt(i + 2) - '0') * 10) + ((charAt2 - '0') * 100) + ((charAt - '0') * 1000);
    }

    /* renamed from: g */
    public static void m5689g(StringBuffer stringBuffer, int i) {
        int i2 = i / 10;
        if (i2 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i2 + 48));
            i -= i2 * 10;
        }
        stringBuffer.append((char) (i + 48));
    }

    /* renamed from: h */
    public static void m5688h(StringBuffer stringBuffer, int i) {
        int i2 = i / 100;
        if (i2 == 0) {
            stringBuffer.append('0');
            stringBuffer.append('0');
        } else {
            if (i2 > 99) {
                stringBuffer.append(i2);
            } else {
                m5689g(stringBuffer, i2);
            }
            i -= i2 * 100;
        }
        m5689g(stringBuffer, i);
    }

    /* renamed from: a */
    public Calendar m5694a(TimeZone timeZone) {
        Calendar calendar = this.f66220d;
        Calendar calendar2 = calendar;
        if (calendar == null) {
            calendar2 = (Calendar) f66216n.clone();
            this.f66220d = calendar2;
        }
        if (!calendar2.getTimeZone().equals(timeZone)) {
            calendar2.setTimeZone(timeZone);
        }
        calendar2.setLenient(isLenient());
        return calendar2;
    }

    @Override // java.text.DateFormat, java.text.Format
    public Object clone() {
        return new C23939z(this.f66217a, this.f66218b, this.f66219c, this.f66222f);
    }

    /* renamed from: e */
    public Date m5691e(String str) throws IllegalArgumentException, ParseException {
        Object obj;
        int length = str.length();
        TimeZone timeZone = f66212j;
        TimeZone timeZone2 = timeZone;
        if (this.f66217a != null) {
            timeZone2 = timeZone;
            if ('Z' != str.charAt(length - 1)) {
                timeZone2 = this.f66217a;
            }
        }
        Calendar m5694a = m5694a(timeZone2);
        m5694a.clear();
        if (length > 10) {
            Matcher matcher = f66210h.matcher(str);
            if (matcher.matches()) {
                int start = matcher.start(2);
                int end = matcher.end(2);
                int i = end - start;
                if (i > 1) {
                    int m5693b = m5693b(str, start + 1) * 3600;
                    int i2 = m5693b;
                    if (i >= 5) {
                        i2 = m5693b + (m5693b(str, end - 2) * 60);
                    }
                    m5694a.set(15, str.charAt(start) == '-' ? i2 * (-1000) : i2 * 1000);
                    m5694a.set(16, 0);
                }
                m5694a.set(m5692c(str, 0), m5693b(str, 5) - 1, m5693b(str, 8), m5693b(str, 11), m5693b(str, 14), (length <= 16 || str.charAt(16) != ':') ? 0 : m5693b(str, 17));
                int start2 = matcher.start(1) + 1;
                int end2 = matcher.end(1);
                if (start2 >= end2) {
                    m5694a.set(14, 0);
                } else {
                    int i3 = end2 - start2;
                    int i4 = 0;
                    if (i3 != 0) {
                        int i5 = 0;
                        if (i3 != 1) {
                            int i6 = 0;
                            if (i3 != 2) {
                                if (i3 != 3 && i3 > 9) {
                                    throw new ParseException(String.format("Cannot parse date \"%s\": invalid fractional seconds '%s'; can use at most 9 digits", str, matcher.group(1).substring(1)), start2);
                                }
                                i6 = 0 + (str.charAt(start2 + 2) - '0');
                            }
                            i5 = i6 + ((str.charAt(start2 + 1) - '0') * 10);
                        }
                        i4 = i5 + ((str.charAt(start2) - '0') * 100);
                    }
                    m5694a.set(14, i4);
                }
                return m5694a.getTime();
            }
            obj = "yyyy-MM-dd'T'HH:mm:ss.SSSX";
        } else if (f66209g.matcher(str).matches()) {
            m5694a.set(m5692c(str, 0), m5693b(str, 5) - 1, m5693b(str, 8), 0, 0, 0);
            m5694a.set(14, 0);
            return m5694a.getTime();
        } else {
            obj = "yyyy-MM-dd";
        }
        throw new ParseException(String.format("Cannot parse date \"%s\": while it seems to fit format '%s', parsing fails (leniency? %s)", str, obj, this.f66219c), 0);
    }

    @Override // java.text.DateFormat
    public boolean equals(Object obj) {
        return obj == this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f2, code lost:
        if (r0 < 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0106, code lost:
        if (r11 == false) goto L58;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Date m5690f(java.lang.String r9, java.text.ParsePosition r10) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1574n0.C23939z.m5690f(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    @Override // java.text.DateFormat
    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        TimeZone timeZone = this.f66217a;
        TimeZone timeZone2 = timeZone;
        if (timeZone == null) {
            timeZone2 = f66212j;
        }
        Calendar m5694a = m5694a(timeZone2);
        m5694a.setTime(date);
        int i = m5694a.get(1);
        if (m5694a.get(0) != 0) {
            if (i > 9999) {
                stringBuffer.append('+');
            }
            m5688h(stringBuffer, i);
        } else if (i == 1) {
            stringBuffer.append("+0000");
        } else {
            stringBuffer.append('-');
            m5688h(stringBuffer, i - 1);
        }
        stringBuffer.append('-');
        m5689g(stringBuffer, m5694a.get(2) + 1);
        stringBuffer.append('-');
        m5689g(stringBuffer, m5694a.get(5));
        stringBuffer.append('T');
        m5689g(stringBuffer, m5694a.get(11));
        stringBuffer.append(':');
        m5689g(stringBuffer, m5694a.get(12));
        stringBuffer.append(':');
        m5689g(stringBuffer, m5694a.get(13));
        stringBuffer.append('.');
        int i2 = m5694a.get(14);
        int i3 = i2 / 100;
        if (i3 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i3 + 48));
            i2 -= i3 * 100;
        }
        m5689g(stringBuffer, i2);
        int offset = timeZone2.getOffset(m5694a.getTimeInMillis());
        if (offset != 0) {
            int i4 = offset / 60000;
            int abs = Math.abs(i4 / 60);
            int abs2 = Math.abs(i4 % 60);
            char c = '+';
            if (offset < 0) {
                c = '-';
            }
            stringBuffer.append(c);
            m5689g(stringBuffer, abs);
            if (this.f66222f) {
                stringBuffer.append(':');
            }
            m5689g(stringBuffer, abs2);
        } else if (this.f66222f) {
            stringBuffer.append("+00:00");
        } else {
            stringBuffer.append("+0000");
        }
        return stringBuffer;
    }

    @Override // java.text.DateFormat
    public TimeZone getTimeZone() {
        return this.f66217a;
    }

    @Override // java.text.DateFormat
    public int hashCode() {
        return System.identityHashCode(this);
    }

    /* renamed from: i */
    public C23939z m5687i(Boolean bool) {
        Boolean bool2 = this.f66219c;
        return bool == bool2 || bool.equals(bool2) ? this : new C23939z(this.f66217a, this.f66218b, bool, this.f66222f);
    }

    @Override // java.text.DateFormat
    public boolean isLenient() {
        Boolean bool = this.f66219c;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: j */
    public C23939z m5686j(Locale locale) {
        return locale.equals(this.f66218b) ? this : new C23939z(this.f66217a, locale, this.f66219c, this.f66222f);
    }

    /* renamed from: k */
    public C23939z m5685k(TimeZone timeZone) {
        TimeZone timeZone2 = timeZone;
        if (timeZone == null) {
            timeZone2 = f66212j;
        }
        TimeZone timeZone3 = this.f66217a;
        return (timeZone2 == timeZone3 || timeZone2.equals(timeZone3)) ? this : new C23939z(timeZone2, this.f66218b, this.f66219c, this.f66222f);
    }

    @Override // java.text.DateFormat
    public Date parse(String str) throws ParseException {
        String[] strArr;
        String trim = str.trim();
        ParsePosition parsePosition = new ParsePosition(0);
        Date m5690f = m5690f(trim, parsePosition);
        if (m5690f != null) {
            return m5690f;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : f66211i) {
            if (sb.length() > 0) {
                sb.append("\", \"");
            } else {
                sb.append('\"');
            }
            sb.append(str2);
        }
        sb.append('\"');
        throw new ParseException(String.format("Cannot parse date \"%s\": not compatible with any of standard forms (%s)", trim, sb.toString()), parsePosition.getErrorIndex());
    }

    @Override // java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        try {
            return m5690f(str, parsePosition);
        } catch (ParseException e) {
            return null;
        }
    }

    @Override // java.text.DateFormat
    public void setLenient(boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        Boolean bool = this.f66219c;
        if (!(valueOf == bool || (valueOf != null && valueOf.equals(bool)))) {
            this.f66219c = valueOf;
            this.f66221e = null;
        }
    }

    @Override // java.text.DateFormat
    public void setTimeZone(TimeZone timeZone) {
        if (!timeZone.equals(this.f66217a)) {
            this.f66221e = null;
            this.f66217a = timeZone;
        }
    }

    public String toString() {
        return String.format("DateFormat %s: (timezone: %s, locale: %s, lenient: %s)", C23939z.class.getName(), this.f66217a, this.f66218b, this.f66219c);
    }
}
