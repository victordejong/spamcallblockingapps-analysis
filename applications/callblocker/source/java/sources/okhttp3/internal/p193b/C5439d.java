package okhttp3.internal.p193b;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.internal.b.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/d.class */
public final class C5439d {

    /* renamed from: a */
    private static final ThreadLocal<DateFormat> f22729a = new ThreadLocal<DateFormat>() { // from class: okhttp3.internal.b.d.1
        /* renamed from: a */
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(C5449c.f22762g);
            return simpleDateFormat;
        }
    };

    /* renamed from: b */
    private static final String[] f22730b = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};

    /* renamed from: c */
    private static final DateFormat[] f22731c = new DateFormat[f22730b.length];

    /* renamed from: a */
    public static String m711a(Date date) {
        return f22729a.get().format(date);
    }

    /* renamed from: a */
    public static Date m712a(String str) {
        Date parse;
        int i = 0;
        if (str.length() == 0) {
            parse = null;
        } else {
            ParsePosition parsePosition = new ParsePosition(0);
            parse = f22729a.get().parse(str, parsePosition);
            if (parsePosition.getIndex() != str.length()) {
                synchronized (f22730b) {
                    int length = f22730b.length;
                    while (true) {
                        if (i >= length) {
                            parse = null;
                            break;
                        }
                        DateFormat dateFormat = f22731c[i];
                        DateFormat dateFormat2 = dateFormat;
                        if (dateFormat == null) {
                            dateFormat2 = new SimpleDateFormat(f22730b[i], Locale.US);
                            dateFormat2.setTimeZone(C5449c.f22762g);
                            f22731c[i] = dateFormat2;
                        }
                        parsePosition.setIndex(0);
                        parse = dateFormat2.parse(str, parsePosition);
                        if (parsePosition.getIndex() != 0) {
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        return parse;
    }
}
