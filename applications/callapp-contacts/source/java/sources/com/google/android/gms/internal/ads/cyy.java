package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyy.class */
public final class cyy implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        csa csaVar2;
        try {
            csaVar = czy.f46829s;
            csaVar.m17278a();
            csaVar2 = czy.f46829s;
            csaVar2.m17274b();
        } catch (Exception e) {
            cuyVar = czy.f46831u;
            cuyVar.m17192a(AdError.INTERNAL_ERROR_CODE, -1L, e);
        }
    }
}
