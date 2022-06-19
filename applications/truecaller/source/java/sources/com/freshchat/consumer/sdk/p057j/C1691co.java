package com.freshchat.consumer.sdk.p057j;

import java.util.Calendar;
import java.util.TimeZone;
/* renamed from: com.freshchat.consumer.sdk.j.co */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/co.class */
public class C1691co {
    /* renamed from: a */
    public static Calendar m39994a(TimeZone timeZone, long j) {
        Calendar calendar = Calendar.getInstance();
        if (timeZone != null) {
            calendar.setTimeZone(timeZone);
        }
        calendar.setTimeInMillis(j);
        return calendar;
    }

    /* renamed from: a */
    public static void m39995a(Calendar calendar, int i) {
        if (calendar == null) {
            return;
        }
        calendar.setTimeInMillis(calendar.getTimeInMillis() + (i * 1000));
    }
}
