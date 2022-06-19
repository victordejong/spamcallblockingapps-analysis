package com.facebook.appevents.p032n0;

import com.facebook.appevents.p030l0.C1026a;
import com.facebook.internal.C1121b0;
import com.facebook.internal.p037u0.p040m.C1220a;
import p193e.p1538j.C23228f0;
/* renamed from: com.facebook.appevents.n0.d */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/d.class */
public final /* synthetic */ class RunnableC1051d implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC1051d f2894a = new RunnableC1051d();

    @Override // java.lang.Runnable
    public final void run() {
        C1056h c1056h = C1056h.f2914a;
        if (C1220a.m41623b(C1056h.class)) {
            return;
        }
        try {
            if (C1220a.m41623b(C1026a.class)) {
                return;
            }
            C1026a.f2834b = true;
            C1121b0 c1121b0 = C1121b0.f3084a;
            C23228f0 c23228f0 = C23228f0.f64291a;
            C1026a.f2835c = C1121b0.m41748b("FBSDKFeatureIntegritySample", C23228f0.m7353b(), false);
        } catch (Throwable th) {
            C1220a.m41624a(th, C1056h.class);
        }
    }
}
