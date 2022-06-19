package okhttp3.internal.p092b;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.internal.b.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/d.class */
public final class C1989d {

    /* renamed from: a */
    private static final ThreadLocal<DateFormat> f4955a = new ThreadLocal<DateFormat>() { // from class: okhttp3.internal.b.d.1
        /* renamed from: a */
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(C1999c.f4988g);
            return simpleDateFormat;
        }
    };

    /* renamed from: b */
    private static final String[] f4956b = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};

    /* renamed from: c */
    private static final DateFormat[] f4957c = new DateFormat[f4956b.length];

    /* renamed from: a */
    public static String m2393a(Date date) {
        return f4955a.get().format(date);
    }

    /* renamed from: a */
    public static Date m2394a(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = f4955a.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return parse;
        }
        synchronized (f4956b) {
            int length = f4956b.length;
            for (int i = 0; i < length; i++) {
                DateFormat dateFormat = f4957c[i];
                DateFormat dateFormat2 = dateFormat;
                if (dateFormat == null) {
                    dateFormat2 = new SimpleDateFormat(f4956b[i], Locale.US);
                    dateFormat2.setTimeZone(C1999c.f4988g);
                    f4957c[i] = dateFormat2;
                }
                parsePosition.setIndex(0);
                Date parse2 = dateFormat2.parse(str, parsePosition);
                if (parsePosition.getIndex() != 0) {
                    return parse2;
                }
            }
            return null;
        }
    }
}
