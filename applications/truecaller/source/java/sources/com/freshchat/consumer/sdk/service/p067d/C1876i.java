package com.freshchat.consumer.sdk.service.p067d;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.BHWeekDays;
import com.freshchat.consumer.sdk.beans.BHWorkingDays;
import com.freshchat.consumer.sdk.beans.BusinessHours;
import com.freshchat.consumer.sdk.p049c.C1520p;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1701cx;
import com.freshchat.consumer.sdk.p057j.C1719n;
/* renamed from: com.freshchat.consumer.sdk.service.d.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/i.class */
public class C1876i {

    /* renamed from: jR */
    private static String f4721jR = ";";

    /* renamed from: A */
    private static boolean m39372A(String str, String str2) {
        long m39880aR = C1719n.m39880aR(str2);
        String[] split = str.split(f4721jR);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i2 < split.length) {
                long parseLong = Long.parseLong(split[i]);
                long parseLong2 = Long.parseLong(split[i2]);
                if (parseLong <= m39880aR && m39880aR <= parseLong2) {
                    return true;
                }
                i += 2;
            } else {
                return false;
            }
        }
    }

    /* renamed from: a */
    private static boolean m39371a(BHWeekDays bHWeekDays, String str, String str2) {
        String str3;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -2049557543:
                if (str.equals("Saturday")) {
                    z = false;
                    break;
                }
                break;
            case -1984635600:
                if (str.equals("Monday")) {
                    z = true;
                    break;
                }
                break;
            case -1807319568:
                if (str.equals("Sunday")) {
                    z = true;
                    break;
                }
                break;
            case -897468618:
                if (str.equals("Wednesday")) {
                    z = true;
                    break;
                }
                break;
            case 687309357:
                if (str.equals("Tuesday")) {
                    z = true;
                    break;
                }
                break;
            case 1636699642:
                if (str.equals("Thursday")) {
                    z = true;
                    break;
                }
                break;
            case 2112549247:
                if (str.equals("Friday")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                str3 = bHWeekDays.getDayFiveTimings();
                break;
            case true:
                str3 = bHWeekDays.getDayZeroTimings();
                break;
            case true:
                str3 = bHWeekDays.getDaySixTimings();
                break;
            case true:
                str3 = bHWeekDays.getDayTwoTimings();
                break;
            case true:
                str3 = bHWeekDays.getDayOneTimings();
                break;
            case true:
                str3 = bHWeekDays.getDayThreeTimings();
                break;
            case true:
                str3 = bHWeekDays.getDayFourTimings();
                break;
            default:
                str3 = null;
                break;
        }
        if (C1626as.isEmpty(str3)) {
            return false;
        }
        return m39372A(str3, str2);
    }

    /* renamed from: a */
    private static boolean m39370a(BHWorkingDays bHWorkingDays, String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -2049557543:
                if (str.equals("Saturday")) {
                    z = false;
                    break;
                }
                break;
            case -1984635600:
                if (str.equals("Monday")) {
                    z = true;
                    break;
                }
                break;
            case -1807319568:
                if (str.equals("Sunday")) {
                    z = true;
                    break;
                }
                break;
            case -897468618:
                if (str.equals("Wednesday")) {
                    z = true;
                    break;
                }
                break;
            case 687309357:
                if (str.equals("Tuesday")) {
                    z = true;
                    break;
                }
                break;
            case 1636699642:
                if (str.equals("Thursday")) {
                    z = true;
                    break;
                }
                break;
            case 2112549247:
                if (str.equals("Friday")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return bHWorkingDays.isWorkingOnDayFive();
            case true:
                return bHWorkingDays.isWorkingOnDayZero();
            case true:
                return bHWorkingDays.isWorkingOnDaySix();
            case true:
                return bHWorkingDays.isWorkingOnDayTwo();
            case true:
                return bHWorkingDays.isWorkingOnDayOne();
            case true:
                return bHWorkingDays.isWorkingOnDayThree();
            case true:
                return bHWorkingDays.isWorkingOnDayFour();
            default:
                return false;
        }
    }

    /* renamed from: aP */
    private static boolean m39369aP(String str) {
        if (C1626as.isEmpty(str)) {
            return false;
        }
        return C1701cx.m39988gA().contains(str);
    }

    /* renamed from: r */
    public static boolean m39368r(Context context, long j) {
        C1520p c1520p = new C1520p(context);
        BusinessHours m40666D = j != 0 ? c1520p.m40666D(j) : null;
        BusinessHours businessHours = m40666D;
        if (m40666D == null) {
            businessHours = c1520p.m40662fm();
        }
        if (businessHours == null) {
            return false;
        }
        String m39881aQ = C1719n.m39881aQ(businessHours.getTimezone());
        if (!m39369aP(m39881aQ)) {
            C1613ai.m40281i("FRESHCHAT", "BusinessHoursHelper: Invalid day fo the week. isOffline false");
            return false;
        } else if (m39370a(businessHours.getWorkingDays(), m39881aQ)) {
            return !m39371a(businessHours.getWeekDaysBH(), m39881aQ, businessHours.getTimezone());
        } else {
            return true;
        }
    }
}
