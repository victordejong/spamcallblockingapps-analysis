package com.amazonaws.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/DateUtils.class */
public class DateUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f6906a = TimeZone.getTimeZone("GMT");

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, ThreadLocal<SimpleDateFormat>> f6907b = new HashMap();

    public static String a(String str, Date date) {
        return d(str).get().format(date);
    }

    public static String a(Date date) {
        return a("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", date);
    }

    public static Date a(String str) {
        try {
            return a("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", str);
        } catch (IllegalArgumentException e) {
            return a("yyyy-MM-dd'T'HH:mm:ss'Z'", str);
        }
    }

    private static Date a(String str, String str2) {
        try {
            return d(str).get().parse(str2);
        } catch (ParseException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static String b(Date date) {
        return a("EEE, dd MMM yyyy HH:mm:ss z", date);
    }

    public static Date b(String str) {
        return a("EEE, dd MMM yyyy HH:mm:ss z", str);
    }

    public static Date c(String str) {
        return a("yyyyMMdd'T'HHmmss'Z'", str);
    }

    public static Date c(Date date) {
        if (date == null) {
            return null;
        }
        return new Date(date.getTime());
    }

    private static ThreadLocal<SimpleDateFormat> d(final String str) {
        Map<String, ThreadLocal<SimpleDateFormat>> map = f6907b;
        ThreadLocal<SimpleDateFormat> threadLocal = map.get(str);
        ThreadLocal<SimpleDateFormat> threadLocal2 = threadLocal;
        if (threadLocal == null) {
            synchronized (map) {
                ThreadLocal<SimpleDateFormat> threadLocal3 = map.get(str);
                threadLocal2 = threadLocal3;
                if (threadLocal3 == null) {
                    threadLocal2 = new ThreadLocal<SimpleDateFormat>() { // from class: com.amazonaws.util.DateUtils.1
                        @Override // java.lang.ThreadLocal
                        protected final /* synthetic */ SimpleDateFormat initialValue() {
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
                            simpleDateFormat.setTimeZone(DateUtils.f6906a);
                            simpleDateFormat.setLenient(false);
                            return simpleDateFormat;
                        }
                    };
                    map.put(str, threadLocal2);
                }
            }
        }
        return threadLocal2;
    }
}
