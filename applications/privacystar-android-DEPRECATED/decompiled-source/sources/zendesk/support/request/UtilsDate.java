package zendesk.support.request;

import android.text.format.DateUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/UtilsDate.class */
class UtilsDate {
    private UtilsDate() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Date getBeginOfDay(Date date) {
        Calendar calendar = getCalendar(date);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTime();
    }

    private static Calendar getCalendar(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getDefault(), Locale.getDefault());
        gregorianCalendar.setTime(date);
        return gregorianCalendar;
    }

    private static Date getYesterday() {
        Calendar calendar = getCalendar(new Date());
        calendar.add(5, -1);
        return calendar.getTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSameDay(Date date, Date date2) {
        Calendar calendar = getCalendar(date);
        Calendar calendar2 = getCalendar(date2);
        boolean z = true;
        boolean z2 = calendar.get(1) == calendar2.get(1);
        boolean z3 = calendar.get(2) == calendar2.get(2);
        boolean z4 = calendar.get(5) == calendar2.get(5);
        if (!z2 || !z3 || !z4) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isToday(Date date) {
        return DateUtils.isToday(date.getTime());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isYesterday(Date date) {
        return isSameDay(date, getYesterday());
    }
}
