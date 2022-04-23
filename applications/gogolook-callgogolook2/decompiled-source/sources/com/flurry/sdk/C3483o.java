package com.flurry.sdk;

import com.flurry.android.ICustomAdNetworkHandler;
/* renamed from: com.flurry.sdk.o */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/o.class */
public class C3483o {

    /* renamed from: d */
    public static C3483o f5994d;

    /* renamed from: a */
    public ICustomAdNetworkHandler f5995a = null;

    /* renamed from: f */
    public volatile String f5997f = null;

    /* renamed from: b */
    public volatile String f5996b = null;

    public C3483o() {
        new C3374k();
    }

    /* renamed from: a */
    public static C3483o m32361a() {
        C3483o oVar;
        synchronized (C3483o.class) {
            try {
                if (f5994d == null) {
                    f5994d = new C3483o();
                }
                oVar = f5994d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return oVar;
    }

    /* renamed from: c */
    public static boolean m32359c() {
        return ((Boolean) C3437ku.m32494a().m32493a("UseHttps")).booleanValue();
    }

    /* renamed from: b */
    public final String m32360b() {
        if (this.f5997f == null) {
            return m32359c() ? "https://ads.flurry.com/v17/getAds.do" : "http://ads.flurry.com/v17/getAds.do";
        }
        return this.f5997f + "/v17/getAds.do";
    }
}
