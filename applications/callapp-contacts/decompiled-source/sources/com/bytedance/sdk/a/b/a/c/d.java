package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.b.a.c;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<DateFormat> f7887a = new ThreadLocal<DateFormat>() { // from class: com.bytedance.sdk.a.b.a.c.d.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public final DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(c.g);
            return simpleDateFormat;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f7888b = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};

    /* renamed from: c  reason: collision with root package name */
    private static final DateFormat[] f7889c = new DateFormat[15];

    public static String a(Date date) {
        return f7887a.get().format(date);
    }

    public static Date a(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = f7887a.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return parse;
        }
        String[] strArr = f7888b;
        synchronized (strArr) {
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                DateFormat[] dateFormatArr = f7889c;
                DateFormat dateFormat = dateFormatArr[i];
                DateFormat dateFormat2 = dateFormat;
                if (dateFormat == null) {
                    dateFormat2 = new SimpleDateFormat(f7888b[i], Locale.US);
                    dateFormat2.setTimeZone(c.g);
                    dateFormatArr[i] = dateFormat2;
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
