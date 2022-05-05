package com.google.android.material.datepicker;

import android.os.Build;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/DateStrings.class */
class DateStrings {
    private DateStrings() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Pair<String, String> m9987a(@Nullable Long l, @Nullable Long l2) {
        return m9986b(l, l2, null);
    }

    /* renamed from: b */
    static Pair<String, String> m9986b(@Nullable Long l, @Nullable Long l2, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l == null && l2 == null) {
            return Pair.m19344a(null, null);
        }
        if (l == null) {
            return Pair.m19344a(null, m9984d(l2.longValue(), simpleDateFormat));
        }
        if (l2 == null) {
            return Pair.m19344a(m9984d(l.longValue(), simpleDateFormat), null);
        }
        Calendar p = UtcDates.m9838p();
        Calendar r = UtcDates.m9836r();
        r.setTimeInMillis(l.longValue());
        Calendar r2 = UtcDates.m9836r();
        r2.setTimeInMillis(l2.longValue());
        if (simpleDateFormat == null) {
            return r.get(1) == r2.get(1) ? r.get(1) == p.get(1) ? Pair.m19344a(m9982f(l.longValue(), Locale.getDefault()), m9982f(l2.longValue(), Locale.getDefault())) : Pair.m19344a(m9982f(l.longValue(), Locale.getDefault()), m9978j(l2.longValue(), Locale.getDefault())) : Pair.m19344a(m9978j(l.longValue(), Locale.getDefault()), m9978j(l2.longValue(), Locale.getDefault()));
        }
        return Pair.m19344a(simpleDateFormat.format(new Date(l.longValue())), simpleDateFormat.format(new Date(l2.longValue())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static String m9985c(long j) {
        return m9984d(j, null);
    }

    /* renamed from: d */
    static String m9984d(long j, @Nullable SimpleDateFormat simpleDateFormat) {
        Calendar p = UtcDates.m9838p();
        Calendar r = UtcDates.m9836r();
        r.setTimeInMillis(j);
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j)) : p.get(1) == r.get(1) ? m9983e(j) : m9979i(j);
    }

    /* renamed from: e */
    static String m9983e(long j) {
        return m9982f(j, Locale.getDefault());
    }

    /* renamed from: f */
    static String m9982f(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.m9851c(locale).format(new Date(j)) : UtcDates.m9844j(locale).format(new Date(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static String m9981g(long j) {
        return m9980h(j, Locale.getDefault());
    }

    /* renamed from: h */
    static String m9980h(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.m9850d(locale).format(new Date(j)) : UtcDates.m9846h(locale).format(new Date(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static String m9979i(long j) {
        return m9978j(j, Locale.getDefault());
    }

    /* renamed from: j */
    static String m9978j(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.m9834t(locale).format(new Date(j)) : UtcDates.m9845i(locale).format(new Date(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static String m9977k(long j) {
        return m9976l(j, Locale.getDefault());
    }

    /* renamed from: l */
    static String m9976l(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.m9833u(locale).format(new Date(j)) : UtcDates.m9846h(locale).format(new Date(j));
    }
}
