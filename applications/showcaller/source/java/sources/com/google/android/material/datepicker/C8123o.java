package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.icu.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import p078c.p084c.p085a.p096b.C1894j;
/* renamed from: com.google.android.material.datepicker.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/o.class */
class C8123o {

    /* renamed from: a */
    static AtomicReference<C8122n> f36701a = new AtomicReference<>();

    /* renamed from: a */
    public static long m4855a(long j) {
        Calendar m4839q = m4839q();
        m4839q.setTimeInMillis(j);
        return m4850f(m4839q).getTimeInMillis();
    }

    /* renamed from: b */
    private static int m4854b(String str, String str2, int i, int i2) {
        while (i2 >= 0 && i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            int i3 = i2;
            if (str.charAt(i2) == '\'') {
                do {
                    i2 += i;
                    i3 = i2;
                    if (i2 >= 0) {
                        i3 = i2;
                        if (i2 < str.length()) {
                            i3 = i2;
                        }
                    }
                } while (str.charAt(i2) != '\'');
            }
            i2 = i3 + i;
        }
        return i2;
    }

    @TargetApi(24)
    /* renamed from: c */
    public static DateFormat m4853c(Locale locale) {
        return m4851e("MMMd", locale);
    }

    @TargetApi(24)
    /* renamed from: d */
    public static DateFormat m4852d(Locale locale) {
        return m4851e("MMMEd", locale);
    }

    @TargetApi(24)
    /* renamed from: e */
    private static DateFormat m4851e(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(m4840p());
        return instanceForSkeleton;
    }

    /* renamed from: f */
    public static Calendar m4850f(Calendar calendar) {
        Calendar m4838r = m4838r(calendar);
        Calendar m4839q = m4839q();
        m4839q.set(m4838r.get(1), m4838r.get(2), m4838r.get(5));
        return m4839q;
    }

    /* renamed from: g */
    private static java.text.DateFormat m4849g(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(m4842n());
        return dateInstance;
    }

    /* renamed from: h */
    public static java.text.DateFormat m4848h(Locale locale) {
        return m4849g(0, locale);
    }

    /* renamed from: i */
    public static java.text.DateFormat m4847i(Locale locale) {
        return m4849g(2, locale);
    }

    /* renamed from: j */
    public static java.text.DateFormat m4846j(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) m4847i(locale);
        simpleDateFormat.applyPattern(m4835u(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    /* renamed from: k */
    public static SimpleDateFormat m4845k() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toLocalizedPattern().replaceAll("\\s+", ""), Locale.getDefault());
        simpleDateFormat.setTimeZone(m4842n());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    /* renamed from: l */
    public static String m4844l(Resources resources, SimpleDateFormat simpleDateFormat) {
        String localizedPattern = simpleDateFormat.toLocalizedPattern();
        return localizedPattern.replaceAll("d", resources.getString(C1894j.mtrl_picker_text_input_day_abbr)).replaceAll("M", resources.getString(C1894j.mtrl_picker_text_input_month_abbr)).replaceAll("y", resources.getString(C1894j.mtrl_picker_text_input_year_abbr));
    }

    /* renamed from: m */
    static C8122n m4843m() {
        C8122n c8122n = f36701a.get();
        C8122n c8122n2 = c8122n;
        if (c8122n == null) {
            c8122n2 = C8122n.m4856c();
        }
        return c8122n2;
    }

    /* renamed from: n */
    private static TimeZone m4842n() {
        return TimeZone.getTimeZone("UTC");
    }

    /* renamed from: o */
    public static Calendar m4841o() {
        Calendar m4858a = m4843m().m4858a();
        m4858a.set(11, 0);
        m4858a.set(12, 0);
        m4858a.set(13, 0);
        m4858a.set(14, 0);
        m4858a.setTimeZone(m4842n());
        return m4858a;
    }

    @TargetApi(24)
    /* renamed from: p */
    private static android.icu.util.TimeZone m4840p() {
        return android.icu.util.TimeZone.getTimeZone("UTC");
    }

    /* renamed from: q */
    public static Calendar m4839q() {
        return m4838r(null);
    }

    /* renamed from: r */
    static Calendar m4838r(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(m4842n());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    @TargetApi(24)
    /* renamed from: s */
    public static DateFormat m4837s(Locale locale) {
        return m4851e("yMMMd", locale);
    }

    @TargetApi(24)
    /* renamed from: t */
    public static DateFormat m4836t(Locale locale) {
        return m4851e("yMMMEd", locale);
    }

    /* renamed from: u */
    private static String m4835u(String str) {
        int m4854b = m4854b(str, "yY", 1, 0);
        if (m4854b >= str.length()) {
            return str;
        }
        String str2 = "EMd";
        int m4854b2 = m4854b(str, "EMd", 1, m4854b);
        if (m4854b2 < str.length()) {
            str2 = "EMd,";
        }
        return str.replace(str.substring(m4854b(str, str2, -1, m4854b) + 1, m4854b2), " ").trim();
    }
}
