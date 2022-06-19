package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.AbstractC2359d;
/* renamed from: com.google.android.gms.internal.ads.mw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mw.class */
final class C3342mw implements AbstractC2359d<Object, Object> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3321mb f16967a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3286ku f16968b;

    public C3342mw(BinderC3339mt binderC3339mt, AbstractC3321mb abstractC3321mb, AbstractC3286ku abstractC3286ku) {
        this.f16967a = abstractC3321mb;
        this.f16968b = abstractC3286ku;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2359d
    /* renamed from: a */
    public final void mo7437a(String str) {
        try {
            this.f16967a.mo7467a(str);
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}
