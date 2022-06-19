package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.C1298R;
import com.tenor.android.core.constant.StringConstant;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* renamed from: com.freshchat.consumer.sdk.j.n */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/n.class */
public class C1719n {

    /* renamed from: hA */
    private static SimpleDateFormat f4515hA;

    /* renamed from: hB */
    private static SimpleDateFormat f4516hB;

    /* renamed from: kH */
    private static SimpleDateFormat f4517kH;

    /* renamed from: kI */
    private static SimpleDateFormat f4518kI;

    /* renamed from: kX */
    private static SimpleDateFormat f4519kX;

    /* renamed from: pR */
    private static SimpleDateFormat f4520pR;

    /* renamed from: pS */
    private static SimpleDateFormat f4521pS;

    /* renamed from: C */
    private static Date m39886C(long j) {
        return new Date(j);
    }

    /* renamed from: I */
    public static String m39885I(Context context, String str) {
        if (str != null) {
            try {
                return m39883a(context, new SimpleDateFormat("yyyy-MM-dd", C1612ah.m40290bb(context)).parse(str));
            } catch (ParseException e) {
                C1723q.m39823a(e);
                return "";
            }
        }
        return "";
    }

    /* renamed from: a */
    public static String m39884a(Context context, long j, boolean z) {
        long m39866fP = m39866fP();
        SimpleDateFormat m39877bq = m39877bq(context);
        if (m39873c(j, m39866fP)) {
            m39877bq = m39869d(j, m39866fP) ? m39878bp(context) : z ? m39875bs(context) : m39876br(context);
        }
        m39877bq.setTimeZone(TimeZone.getDefault());
        return m39877bq.format(new Date(j));
    }

    /* renamed from: a */
    private static String m39883a(Context context, Date date) {
        if (date != null) {
            try {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                if (m39882a(calendar, Calendar.getInstance())) {
                    return context.getString(C1298R.string.freshchat_calendar_today);
                }
                if (m39879b(calendar)) {
                    return context.getString(C1298R.string.freshchat_calendar_tomorrow);
                }
                SimpleDateFormat m39870cj = m39870cj(context);
                return m39870cj != null ? m39870cj.format(date) : "";
            } catch (Exception e) {
                C1723q.m39823a(e);
                return "";
            }
        }
        return "";
    }

    /* renamed from: a */
    public static boolean m39882a(Calendar calendar, Calendar calendar2) {
        boolean z = true;
        if (calendar.get(5) != calendar2.get(5) || calendar.get(2) != calendar2.get(2) || calendar.get(1) != calendar2.get(1)) {
            z = false;
        }
        return z;
    }

    /* renamed from: aQ */
    public static String m39881aQ(String str) {
        try {
            long m39866fP = m39866fP();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEEE", new Locale("EN"));
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(str));
            return simpleDateFormat.format(m39886C(m39866fP));
        } catch (Exception e) {
            C1723q.m39823a(e);
            return "";
        }
    }

    /* renamed from: aR */
    public static long m39880aR(String str) {
        long m39866fP = m39866fP();
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone(str));
        int i = calendar.get(5);
        calendar.set(calendar.get(1), calendar.get(2), i, 0, 0, 0);
        return (m39866fP - calendar.getTimeInMillis()) / 1000;
    }

    /* renamed from: b */
    public static boolean m39879b(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(6, 1);
        return m39882a(calendar, calendar2);
    }

    /* renamed from: bp */
    private static SimpleDateFormat m39878bp(Context context) {
        if (f4518kI == null) {
            try {
                f4518kI = new SimpleDateFormat(context.getString(C1298R.string.freshchat_chat_message_time_other_year), C1612ah.m40290bb(context));
            } catch (Exception e) {
                f4518kI = m39874bt(context);
            }
        }
        return f4518kI;
    }

    /* renamed from: bq */
    private static SimpleDateFormat m39877bq(Context context) {
        if (f4515hA == null) {
            try {
                f4515hA = new SimpleDateFormat(context.getString(C1298R.string.freshchat_chat_message_time_today), C1612ah.m40290bb(context));
            } catch (Exception e) {
                f4515hA = m39874bt(context);
            }
        }
        return f4515hA;
    }

    /* renamed from: br */
    private static SimpleDateFormat m39876br(Context context) {
        if (f4516hB == null) {
            try {
                f4516hB = new SimpleDateFormat(context.getString(C1298R.string.freshchat_chat_message_time_this_year_short), C1612ah.m40290bb(context));
            } catch (Exception e) {
                f4516hB = m39874bt(context);
            }
        }
        return f4516hB;
    }

    /* renamed from: bs */
    private static SimpleDateFormat m39875bs(Context context) {
        if (f4517kH == null) {
            try {
                f4517kH = new SimpleDateFormat(context.getString(C1298R.string.freshchat_chat_message_time_this_year_long), C1612ah.m40290bb(context));
            } catch (Exception e) {
                f4517kH = m39874bt(context);
            }
        }
        return f4517kH;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001c -> B:5:0x0018). Please submit an issue!!! */
    /* renamed from: bt */
    private static SimpleDateFormat m39874bt(Context context) {
        if (f4519kX == null) {
            try {
                f4519kX = new SimpleDateFormat("dd MMM yyyy',' hh:mm a", C1612ah.m40290bb(context));
            } catch (Exception e) {
            }
        }
        return f4519kX;
    }

    /* renamed from: c */
    public static String m39872c(Calendar calendar) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: c */
    public static boolean m39873c(long j, long j2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j2);
        boolean z = true;
        if (calendar.get(5) == calendar2.get(5)) {
            z = true;
            if (calendar.get(2) == calendar2.get(2)) {
                z = calendar.get(1) != calendar2.get(1);
            }
        }
        return z;
    }

    /* renamed from: ci */
    private static SimpleDateFormat m39871ci(Context context) {
        if (f4520pR == null) {
            try {
                f4520pR = new SimpleDateFormat(context.getString(C1298R.string.freshchat_chat_calendar_timeslot_format), C1612ah.m40290bb(context));
            } catch (Exception e) {
                try {
                    f4520pR = new SimpleDateFormat("hh:mm a", C1612ah.m40290bb(context));
                } catch (Exception e2) {
                    C1613ai.m40283e("FRESHCHAT", "Error parsing default calendar time slot template format in getTimeFormatForCalendarTime()");
                }
            }
        }
        return f4520pR;
    }

    /* renamed from: cj */
    private static SimpleDateFormat m39870cj(Context context) {
        if (f4521pS == null) {
            try {
                f4521pS = new SimpleDateFormat(context.getString(C1298R.string.freshchat_chat_calendar_date_format), C1612ah.m40290bb(context));
            } catch (Exception e) {
                try {
                    f4521pS = new SimpleDateFormat("EEEE',' dd MMM yyyy", C1612ah.m40290bb(context));
                } catch (Exception e2) {
                    C1613ai.m40283e("FRESHCHAT", "Error parsing default calendar template format in getDateFormatForCalendarDay()");
                }
            }
        }
        return f4521pS;
    }

    /* renamed from: d */
    public static boolean m39869d(long j, long j2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j2);
        boolean z = true;
        if (calendar.get(1) == calendar2.get(1)) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m39868e(long j, long j2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j2);
        boolean z = true;
        if (calendar.get(2) == calendar2.get(2)) {
            z = calendar.get(1) != calendar2.get(1);
        }
        return z;
    }

    /* renamed from: ef */
    public static void m39867ef() {
        f4519kX = null;
        f4515hA = null;
        f4516hB = null;
        f4517kH = null;
        f4518kI = null;
        f4521pS = null;
        f4520pR = null;
    }

    /* renamed from: fP */
    public static long m39866fP() {
        try {
            return new GregorianCalendar(TimeZone.getTimeZone("GMT")).getTimeInMillis();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: i */
    public static String m39865i(Context context, long j) {
        return m39884a(context, j, true);
    }

    /* renamed from: o */
    public static String m39864o(Context context, long j) {
        if (context == null || j <= 0) {
            return null;
        }
        SimpleDateFormat m39874bt = m39874bt(context);
        m39874bt.setTimeZone(TimeZone.getDefault());
        return m39874bt.format(new Date(j));
    }

    /* renamed from: p */
    public static String m39863p(Context context, long j) {
        SimpleDateFormat m39871ci = m39871ci(context);
        if (m39871ci != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j);
            return m39871ci.format(calendar.getTime());
        }
        return "";
    }

    /* renamed from: q */
    public static String m39862q(Context context, long j) {
        return j > 0 ? m39883a(context, m39886C(j)) : "";
    }

    /* renamed from: s */
    public static String m39861s(int i) {
        if (i > 0) {
            int i2 = i / 60;
            int abs = Math.abs((i2 * 60) - i);
            StringBuilder sb = new StringBuilder();
            if (i2 < 10) {
                sb.append(DtbConstants.NETWORK_TYPE_UNKNOWN);
            }
            sb.append(i2);
            sb.append(StringConstant.COLON);
            if (abs < 10) {
                sb.append(DtbConstants.NETWORK_TYPE_UNKNOWN);
            }
            sb.append(abs);
            return sb.toString();
        }
        return "00:00";
    }
}
