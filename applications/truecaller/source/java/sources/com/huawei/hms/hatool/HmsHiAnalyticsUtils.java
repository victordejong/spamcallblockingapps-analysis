package com.huawei.hms.hatool;

import android.content.Context;
import java.util.LinkedHashMap;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/HmsHiAnalyticsUtils.class */
public class HmsHiAnalyticsUtils {
    public static void enableLog() {
        C2377n1.m37558a();
    }

    public static boolean getInitFlag() {
        return AbstractC2373l1.m37573b();
    }

    public static void init(Context context, boolean z, boolean z2, boolean z3, String str, String str2) {
        new C2375m1(context).m37561a(z).m37559c(z2).m37560b(z3).m37563a(0, str).m37563a(1, str).m37562a(str2).m37564a();
    }

    public static void onEvent(int i, String str, LinkedHashMap<String, String> linkedHashMap) {
        AbstractC2373l1.m37575a(i, str, linkedHashMap);
    }

    public static void onEvent(Context context, String str, String str2) {
        AbstractC2373l1.m37574a(context, str, str2);
    }

    public static void onReport() {
        AbstractC2373l1.m37572c();
    }
}
