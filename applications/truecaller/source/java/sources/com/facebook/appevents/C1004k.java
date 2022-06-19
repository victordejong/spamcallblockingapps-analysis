package com.facebook.appevents;

import com.facebook.appevents.p025h0.C0964c;
import com.facebook.appevents.p025h0.RunnableC0962a;
import com.facebook.internal.C1115a0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import p193e.p1538j.C23228f0;
/* renamed from: com.facebook.appevents.k */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k.class */
public final /* synthetic */ class C1004k implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C1004k f2767a = new C1004k();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        if (z) {
            C0964c c0964c = C0964c.f2655a;
            try {
                if (C1220a.m41623b(C0964c.class)) {
                    return;
                }
                try {
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    C23228f0.m7350e().execute(RunnableC0962a.f2652a);
                } catch (Exception e) {
                    C1168q0.m41696F(C0964c.f2656b, e);
                }
            } catch (Throwable th) {
                C1220a.m41624a(th, C0964c.class);
            }
        }
    }
}
