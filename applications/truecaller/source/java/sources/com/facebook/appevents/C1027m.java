package com.facebook.appevents;

import com.facebook.appevents.p028j0.C1002a;
import com.facebook.internal.C1115a0;
import com.facebook.internal.p037u0.p040m.C1220a;
/* renamed from: com.facebook.appevents.m */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m.class */
public final /* synthetic */ class C1027m implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C1027m f2836a = new C1027m();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        if (z) {
            C1002a c1002a = C1002a.f2761a;
            if (C1220a.m41623b(C1002a.class)) {
                return;
            }
            try {
                C1002a.f2762b = true;
                c1002a.m41915a();
            } catch (Throwable th) {
                C1220a.m41624a(th, C1002a.class);
            }
        }
    }
}
