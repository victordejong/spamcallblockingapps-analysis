package com.google.android.material.datepicker;

import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/d.class */
final class d {
    private d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(long j, SimpleDateFormat simpleDateFormat) {
        Calendar a2 = o.a();
        Calendar b2 = o.b();
        b2.setTimeInMillis(j);
        return a2.get(1) == b2.get(1) ? b(j, Locale.getDefault()) : a(j, Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? o.a(locale).format(new Date(j)) : o.e(locale).format(new Date(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? o.b(locale).format(new Date(j)) : o.f(locale).format(new Date(j));
    }
}
