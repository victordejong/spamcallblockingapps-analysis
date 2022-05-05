package com.flurry.sdk;
/* renamed from: com.flurry.sdk.lm */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lm.class */
public class C3461lm {

    /* renamed from: c */
    public static C3461lm f5953c;

    /* renamed from: a */
    public AbstractC3472lt f5954a;

    /* renamed from: a */
    public static int m32418a(String str) {
        if ("single".equals(str)) {
            return 1;
        }
        if ("carousel".equals(str)) {
            return 2;
        }
        if ("rotator".equals(str) || "rotater".equals(str)) {
            return 3;
        }
        return "fullpage".equals(str) ? 4 : 0;
    }

    /* renamed from: a */
    public static C3461lm m32419a() {
        C3461lm lmVar;
        synchronized (C3461lm.class) {
            try {
                if (f5953c == null) {
                    f5953c = new C3461lm();
                }
                lmVar = f5953c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lmVar;
    }

    /* renamed from: b */
    public static int m32417b() {
        return 0;
    }
}
