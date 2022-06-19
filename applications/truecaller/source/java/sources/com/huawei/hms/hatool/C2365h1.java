package com.huawei.hms.hatool;

import android.content.Context;
/* renamed from: com.huawei.hms.hatool.h1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/h1.class */
public final class C2365h1 {

    /* renamed from: b */
    public static C2365h1 f7522b;

    /* renamed from: c */
    public static final Object f7523c = new Object();

    /* renamed from: a */
    public Context f7524a;

    /* renamed from: a */
    public static C2365h1 m37680a() {
        if (f7522b == null) {
            m37677b();
        }
        return f7522b;
    }

    /* renamed from: b */
    public static void m37677b() {
        synchronized (C2365h1.class) {
            try {
                if (f7522b == null) {
                    f7522b = new C2365h1();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m37679a(Context context) {
        synchronized (f7523c) {
            if (this.f7524a != null) {
                C2398y.m37469f("hmsSdk", "DataManager already initialized.");
                return;
            }
            this.f7524a = context;
            C2366i.m37672c().m37673b().m37610a(this.f7524a);
            C2366i.m37672c().m37673b().m37591j(context.getPackageName());
            C2401z0.m37463a().m37462a(context);
        }
    }

    /* renamed from: a */
    public void m37678a(String str) {
        C2398y.m37473c("hmsSdk", "HiAnalyticsDataManager.setAppid(String appid) is execute.");
        Context context = this.f7524a;
        if (context == null) {
            C2398y.m37470e("hmsSdk", "sdk is not init");
            return;
        }
        C2366i.m37672c().m37673b().m37593i(C2386s0.m37533a("appID", str, "[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}", context.getPackageName()));
    }
}
