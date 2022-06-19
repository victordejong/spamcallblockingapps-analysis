package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.C2213a;
/* renamed from: com.google.android.gms.internal.ads.lw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lw.class */
final class RunnableC3315lw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C2213a.EnumC2214a f16951a;

    /* renamed from: b */
    private final /* synthetic */ C3311ls f16952b;

    public RunnableC3315lw(C3311ls c3311ls, C2213a.EnumC2214a enumC2214a) {
        this.f16952b = c3311ls;
        this.f16951a = enumC2214a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3286ku abstractC3286ku;
        try {
            abstractC3286ku = this.f16952b.f16938a;
            abstractC3286ku.mo7590a(C3316lx.m7497a(this.f16951a));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }
}
