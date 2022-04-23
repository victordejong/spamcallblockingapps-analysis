package com.criteo.sync.sdk;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/DateUtils.class */
public class DateUtils {
    public static SimpleDateFormat getIso8601DateFormat() {
        return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    }

    public static Date parseDateString(String str) {
        return getIso8601DateFormat().parse(str);
    }

    public static String toString(Date date) {
        SimpleDateFormat iso8601DateFormat = getIso8601DateFormat();
        iso8601DateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return iso8601DateFormat.format(date);
    }
}
