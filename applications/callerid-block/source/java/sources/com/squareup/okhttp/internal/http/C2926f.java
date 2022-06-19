package com.squareup.okhttp.internal.http;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* renamed from: com.squareup.okhttp.internal.http.f */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/f.class */
public final class C2926f {

    /* renamed from: a */
    private static final TimeZone f12346a = TimeZone.getTimeZone("GMT");

    /* renamed from: b */
    private static final ThreadLocal<DateFormat> f12347b = new C2927a();

    /* renamed from: c */
    private static final String[] f12348c;

    /* renamed from: d */
    private static final DateFormat[] f12349d;

    /* renamed from: com.squareup.okhttp.internal.http.f$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/f$a.class */
    static final class C2927a extends ThreadLocal<DateFormat> {
        C2927a() {
        }

        /* renamed from: a */
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(C2926f.f12346a);
            return simpleDateFormat;
        }
    }

    static {
        String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        f12348c = strArr;
        f12349d = new DateFormat[strArr.length];
    }

    /* renamed from: b */
    public static String m995b(Date date) {
        return f12347b.get().format(date);
    }

    /* renamed from: c */
    public static Date m994c(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = f12347b.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return parse;
        }
        String[] strArr = f12348c;
        synchronized (strArr) {
            try {
                int length = strArr.length;
                for (int i = 0; i < length; i++) {
                    DateFormat[] dateFormatArr = f12349d;
                    DateFormat dateFormat = dateFormatArr[i];
                    DateFormat dateFormat2 = dateFormat;
                    if (dateFormat == null) {
                        dateFormat2 = new SimpleDateFormat(f12348c[i], Locale.US);
                        dateFormat2.setTimeZone(f12346a);
                        dateFormatArr[i] = dateFormat2;
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
