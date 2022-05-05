package com.b.a.a.a;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f3202a = TimeZone.getTimeZone("GMT");

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<DateFormat> f3203b = new ThreadLocal<DateFormat>() { // from class: com.b.a.a.a.f.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(f.f3202a);
            return simpleDateFormat;
        }
    };
    private static final String[] c = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
    private static final DateFormat[] d = new DateFormat[15];

    public static Date a(String str) {
        Date parse;
        int i = 0;
        if (str.length() == 0) {
            parse = null;
        } else {
            ParsePosition parsePosition = new ParsePosition(0);
            parse = f3203b.get().parse(str, parsePosition);
            if (parsePosition.getIndex() != str.length()) {
                synchronized (c) {
                    int length = c.length;
                    while (true) {
                        if (i >= length) {
                            parse = null;
                            break;
                        }
                        DateFormat dateFormat = d[i];
                        DateFormat dateFormat2 = dateFormat;
                        if (dateFormat == null) {
                            dateFormat2 = new SimpleDateFormat(c[i], Locale.US);
                            dateFormat2.setTimeZone(f3202a);
                            d[i] = dateFormat2;
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
