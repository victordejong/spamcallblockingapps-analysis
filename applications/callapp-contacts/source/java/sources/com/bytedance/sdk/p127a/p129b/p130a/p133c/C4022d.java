package com.bytedance.sdk.p127a.p129b.p130a.p133c;

import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* renamed from: com.bytedance.sdk.a.b.a.c.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/d.class */
public final class C4022d {

    /* renamed from: a */
    private static final ThreadLocal<DateFormat> f14597a = new ThreadLocal<DateFormat>() { // from class: com.bytedance.sdk.a.b.a.c.d.1
        /* renamed from: a */
        public final DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(C4015c.f14580g);
            return simpleDateFormat;
        }
    };

    /* renamed from: b */
    private static final String[] f14598b = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};

    /* renamed from: c */
    private static final DateFormat[] f14599c = new DateFormat[15];

    /* renamed from: a */
    public static String m36884a(Date date) {
        return f14597a.get().format(date);
    }

    /* renamed from: a */
    public static Date m36885a(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = f14597a.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return parse;
        }
        String[] strArr = f14598b;
        synchronized (strArr) {
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                DateFormat[] dateFormatArr = f14599c;
                DateFormat dateFormat = dateFormatArr[i];
                DateFormat dateFormat2 = dateFormat;
                if (dateFormat == null) {
                    dateFormat2 = new SimpleDateFormat(f14598b[i], Locale.US);
                    dateFormat2.setTimeZone(C4015c.f14580g);
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
