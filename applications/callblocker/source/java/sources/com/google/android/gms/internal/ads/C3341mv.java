package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.AbstractC2359d;
import com.google.android.gms.ads.mediation.AbstractC2366j;
/* renamed from: com.google.android.gms.internal.ads.mv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mv.class */
final class C3341mv implements AbstractC2359d<AbstractC2366j, Object> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3322mc f16964a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3286ku f16965b;

    /* renamed from: c */
    private final /* synthetic */ BinderC3339mt f16966c;

    public C3341mv(BinderC3339mt binderC3339mt, AbstractC3322mc abstractC3322mc, AbstractC3286ku abstractC3286ku) {
        this.f16966c = binderC3339mt;
        this.f16964a = abstractC3322mc;
        this.f16965b = abstractC3286ku;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2359d
    /* renamed from: a */
    public final void mo7437a(String str) {
        try {
            this.f16964a.mo7465a(str);
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}
