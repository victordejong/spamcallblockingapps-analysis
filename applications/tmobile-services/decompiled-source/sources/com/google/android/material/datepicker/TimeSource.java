package com.google.android.material.datepicker;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/TimeSource.class */
class TimeSource {

    /* renamed from: c */
    private static final TimeSource f10625c = new TimeSource(null, null);
    @Nullable

    /* renamed from: a */
    private final Long f10626a;
    @Nullable

    /* renamed from: b */
    private final TimeZone f10627b;

    private TimeSource(@Nullable Long l, @Nullable TimeZone timeZone) {
        this.f10626a = l;
        this.f10627b = timeZone;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static TimeSource m9854c() {
        return f10625c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public Calendar m9856a() {
        return m9855b(this.f10627b);
    }

    /* renamed from: b */
    Calendar m9855b(@Nullable TimeZone timeZone) {
        Calendar instance = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.f10626a;
        if (l != null) {
            instance.setTimeInMillis(l.longValue());
        }
        return instance;
    }
}
