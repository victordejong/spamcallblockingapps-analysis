package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyy.class */
public final class cyy implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        csa csaVar2;
        try {
            csaVar = czy.s;
            csaVar.a();
            csaVar2 = czy.s;
            csaVar2.b();
        } catch (Exception e) {
            cuyVar = czy.u;
            cuyVar.a(AdError.INTERNAL_ERROR_CODE, -1L, e);
        }
    }
}
