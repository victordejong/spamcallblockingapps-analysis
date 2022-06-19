package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.icu.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
/* renamed from: com.google.android.material.datepicker.r */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/r.class */
class C4636r {
    /* renamed from: a */
    public static long m3110a(long j) {
        Calendar m3106b = m3106b();
        m3106b.setTimeInMillis(j);
        return m3104b(m3106b).getTimeInMillis();
    }

    @TargetApi(24)
    /* renamed from: a */
    private static DateFormat m3109a(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(m3098e());
        return instanceForSkeleton;
    }

    @TargetApi(24)
    /* renamed from: a */
    public static DateFormat m3107a(Locale locale) {
        return m3109a("MMMEd", locale);
    }

    /* renamed from: a */
    private static java.text.DateFormat m3111a(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(m3100d());
        return dateInstance;
    }

    /* renamed from: a */
    public static Calendar m3112a() {
        return m3104b(Calendar.getInstance());
    }

    /* renamed from: a */
    static Calendar m3108a(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(m3100d());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    @TargetApi(24)
    /* renamed from: b */
    public static DateFormat m3103b(Locale locale) {
        return m3109a("yMMMEd", locale);
    }

    /* renamed from: b */
    private static SimpleDateFormat m3105b(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(m3100d());
        return simpleDateFormat;
    }

    /* renamed from: b */
    public static Calendar m3106b() {
        return m3108a((Calendar) null);
    }

    /* renamed from: b */
    public static Calendar m3104b(Calendar calendar) {
        Calendar m3108a = m3108a(calendar);
        Calendar m3106b = m3106b();
        m3106b.set(m3108a.get(1), m3108a.get(2), m3108a.get(5));
        return m3106b;
    }

    /* renamed from: c */
    public static java.text.DateFormat m3101c(Locale locale) {
        return m3111a(0, locale);
    }

    /* renamed from: c */
    public static SimpleDateFormat m3102c() {
        return m3099d(Locale.getDefault());
    }

    /* renamed from: d */
    private static SimpleDateFormat m3099d(Locale locale) {
        return m3105b("MMMM, yyyy", locale);
    }

    /* renamed from: d */
    private static TimeZone m3100d() {
        return TimeZone.getTimeZone("UTC");
    }

    @TargetApi(24)
    /* renamed from: e */
    private static android.icu.util.TimeZone m3098e() {
        return android.icu.util.TimeZone.getTimeZone("UTC");
    }
}
