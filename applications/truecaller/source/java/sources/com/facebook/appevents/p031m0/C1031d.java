package com.facebook.appevents.p031m0;

import com.facebook.appevents.p026i0.C0980i;
import com.facebook.internal.C1115a0;
import com.facebook.internal.p037u0.p040m.C1220a;
/* renamed from: com.facebook.appevents.m0.d */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/d.class */
public final /* synthetic */ class C1031d implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C1031d f2843a = new C1031d();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        C1033f c1033f = C1033f.f2846a;
        if (z) {
            C0980i c0980i = C0980i.f2694a;
            if (C1220a.m41623b(C0980i.class)) {
                return;
            }
            try {
                C0980i.f2699f.set(true);
                return;
            } catch (Throwable th) {
                C1220a.m41624a(th, C0980i.class);
                return;
            }
        }
        C0980i c0980i2 = C0980i.f2694a;
        if (C1220a.m41623b(C0980i.class)) {
            return;
        }
        try {
            C0980i.f2699f.set(false);
        } catch (Throwable th2) {
            C1220a.m41624a(th2, C0980i.class);
        }
    }
}
