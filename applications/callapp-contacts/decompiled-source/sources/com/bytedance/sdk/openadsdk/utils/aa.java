package com.bytedance.sdk.openadsdk.utils;

import android.content.res.Configuration;
import com.bytedance.sdk.openadsdk.core.n;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/aa.class */
public class aa {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f10265a = false;

    /* renamed from: b  reason: collision with root package name */
    private static String f10266b;

    /* renamed from: c  reason: collision with root package name */
    private static String f10267c;

    /* renamed from: d  reason: collision with root package name */
    private static String f10268d;
    private static boolean e = true;

    public static String a() {
        if (!f10265a) {
            d();
        }
        return f10266b;
    }

    public static String b() {
        try {
            if (!f10265a) {
                d();
            }
            Configuration configuration = n.a().getResources().getConfiguration();
            String valueOf = configuration.mcc != 0 ? String.valueOf(configuration.mcc) : f10267c;
            q.e("MCC", "config=" + configuration.mcc + ",sMCC=" + f10267c);
            if (e) {
                return valueOf;
            }
            StringBuilder sb = new StringBuilder("getMCC");
            sb.append(e ? "有SIM卡" : "无SIM卡,MCC返回null");
            q.e("MCC", sb.toString());
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String c() {
        if (!f10265a) {
            d();
        }
        return f10268d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007a, code lost:
        if (r6.length() < 5) goto L_0x007d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void d() {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.aa.d():void");
    }
}
