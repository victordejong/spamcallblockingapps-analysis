package com.flurry.sdk;
/* renamed from: com.flurry.sdk.lj */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lj.class */
public class C3458lj {

    /* renamed from: a */
    public static final String f5951a = "lj";

    /* renamed from: b */
    public static boolean f5952b;

    /* renamed from: a */
    public static void m32420a() {
        synchronized (C3458lj.class) {
            try {
                if (!f5952b) {
                    C3359jt.m32600a(C3294ij.class);
                    try {
                        C3359jt.m32600a(C3180gq.class);
                    } catch (NoClassDefFoundError e) {
                        C3356jq.m32615a(3, f5951a, "Analytics module not available");
                    }
                    try {
                        C3359jt.m32600a(C3455lh.class);
                    } catch (NoClassDefFoundError e2) {
                        C3356jq.m32615a(3, f5951a, "Crash module not available");
                    }
                    try {
                        C3359jt.m32600a((Class<? extends AbstractC3360ju>) Class.forName("com.flurry.sdk.p"));
                    } catch (ClassNotFoundException | NoClassDefFoundError e3) {
                        C3356jq.m32615a(3, f5951a, "Ads module not available");
                    }
                    try {
                        C3359jt.m32600a((Class<? extends AbstractC3360ju>) Class.forName("com.flurry.android.ymadlite.ad.impl.YahooAdsModule"));
                    } catch (ClassNotFoundException | NoClassDefFoundError e4) {
                        C3356jq.m32615a(3, f5951a, "Yahoo Ads module not available");
                    }
                    f5952b = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
