package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.model.CallerSetting;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/AnalyticsHelper.class */
public class AnalyticsHelper {

    /* renamed from: com.tmobile.services.nameid.utility.AnalyticsHelper$FO */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/AnalyticsHelper$FO.class */
    public class C1892FO {
    }

    /* renamed from: a */
    public static String m5905a(String str, String str2) {
        return "Changed " + str + " to " + str2;
    }

    /* renamed from: b */
    public static String m5904b(String str) {
        return "Delete " + str;
    }

    /* renamed from: c */
    public static String m5903c(String str) {
        return "New " + str;
    }

    /* renamed from: d */
    public static String m5902d(int i) {
        return i == CallerSetting.Action.BLOCKED.getValue() ? "PNB-1" : i == CallerSetting.Action.VOICEMAIL.getValue() ? "PNB-2" : i == CallerSetting.Action.APPROVED.getValue() ? "PNB-3" : "PNB-0";
    }
}
