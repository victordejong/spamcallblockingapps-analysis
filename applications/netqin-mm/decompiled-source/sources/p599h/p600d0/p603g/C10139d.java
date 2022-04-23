package p599h.p600d0.p603g;

import com.android.volley.toolbox.HttpHeaderParser;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p599h.p600d0.C10109c;
/* renamed from: h.d0.g.d */
/* loaded from: classes2-dex2jar.jar:h/d0/g/d.class */
public final class C10139d {

    /* renamed from: a */
    public static final ThreadLocal<DateFormat> f37441a = new C10140a();

    /* renamed from: b */
    public static final String[] f37442b;

    /* renamed from: c */
    public static final DateFormat[] f37443c;

    /* renamed from: h.d0.g.d$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/g/d$a.class */
    public class C10140a extends ThreadLocal<DateFormat> {
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(C10109c.f37327n);
            return simpleDateFormat;
        }
    }

    static {
        String[] strArr = {HttpHeaderParser.RFC1123_FORMAT, "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        f37442b = strArr;
        f37443c = new DateFormat[strArr.length];
    }

    /* renamed from: a */
    public static String m1329a(Date date) {
        return f37441a.get().format(date);
    }

    /* renamed from: a */
    public static Date m1330a(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = f37441a.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return parse;
        }
        synchronized (f37442b) {
            try {
                int length = f37442b.length;
                for (int i = 0; i < length; i++) {
                    DateFormat dateFormat = f37443c[i];
                    DateFormat dateFormat2 = dateFormat;
                    if (dateFormat == null) {
                        dateFormat2 = new SimpleDateFormat(f37442b[i], Locale.US);
                        dateFormat2.setTimeZone(C10109c.f37327n);
                        f37443c[i] = dateFormat2;
                    }
                    parsePosition.setIndex(0);
                    Date parse2 = dateFormat2.parse(str, parsePosition);
                    if (parsePosition.getIndex() != 0) {
                        return parse2;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
