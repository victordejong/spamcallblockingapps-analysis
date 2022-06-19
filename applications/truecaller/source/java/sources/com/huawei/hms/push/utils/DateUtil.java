package com.huawei.hms.push.utils;

import com.huawei.hms.support.log.HMSLog;
import com.tenor.android.core.constant.StringConstant;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/utils/DateUtil.class */
public class DateUtil {
    public static String parseMilliSecondToString(Long l) {
        if (l == null) {
            return null;
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(l);
        } catch (Exception e) {
            HMSLog.m37194e("DateUtil", "parseMilliSecondToString Exception.", e);
            return null;
        }
    }

    public static long parseUtcToMillisecond(String str) throws ParseException, StringIndexOutOfBoundsException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String substring = str.substring(0, str.indexOf(StringConstant.DOT));
        String substring2 = str.substring(str.indexOf(StringConstant.DOT));
        return simpleDateFormat.parse(substring + (substring2.substring(0, 4) + "Z")).getTime();
    }
}
