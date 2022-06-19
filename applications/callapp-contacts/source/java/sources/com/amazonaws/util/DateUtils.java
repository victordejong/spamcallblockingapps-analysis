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

    /* renamed from: a */
    private static final TimeZone f12499a = TimeZone.getTimeZone("GMT");

    /* renamed from: b */
    private static final Map<String, ThreadLocal<SimpleDateFormat>> f12500b = new HashMap();

    /* renamed from: a */
    public static String m38253a(String str, Date date) {
        return m38247d(str).get().format(date);
    }

    /* renamed from: a */
    public static String m38252a(Date date) {
        return m38253a("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", date);
    }

    /* renamed from: a */
    public static Date m38255a(String str) {
        try {
            return m38254a("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", str);
        } catch (IllegalArgumentException e) {
            return m38254a("yyyy-MM-dd'T'HH:mm:ss'Z'", str);
        }
    }

    /* renamed from: a */
    private static Date m38254a(String str, String str2) {
        try {
            return m38247d(str).get().parse(str2);
        } catch (ParseException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: b */
    public static String m38250b(Date date) {
        return m38253a("EEE, dd MMM yyyy HH:mm:ss z", date);
    }

    /* renamed from: b */
    public static Date m38251b(String str) {
        return m38254a("EEE, dd MMM yyyy HH:mm:ss z", str);
    }

    /* renamed from: c */
    public static Date m38249c(String str) {
        return m38254a("yyyyMMdd'T'HHmmss'Z'", str);
    }

    /* renamed from: c */
    public static Date m38248c(Date date) {
        if (date == null) {
            return null;
        }
        return new Date(date.getTime());
    }

    /* renamed from: d */
    private static ThreadLocal<SimpleDateFormat> m38247d(final String str) {
        Map<String, ThreadLocal<SimpleDateFormat>> map = f12500b;
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
                            simpleDateFormat.setTimeZone(DateUtils.f12499a);
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
