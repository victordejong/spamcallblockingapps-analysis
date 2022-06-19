package com.freshchat.consumer.sdk.p057j;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.cy */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cy.class */
public class C1702cy {
    /* renamed from: a */
    public static String m39987a(long j, int i) {
        return "bot_" + j + AnalyticsConstants.DELIMITER_MAIN + i;
    }

    /* renamed from: aS */
    public static String m39986aS(String str) {
        return C22128a.m8543z2("toDisplay_", str);
    }

    /* renamed from: aT */
    public static boolean m39985aT(String str) {
        if (C1626as.isEmpty(str)) {
            return false;
        }
        return str.startsWith("toDisplay_");
    }

    /* renamed from: aU */
    public static boolean m39984aU(String str) {
        if (C1626as.isEmpty(str)) {
            return false;
        }
        return str.startsWith("userReplyToBot_");
    }

    /* renamed from: aV */
    public static long m39983aV(String str) {
        if (C1626as.isEmpty(str) || !m39984aU(str)) {
            return 0L;
        }
        try {
            return Long.parseLong(str.split(AnalyticsConstants.DELIMITER_MAIN)[1]);
        } catch (Exception e) {
            C1723q.m39823a(e);
            return 0L;
        }
    }

    /* renamed from: aW */
    public static int m39982aW(String str) {
        if (C1626as.isEmpty(str) || !m39984aU(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str.split(AnalyticsConstants.DELIMITER_MAIN)[2]);
        } catch (Exception e) {
            C1723q.m39823a(e);
            return 0;
        }
    }

    /* renamed from: b */
    public static String m39981b(long j, int i) {
        return "userReplyToBot_" + j + AnalyticsConstants.DELIMITER_MAIN + i;
    }
}
