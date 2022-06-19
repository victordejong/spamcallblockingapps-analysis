package com.huawei.hms.hatool;

import android.content.Context;
import java.util.LinkedHashMap;
/* renamed from: com.huawei.hms.hatool.l1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/l1.class */
public abstract class AbstractC2373l1 {

    /* renamed from: a */
    public static C2369j1 f7576a;

    /* renamed from: a */
    public static C2369j1 m37576a() {
        C2369j1 c2369j1;
        synchronized (AbstractC2373l1.class) {
            try {
                if (f7576a == null) {
                    f7576a = C2381o1.m37549c().m37550b();
                }
                c2369j1 = f7576a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2369j1;
    }

    /* renamed from: a */
    public static void m37575a(int i, String str, LinkedHashMap<String, String> linkedHashMap) {
        if (m37576a() == null || !C2394w0.m37493b().m37494a()) {
            return;
        }
        if (i == 1 || i == 0) {
            f7576a.m37651a(i, str, linkedHashMap);
            return;
        }
        C2398y.m37471d("hmsSdk", "Data type no longer collects range.type: " + i);
    }

    @Deprecated
    /* renamed from: a */
    public static void m37574a(Context context, String str, String str2) {
        if (m37576a() != null) {
            f7576a.m37650a(context, str, str2);
        }
    }

    /* renamed from: b */
    public static boolean m37573b() {
        return C2381o1.m37549c().m37552a();
    }

    /* renamed from: c */
    public static void m37572c() {
        if (m37576a() == null || !C2394w0.m37493b().m37494a()) {
            return;
        }
        f7576a.m37652a(-1);
    }
}
