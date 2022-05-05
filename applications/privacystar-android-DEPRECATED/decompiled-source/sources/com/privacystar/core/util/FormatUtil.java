package com.privacystar.core.util;

import android.content.Context;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import com.privacystar.core.C1566R;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/FormatUtil.class */
public class FormatUtil {

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/FormatUtil$Range.class */
    public static class Range {
        private int end;
        private int start;

        public Range(int i, int i2) {
            this.start = i;
            this.end = i2;
        }

        public String applyToString(String str) {
            return str.substring(this.start, this.end);
        }
    }

    public static String getDisplayNumber(String str) {
        String str2 = "";
        if (!Text.isBlank(str)) {
            str2 = Text.substituteNonBreakingSpaces(NumbersUtil.getDisplayNumber(str));
        }
        return str2;
    }

    public static String getShortDateString(Context context, Date date) {
        return DateUtils.isToday(date.getTime()) ? (String) DateFormat.format("hh:mm a", date) : DateUtils.isToday(date.getTime() + DateUtil.DAY_IN_MILLIS) ? context.getString(C1566R.string.general_text_yesterday) : (String) DateFormat.format("MM/dd", date);
    }

    public static String getTimeElapsedString(Context context, long j) {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        if (j > currentTimeMillis) {
            str = "";
            AnalyticsUtil.INSTANCE.trackInvalidCallDate(j, currentTimeMillis);
        } else if (j > currentTimeMillis - DateUtil.HOUR_IN_MILLIS) {
            int i = (int) ((currentTimeMillis - j) / DateUtil.MINUTE_IN_MILLIS);
            str = context.getResources().getQuantityString(C1566R.plurals.general_text_time_minutes_ago, i, Integer.valueOf(i));
        } else if (j > currentTimeMillis - DateUtil.DAY_IN_MILLIS) {
            int i2 = (int) ((currentTimeMillis - j) / DateUtil.HOUR_IN_MILLIS);
            str = context.getResources().getQuantityString(C1566R.plurals.general_text_time_hours_ago, i2, Integer.valueOf(i2));
        } else if (j > currentTimeMillis - 172800000) {
            str = context.getString(C1566R.string.general_text_yesterday);
        } else if (j > currentTimeMillis - 604800000) {
            int i3 = (int) ((currentTimeMillis - j) / DateUtil.DAY_IN_MILLIS);
            str = context.getResources().getQuantityString(C1566R.plurals.general_text_time_days_ago, i3, Integer.valueOf(i3));
        } else {
            Calendar instance = Calendar.getInstance();
            instance.set(instance.get(1), 1, 1, 0, 0, 0);
            str = (new Date(j).after(instance.getTime()) ? new SimpleDateFormat("MMMM d", Locale.getDefault()) : new SimpleDateFormat("MMMM d, yyyy", Locale.getDefault())).format(new Date(j));
        }
        return str;
    }
}
