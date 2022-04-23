package com.callerid.block.util;

import com.callerid.block.main.EZCallApplication;
/* renamed from: com.callerid.block.util.s0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/s0.class */
public class C1214s0 {

    /* renamed from: a */
    public static String f5064a = "hangup_incoming_answer";

    /* renamed from: b */
    public static String f5065b = "hangup_outgoing_notanswer";

    /* renamed from: c */
    public static String f5066c = "hangup_incoming_notanswer";

    /* renamed from: d */
    public static String f5067d = "recommend_incoming_answer";

    /* renamed from: e */
    public static String f5068e = "recommend_outgoing_notanswer";

    /* renamed from: f */
    public static String f5069f = "recommend_incoming_notanswer";

    /* renamed from: g */
    public static String f5070g = "hangup_incoming_notanswer_click_close";

    /* renamed from: h */
    public static String f5071h = "download_by_english";

    /* renamed from: i */
    public static String f5072i = "downloadb_by_hi";

    /* renamed from: j */
    public static String f5073j = "downloadb_by_ar";

    /* renamed from: a */
    public static void m9617a() {
        C1186k c;
        String str;
        String str2 = EZCallApplication.m10163c().f4578c;
        str2.hashCode();
        char c2 = 65535;
        switch (str2.hashCode()) {
            case 3121:
                if (str2.equals("ar")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3241:
                if (str2.equals("en")) {
                    c2 = 1;
                    break;
                }
                break;
            case 3329:
                if (str2.equals("hi")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                C1227w.m9527a("testdownloadlang", "ar");
                c = C1186k.m9816c();
                str = f5073j;
                break;
            case 1:
                C1227w.m9527a("testdownloadlang", "english");
                c = C1186k.m9816c();
                str = f5071h;
                break;
            case 2:
                C1227w.m9527a("testdownloadlang", "hi");
                c = C1186k.m9816c();
                str = f5072i;
                break;
            default:
                return;
        }
        c.m9812g(str);
    }
}
