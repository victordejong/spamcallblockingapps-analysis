package com.mopub.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/DateAndTime.class */
public class DateAndTime {

    /* renamed from: a  reason: collision with root package name */
    protected static DateAndTime f33996a = new DateAndTime();

    public static String getTimeZoneOffsetString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("Z", Locale.US);
        simpleDateFormat.setTimeZone(localTimeZone());
        return simpleDateFormat.format(now());
    }

    public static TimeZone localTimeZone() {
        return f33996a.internalLocalTimeZone();
    }

    public static Date now() {
        return f33996a.internalNow();
    }

    @Deprecated
    public static void setInstance(DateAndTime dateAndTime) {
        f33996a = dateAndTime;
    }

    public TimeZone internalLocalTimeZone() {
        return TimeZone.getDefault();
    }

    public Date internalNow() {
        return new Date();
    }
}
