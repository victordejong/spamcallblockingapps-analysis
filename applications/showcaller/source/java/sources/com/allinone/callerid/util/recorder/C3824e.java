package com.allinone.callerid.util.recorder;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* renamed from: com.allinone.callerid.util.recorder.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/e.class */
public class C3824e {

    /* renamed from: a */
    private static final ThreadLocal<SimpleDateFormat> f12105a = new C3825a();

    /* renamed from: b */
    private static ThreadLocal<SimpleDateFormat> f12106b = new ThreadLocal<>();

    /* renamed from: com.allinone.callerid.util.recorder.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/e$a.class */
    class C3825a extends ThreadLocal<SimpleDateFormat> {
        C3825a() {
        }

        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        }
    }

    /* renamed from: a */
    public static boolean m23998a(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(System.currentTimeMillis()));
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(new Date(j));
        return calendar2.get(1) == calendar.get(1) && calendar2.get(6) - calendar.get(6) == 0;
    }
}
