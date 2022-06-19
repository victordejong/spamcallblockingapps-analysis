package com.facebook.appevents;

import com.facebook.appevents.p029k0.C1022m;
import com.facebook.internal.C1115a0;
import com.facebook.internal.p037u0.p040m.C1220a;
/* renamed from: com.facebook.appevents.l */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/l.class */
public final /* synthetic */ class C1025l implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C1025l f2832a = new C1025l();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        if (z) {
            C1022m c1022m = C1022m.f2821a;
            if (C1220a.m41623b(C1022m.class)) {
                return;
            }
            try {
                C1022m.f2822b.set(true);
                C1022m.m41880a();
            } catch (Throwable th) {
                C1220a.m41624a(th, C1022m.class);
            }
        }
    }
}
