package com.bytedance.sdk.openadsdk.utils;

import android.content.res.Configuration;
import com.bytedance.sdk.openadsdk.core.C4600n;
/* renamed from: com.bytedance.sdk.openadsdk.utils.aa */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/aa.class */
public class C5433aa {

    /* renamed from: a */
    private static boolean f18964a = false;

    /* renamed from: b */
    private static String f18965b;

    /* renamed from: c */
    private static String f18966c;

    /* renamed from: d */
    private static String f18967d;

    /* renamed from: e */
    private static boolean f18968e = true;

    /* renamed from: a */
    public static String m32329a() {
        if (!f18964a) {
            m32326d();
        }
        return f18965b;
    }

    /* renamed from: b */
    public static String m32328b() {
        try {
            if (!f18964a) {
                m32326d();
            }
            Configuration configuration = C4600n.m34815a().getResources().getConfiguration();
            String valueOf = configuration.mcc != 0 ? String.valueOf(configuration.mcc) : f18966c;
            C5478q.m32106e("MCC", "config=" + configuration.mcc + ",sMCC=" + f18966c);
            if (f18968e) {
                return valueOf;
            }
            StringBuilder sb = new StringBuilder("getMCC");
            sb.append(f18968e ? "有SIM卡" : "无SIM卡,MCC返回null");
            C5478q.m32106e("MCC", sb.toString());
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static String m32327c() {
        if (!f18964a) {
            m32326d();
        }
        return f18967d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007a, code lost:
        if (r6.length() < 5) goto L61;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m32326d() {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.C5433aa.m32326d():void");
    }
}
