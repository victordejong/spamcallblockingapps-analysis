package com.flurry.sdk;
/* renamed from: com.flurry.sdk.mk */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/mk.class */
public class C0511mk {

    /* renamed from: a */
    private static final String f3593a = "mk";

    /* renamed from: b */
    private static boolean f3594b;

    /* renamed from: a */
    public static void m4451a() {
        synchronized (C0511mk.class) {
            try {
                if (f3594b) {
                    return;
                }
                C0480kw.m4581a(jr.class);
                try {
                    C0480kw.m4581a(hx.class);
                } catch (NoClassDefFoundError e) {
                    C0478ku.m4596a(3, f3593a, "Analytics module not available");
                }
                try {
                    C0480kw.m4581a(mi.class);
                } catch (NoClassDefFoundError e2) {
                    C0478ku.m4596a(3, f3593a, "Crash module not available");
                }
                try {
                    C0480kw.m4581a((Class<? extends AbstractC0481kx>) Class.forName("com.flurry.sdk.j"));
                } catch (ClassNotFoundException | NoClassDefFoundError e3) {
                    C0478ku.m4596a(3, f3593a, "Ads module not available");
                }
                f3594b = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
