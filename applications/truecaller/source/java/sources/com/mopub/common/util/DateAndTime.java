package com.mopub.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/DateAndTime.class */
public class DateAndTime {

    /* renamed from: a */
    public static DateAndTime f8700a = new DateAndTime();

    public static String getTimeZoneOffsetString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("Z", Locale.US);
        simpleDateFormat.setTimeZone(localTimeZone());
        return simpleDateFormat.format(now());
    }

    public static TimeZone localTimeZone() {
        return f8700a.internalLocalTimeZone();
    }

    public static Date now() {
        return f8700a.internalNow();
    }

    @Deprecated
    public static void setInstance(DateAndTime dateAndTime) {
        f8700a = dateAndTime;
    }

    public TimeZone internalLocalTimeZone() {
        return TimeZone.getDefault();
    }

    public Date internalNow() {
        return new Date();
    }
}
