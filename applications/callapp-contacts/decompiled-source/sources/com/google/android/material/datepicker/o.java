package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.icu.text.DateFormat;
import android.icu.util.TimeZone;
import com.google.android.material.a;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/o.class */
final class o {

    /* renamed from: a  reason: collision with root package name */
    static AtomicReference<n> f30487a = new AtomicReference<>();

    private o() {
    }

    private static int a(String str, String str2, int i, int i2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(long j) {
        Calendar b2 = b((Calendar) null);
        b2.setTimeInMillis(j);
        return a(b2).getTimeInMillis();
    }

    private static DateFormat a(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        return instanceForSkeleton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DateFormat a(Locale locale) {
        return a("yMMMd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Resources resources, SimpleDateFormat simpleDateFormat) {
        String localizedPattern = simpleDateFormat.toLocalizedPattern();
        return localizedPattern.replaceAll("d", resources.getString(a.j.mtrl_picker_text_input_day_abbr)).replaceAll("M", resources.getString(a.j.mtrl_picker_text_input_month_abbr)).replaceAll("y", resources.getString(a.j.mtrl_picker_text_input_year_abbr));
    }

    private static java.text.DateFormat a(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
        return dateInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Calendar a() {
        n nVar = f30487a.get();
        n nVar2 = nVar;
        if (nVar == null) {
            nVar2 = n.a();
        }
        java.util.TimeZone timeZone = nVar2.f30486b;
        Calendar instance = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        if (nVar2.f30485a != null) {
            instance.setTimeInMillis(nVar2.f30485a.longValue());
        }
        instance.set(11, 0);
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        instance.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Calendar a(Calendar calendar) {
        Calendar b2 = b(calendar);
        Calendar b3 = b((Calendar) null);
        b3.set(b2.get(1), b2.get(2), b2.get(5));
        return b3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DateFormat b(Locale locale) {
        return a("MMMd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Calendar b() {
        return b((Calendar) null);
    }

    private static Calendar b(Calendar calendar) {
        Calendar instance = Calendar.getInstance(java.util.TimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            instance.clear();
        } else {
            instance.setTimeInMillis(calendar.getTimeInMillis());
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DateFormat c(Locale locale) {
        return a("MMMEd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SimpleDateFormat c() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toLocalizedPattern().replaceAll("\\s+", ""), Locale.getDefault());
        simpleDateFormat.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DateFormat d(Locale locale) {
        return a("yMMMEd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static java.text.DateFormat e(Locale locale) {
        return a(2, locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static java.text.DateFormat f(Locale locale) {
        String str;
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) a(2, locale);
        String pattern = simpleDateFormat.toPattern();
        int a2 = a(pattern, "yY", 1, 0);
        if (a2 >= pattern.length()) {
            str = pattern;
        } else {
            String str2 = "EMd";
            int a3 = a(pattern, "EMd", 1, a2);
            if (a3 < pattern.length()) {
                str2 = "EMd,";
            }
            str = pattern.replace(pattern.substring(a(pattern, str2, -1, a2) + 1, a3), StringUtils.SPACE).trim();
        }
        simpleDateFormat.applyPattern(str);
        return simpleDateFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static java.text.DateFormat g(Locale locale) {
        return a(0, locale);
    }
}
