package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.icu.text.DateFormat;
import android.icu.util.TimeZone;
import com.google.android.material.C14376a;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.android.material.datepicker.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/o.class */
final class C14548o {

    /* renamed from: a */
    static AtomicReference<C14547n> f53063a = new AtomicReference<>();

    private C14548o() {
    }

    /* renamed from: a */
    private static int m10793a(String str, String str2, int i, int i2) {
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

    /* renamed from: a */
    public static long m10795a(long j) {
        Calendar m10788b = m10788b((Calendar) null);
        m10788b.setTimeInMillis(j);
        return m10791a(m10788b).getTimeInMillis();
    }

    /* renamed from: a */
    private static DateFormat m10792a(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        return instanceForSkeleton;
    }

    /* renamed from: a */
    public static DateFormat m10790a(Locale locale) {
        return m10792a("yMMMd", locale);
    }

    /* renamed from: a */
    public static String m10794a(Resources resources, SimpleDateFormat simpleDateFormat) {
        String localizedPattern = simpleDateFormat.toLocalizedPattern();
        return localizedPattern.replaceAll("d", resources.getString(C14376a.C14386j.mtrl_picker_text_input_day_abbr)).replaceAll("M", resources.getString(C14376a.C14386j.mtrl_picker_text_input_month_abbr)).replaceAll("y", resources.getString(C14376a.C14386j.mtrl_picker_text_input_year_abbr));
    }

    /* renamed from: a */
    private static java.text.DateFormat m10796a(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
        return dateInstance;
    }

    /* renamed from: a */
    public static Calendar m10797a() {
        C14547n c14547n = f53063a.get();
        C14547n c14547n2 = c14547n;
        if (c14547n == null) {
            c14547n2 = C14547n.m10798a();
        }
        java.util.TimeZone timeZone = c14547n2.f53062b;
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        if (c14547n2.f53061a != null) {
            calendar.setTimeInMillis(c14547n2.f53061a.longValue());
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
        return calendar;
    }

    /* renamed from: a */
    public static Calendar m10791a(Calendar calendar) {
        Calendar m10788b = m10788b(calendar);
        Calendar m10788b2 = m10788b((Calendar) null);
        m10788b2.set(m10788b.get(1), m10788b.get(2), m10788b.get(5));
        return m10788b2;
    }

    /* renamed from: b */
    public static DateFormat m10787b(Locale locale) {
        return m10792a("MMMd", locale);
    }

    /* renamed from: b */
    public static Calendar m10789b() {
        return m10788b((Calendar) null);
    }

    /* renamed from: b */
    private static Calendar m10788b(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(java.util.TimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    /* renamed from: c */
    public static DateFormat m10785c(Locale locale) {
        return m10792a("MMMEd", locale);
    }

    /* renamed from: c */
    public static SimpleDateFormat m10786c() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toLocalizedPattern().replaceAll("\\s+", ""), Locale.getDefault());
        simpleDateFormat.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    /* renamed from: d */
    public static DateFormat m10784d(Locale locale) {
        return m10792a("yMMMEd", locale);
    }

    /* renamed from: e */
    public static java.text.DateFormat m10783e(Locale locale) {
        return m10796a(2, locale);
    }

    /* renamed from: f */
    public static java.text.DateFormat m10782f(Locale locale) {
        String str;
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) m10796a(2, locale);
        String pattern = simpleDateFormat.toPattern();
        int m10793a = m10793a(pattern, "yY", 1, 0);
        if (m10793a >= pattern.length()) {
            str = pattern;
        } else {
            String str2 = "EMd";
            int m10793a2 = m10793a(pattern, "EMd", 1, m10793a);
            if (m10793a2 < pattern.length()) {
                str2 = "EMd,";
            }
            str = pattern.replace(pattern.substring(m10793a(pattern, str2, -1, m10793a) + 1, m10793a2), StringUtils.SPACE).trim();
        }
        simpleDateFormat.applyPattern(str);
        return simpleDateFormat;
    }

    /* renamed from: g */
    public static java.text.DateFormat m10781g(Locale locale) {
        return m10796a(0, locale);
    }
}
