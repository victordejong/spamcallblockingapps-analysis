package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import p020b.p041h.p049k.C1593d;
/* renamed from: com.google.android.material.datepicker.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/d.class */
class C8104d {
    /* renamed from: a */
    public static C1593d<String, String> m4928a(Long l, Long l2) {
        return m4927b(l, l2, null);
    }

    /* renamed from: b */
    static C1593d<String, String> m4927b(Long l, Long l2, SimpleDateFormat simpleDateFormat) {
        if (l == null && l2 == null) {
            return C1593d.m29665a(null, null);
        }
        if (l == null) {
            return C1593d.m29665a(null, m4925d(l2.longValue(), simpleDateFormat));
        }
        if (l2 == null) {
            return C1593d.m29665a(m4925d(l.longValue(), simpleDateFormat), null);
        }
        Calendar m4841o = C8123o.m4841o();
        Calendar m4839q = C8123o.m4839q();
        m4839q.setTimeInMillis(l.longValue());
        Calendar m4839q2 = C8123o.m4839q();
        m4839q2.setTimeInMillis(l2.longValue());
        if (simpleDateFormat != null) {
            return C1593d.m29665a(simpleDateFormat.format(new Date(l.longValue())), simpleDateFormat.format(new Date(l2.longValue())));
        }
        return m4839q.get(1) == m4839q2.get(1) ? m4839q.get(1) == m4841o.get(1) ? C1593d.m29665a(m4923f(l.longValue(), Locale.getDefault()), m4923f(l2.longValue(), Locale.getDefault())) : C1593d.m29665a(m4923f(l.longValue(), Locale.getDefault()), m4918k(l2.longValue(), Locale.getDefault())) : C1593d.m29665a(m4918k(l.longValue(), Locale.getDefault()), m4918k(l2.longValue(), Locale.getDefault()));
    }

    /* renamed from: c */
    public static String m4926c(long j) {
        return m4925d(j, null);
    }

    /* renamed from: d */
    static String m4925d(long j, SimpleDateFormat simpleDateFormat) {
        Calendar m4841o = C8123o.m4841o();
        Calendar m4839q = C8123o.m4839q();
        m4839q.setTimeInMillis(j);
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j)) : m4841o.get(1) == m4839q.get(1) ? m4924e(j) : m4919j(j);
    }

    /* renamed from: e */
    static String m4924e(long j) {
        return m4923f(j, Locale.getDefault());
    }

    /* renamed from: f */
    static String m4923f(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C8123o.m4853c(locale).format(new Date(j)) : C8123o.m4846j(locale).format(new Date(j));
    }

    /* renamed from: g */
    public static String m4922g(long j) {
        return m4921h(j, Locale.getDefault());
    }

    /* renamed from: h */
    static String m4921h(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C8123o.m4852d(locale).format(new Date(j)) : C8123o.m4848h(locale).format(new Date(j));
    }

    /* renamed from: i */
    public static String m4920i(Context context, long j) {
        return DateUtils.formatDateTime(context, j - TimeZone.getDefault().getOffset(j), 36);
    }

    /* renamed from: j */
    public static String m4919j(long j) {
        return m4918k(j, Locale.getDefault());
    }

    /* renamed from: k */
    static String m4918k(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C8123o.m4837s(locale).format(new Date(j)) : C8123o.m4847i(locale).format(new Date(j));
    }

    /* renamed from: l */
    public static String m4917l(long j) {
        return m4916m(j, Locale.getDefault());
    }

    /* renamed from: m */
    static String m4916m(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C8123o.m4836t(locale).format(new Date(j)) : C8123o.m4848h(locale).format(new Date(j));
    }
}
