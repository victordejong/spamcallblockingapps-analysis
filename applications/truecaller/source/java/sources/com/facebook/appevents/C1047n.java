package com.facebook.appevents;

import com.facebook.appevents.p034p0.C1073a;
import com.facebook.internal.C1115a0;
import com.facebook.internal.p037u0.p040m.C1220a;
/* renamed from: com.facebook.appevents.n */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n.class */
public final /* synthetic */ class C1047n implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C1047n f2889a = new C1047n();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        if (z) {
            C1073a c1073a = C1073a.f2958a;
            if (C1220a.m41623b(C1073a.class)) {
                return;
            }
            try {
                C1073a.f2959b = true;
                c1073a.m41817b();
            } catch (Throwable th) {
                C1220a.m41624a(th, C1073a.class);
            }
        }
    }
}
